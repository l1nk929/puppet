
require "FileUtils"

def glob(list)
  g = list.map { |i| Dir.glob(i) } #将list中的多个路径下的符合规则的文件赋值给g,g也是list，结果是多个文件列表
  g.flatten!  #将多维数组转换成一维数组
  g.compact!  #删除空元素
  g # return g
end
FileUtils.cd File.dirname(__FILE__) do
  rdoc  = glob(%w{bin/* lib/**/*.rb README* }).reject { |e| e=~ /\.(bat|cmd)$/ } #正则匹配拓展名结尾的
  p rdoc
end