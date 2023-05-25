Plugin.define do
name "ant-design"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<[^>]*class="ant-(?:btn|col|row|layout|breadcrumb|menu|pagination|steps|select|cascader|checkbox|calendar|form|input-number|input|mention|rate|radio|slider|switch|tree-select|time-picker|transfer|upload|avatar|badge|card|carousel|collapse|list|popover|tooltip|table|tabs|tag|timeline|tree|alert|modal|message|notification|progress|popconfirm|spin|anchor|back-top|divider|drawer)/},
{:regexp=>/<i class="anticon anticon-/},
{:search=>"all", :text=>'Ant Design'},
]
end