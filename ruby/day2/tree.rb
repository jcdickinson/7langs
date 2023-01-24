class Tree
  attr_accessor :children, :node_name

  def initialize(name, children = [])
    @children = children
    @node_name = name
  end

  def self.from_hash(name, hash)
    children = []
    hash.each do |key, value|
      children.push(Tree.from_hash(key, value))
    end
    Tree.new(name, children)
  end

  def visit_all(&block)
    visit(&block)
    children.each { |c| c.visit_all(&block) }
  end

  def visit(&block)
    block.call self
  end
end
ruby_tree = Tree.from_hash('Ruby',
                           {
                             'Reia' => {
                               'Test' => {}
                             },
                             'MacRuby' => {}
                           })
ruby_tree.visit_all { |v| puts v.node_name }
