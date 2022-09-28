# Definition for a binary tree node.
defmodule TreeNode do
  @type t :: %__MODULE__{
          val: integer,
          left: TreeNode.t() | nil,
          right: TreeNode.t() | nil
        }
  defstruct val: 0, left: nil, right: nil
end

defmodule Solution do
  @spec path_sum(root :: TreeNode.t() | nil, target_sum :: integer) :: [[integer]]
  def path_sum(root, target_sum) do
    IO.inspect(root)
    IO.inspect(target_sum)
  end

  @spec pot(root :: TreeNode.t() | nil) :: integer
  def pot(root) do
    IO.inspect(root.val)
    pot(root.left)
    pot(root.right)
  end

  def pot(root) when root.left == nil and root.right == nil do
    IO.inspect(root.val)
    pot(root.left)
    pot(root.right)
  end

  def pot(root) do
    IO.inspect(root.val)
    pot(root.left)
    pot(root.right)
  end

  def pre_order(%{val: nil, left: nil, right: nil} = node) do
    []
  end

  def pre_order(%{val: value, left: nil, right: nil} = node) do
    IO.inspect(node)
  end

  def pre_order(%{val: value, left: left, right: right} = node) do
    IO.inspect(value)
    pre_order(left)
    pre_order(right)
  end
end

t3 = %{val: 3}
t4 = %{val: 4}
t5 = %{val: 5}
t6 = %{val: 6}

t1 = %{val: 2, left: t3, right: t4}
t2 = %{val: 3, left: t5, right: t6}

t0 = %{val: 1, left: t1, right: t2}

IO.inspect(t0)
# Solution.pot(t0)

t0 |> Solution.pre_order()


t0 = %{val: 1, left: nil, right: nil}
%{val: value, left: left, right: right} = t0
IO.inspect(value)
