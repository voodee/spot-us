require File.dirname(__FILE__) + "/../../spec_helper"

describe 'sessions/new' do

  before do
    assigns[:title] = mock('title', :null_object => true)
    assigns[:user]  = Factory(:user)
  end

  it "should have a link to reset the user's password" do
    do_render
    template.should have_tag('a[href=?]', new_password_reset_path)
  end

  it 'should render' do
    do_render
  end

  def do_render
    render 'sessions/new'
  end
end
