require 'rails_helper'

describe Message do
  describe '#create' do
    context 'can save'
    it "メッセージがあれば保存できる場合" do
      message = build(:message, content: nil)
      message.valid?
      expect(message.errors[:content]).to include("can't be blank")
    end
    it "画像があれば保存できる場合" do
      message = build(:message, content: nil)
      message.valid?
      expect(message.errors[:content]).to include("can't be blank")
    end
    it "メッセージと画像があれば保存できる場合" do
      message = build(:message, content: nil)
      message.valid?
      expect(message.errors[:content]).to include("can't be blank")
    end

    it "メッセージと画像がなくて保存できない場合" do
      message = build(:message, content: nil)
      message.valid?
      expect(message.errors[:content]).to include("can't be blank")
    end

    it "group_idがないと保存できない場合" do
      message = build(:message, group_id: nil)
      message.valid?
      expect(message.errors[:group_id]).to include("can't be blank")
    end

    it "user_idがないと保存できない場合" do
      message = build(:message, user_id: nil)
      message.valid?
      expect(message.errors[:user_id]).to include("can't be blank")
    end





  end


end








