describe file('C:\Program Files\Java\jdk1.8.0_152') do
  it { should exist }
  it { should be_directory }
end

describe file('C:\Program Files\AnypointStudio\AnypointStudio.exe') do
  it { should exist }
end

describe os_env('JAVA_HOME') do
  its('content') { should eq('C:\Program Files\Java\jdk1.8.0_152') }
end

describe powershell('mvn -v') do
  its('stdout') { should match 'Apache Maven'}
end

describe file('C:\ProgramData\chocolatey\lib\maven\apache-maven-3.5.0\conf\settings.xml') do
  it { should exist }
end
