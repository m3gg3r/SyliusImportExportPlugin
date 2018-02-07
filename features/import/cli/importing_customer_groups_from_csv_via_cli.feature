@managing_customer_groups
Feature: Importing customer-groups from csv with the command-line-interface
  In order to have my customer-groups from external source
  As an Developer
  I want to be able to import data from csv file from the commandline

  Background:
    Given I have a working command-line-interface

  @cli_importer
  Scenario: Importing defined customer-groups with the cli-command
    When I import "customer_group" data from csv file "customer_groups.csv" file with the cli-command
    Then I should see "Imported" in the output
    And I should have at least the following customer-group ids in the database:
      | PREMIUM |
      | BASIC |
