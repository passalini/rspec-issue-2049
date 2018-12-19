require 'rails_helper'

describe Student, :type => :model do
  fixtures :students

  it 'should show only 2 times' do
    student = students(:one)

    expect(student).to receive(:email).once.and_call_original
    student.email
    student.email
  end
end
