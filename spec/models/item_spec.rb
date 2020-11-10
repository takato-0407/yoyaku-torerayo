require 'rails_helper'
RSpec.describe Item, type: :model do
  describe '出品機能' do
    before do
      @item = FactoryBot.build(:item)
    end
    context '内容に問題がない場合' do
      it '全て正常' do
        expect(@item.valid?).to eq true
      end
    end
    context '内容に問題がある場合' do
      it 'nameは空だと登録できない' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'infoが空では登録できない' do
        @item.info = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Info can't be blank")
      end
      it 'priceが空では登録できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not included in the list')
      end
      it 'priceが300円以下ではでは登録できない' do
        @item.price = '299'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not included in the list')
      end
      it 'priceが9999999円以上では登録できない' do
        @item.price = '10000000'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not included in the list')
      end
      it 'priceが全角数字では登録できない' do
        @item.price = '４０００'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not included in the list')
      end
      it 'ttime_iが空では登録できない' do
        @item.ttime_id  = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Ttime can't be blank", "Ttime is not a number")
      end
      it 'man_kaz_idが空では登録できない' do
        @item.man_kaz_id  = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Man kaz can't be blank", "Man kaz is not a number")
      end
      it 'tempo_to_idが空の場合登録できない' do
        @item.tempo_to_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Tempo to can't be blank", "Tempo to is not a number")
      end
      it 'tempo_idが空の場合登録できない' do
        @item.tempo_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Tempo can't be blank", "Tempo is not a number")
      end
      it ' category_idが空の場合登録できない' do
        @item.eki_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Eki can't be blank", "Eki is not a number")
      end
      it 'user_idが空の場合登録できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist')
      end
      it 'imageが空の場合登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'ttime_iが空では登録できない' do
        @item.ttime_id  = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Ttime must be other than 1")
      end
      it 'man_kaz_idが空では登録できない' do
        @item.man_kaz_id  = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Man kaz must be other than 1")
      end
      it 'tempo_to_idが空の場合登録できない' do
        @item.tempo_to_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Tempo to must be other than 1")
      end
      it 'tempo_idが空の場合登録できない' do
        @item.tempo_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Tempo must be other than 1")
      end
      it ' category_idが空の場合登録できない' do
        @item.eki_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Eki must be other than 1")
      end
    end
  end
end
