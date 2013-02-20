node default {
  package { "curl":
    ensure => "latest",
  }
}

node /slave\d+/ inherits default {
  require java
  include vagrant::hadoop::base
  include cdh4::hadoop::datanode
  include cdh4::hadoop::tasktracker
  # include hbase::regionserver
}

node master inherits default {
  require java
  include vagrant::hadoop
  include hadoop::namenode
  include hadoop::jobtracker
  # include hbase::master
}

node hiveserver inherits default {
  require java
  include vagrant::hadoop
  include hive::server
}

node /zookeeper\d+/ inherits default {
  require java
  include vagrant::hadoop::apt
  class { "cdh4::zookeeper::server":
    zookeeper_hosts => {
      "zookeeper1.vagrant" => 1,
      "zookeeper2.vagrant" => 2,
      "zookeeper3.vagrant" => 3,
    }
  }
}

