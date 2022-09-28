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
  def init() do
    t3 = %{val: 4, left: nil, right: nil}
    t4 = %{val: 5, left: nil, right: nil}
    t5 = %{val: 6, left: nil, right: nil}
    t6 = %{val: 7, left: nil, right: nil}

    t1 = %{val: 2, left: t3, right: t4}
    t2 = %{val: 3, left: t5, right: t6}

    t0 = %{val: 1, left: t1, right: t2}
    t0
  end

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

  def pre_order(%{val: nil, left: nil, right: nil}) do
    []
  end

  def pre_order(%{val: value, left: nil, right: nil}) do
    [value]
  end

  def pre_order(%{val: value, left: left, right: right}) do
    [value] ++ pre_order(left) ++ pre_order(right)
  end
end

n01 = Solution.init()
IO.inspect(n01)

n01 |> Solution.pre_order() |> IO.inspect()

# t0 = %{val: 1, left: nil, right: nil}
# %{val: value, left: left, right: right} = t0
# IO.inspect(value)
