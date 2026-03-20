@AccessControl.authorizationCheck: #NOT_REQUIRED
define hierarchy ZCDS_MVRDEOLIVEIR_HIER
  as parent child hierarchy (
    source ZCDS_MVRDEOLIVEIR_HIER_SOURC
    child to parent association _manager
    siblings order by EmpId ascending
  )
{
    EmpId,
    EmpName,
    ManagerId,
    CostCenter,
    $node.hierarchy_level as hier_lvl,
    $node.hierarchy_rank as hier_rank,
    $node.hierarchy_is_orphan as is_orphan,
    $node.hierarchy_parent_rank as hier_parent_rank,
    $node.hierarchy_tree_size as hier_tree_size,
    $node.node_id as id_node,
    $node.parent_id as id_parent
    
}
