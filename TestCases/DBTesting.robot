*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database
*** Variables ***
${DBName}      user
${DBUser}      root
${DBPass}      root
${DBHost}      127.0.0.1
${DBPort}      3308

*** Test Cases ***
#reate person table
  # ${output}=    execute sql string    create table person(id integer,first_name varchar(20),last_name varchar(25));
  # log to console   ${output}
   #should be equal as strings    ${output}    None
Inserting Data in Table Person
#Single record
    #${output}=    execute sql string   Insert into person values (100, "aymen","barka");
    #multiple record
    ${output}=    execute sql string     ./TestData/user_person_insertData.sql
    log to console   ${output}
    should be equal as strings    ${output}    None
