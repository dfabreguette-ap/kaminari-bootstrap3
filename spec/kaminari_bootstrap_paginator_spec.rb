require 'spec_helper'
describe Kaminari::Bootstrap3, type: :helper do
  # stub out just enough view context to make the whole thing work
  let(:view_context) do
    ActionController::Base.prepend_view_path(File.expand_path('../../app/views', __FILE__))
    c = ActionController::Base.new
    c.request = double(parameters: {})
    vc = c.view_context
    allow(vc).to receive(:url_for).and_return('#')
    allow(vc).to receive(:remote).and_return(false)
    vc
  end

  it 'has a version number' do
    expect(Kaminari::Bootstrap3::VERSION).not_to be nil
  end

  it 'provides a bootstrap theme for kaminari' do
    output = Kaminari::Helpers::Paginator.new(view_context, theme: 'bootstrap', current_page: 2, total_pages: 5, params: {})
    expect(output).to have_selector '.pagination'
    expect(output).to have_selector 'li > a[rel=prev]'
    expect(output).to have_selector 'li > a[rel=next]'
    expect(output).to have_selector 'li > a[rel=prev]', text: '1'
    expect(output).to have_selector 'li > a[rel=next]', text: '3'
  end
end
