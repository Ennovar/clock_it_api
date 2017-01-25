require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '.create' do
    context 'valid attributes' do
      before :each do
        @task = FactoryGirl.create(:task)
      end
      it "should be created" do
        expect(@task.errors).to be_empty
        expect(@task.project).not_to be_nil
      end
    end
    context 'invalid attributes' do
    end
  end
end
