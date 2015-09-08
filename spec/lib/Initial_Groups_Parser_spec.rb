require 'rspec'
require './lib/initial_groups_parser'

describe InitialGroupsParser do

  let(:data) { InitialGroupsParser.send(:parsed_csv) }

  context "csv data" do
    it {
      expect(:data).is_a?(Array)
      expect(:data).not_to be_empty
    }
  end

  context ".create_initial_groups" do

    it {
      expect { InitialGroupsParser.create_initial_groups }.to change { Group.count }.by(2)
    }

    it "create group with the proper attribues" do
      csv = data
      allow(InitialGroupsParser).to receive(:parsed_csv) { csv }
      InitialGroupsParser.create_initial_groups
      group = Group.first
      expect(group.id).to eq 1
      expect(group.group_name).to eq 'admin'
      expect(group.description).to eq 'admin group'
    end

  end

end