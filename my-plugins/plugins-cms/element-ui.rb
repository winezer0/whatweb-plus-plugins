Plugin.define do
name "element-ui"
authors [
"winezero",

]
version "0.1"
matches [
{:regexp=>/<(?:div|button) class="el-(?:table-column|table-filter|popper|pagination|pager|select-group|form|form-item|color-predefine|color-hue-slider|color-svpanel|color-alpha-slider|color-dropdown|color-picker|badge|tree|tree-node|select|message|dialog|checkbox|checkbox-button|checkbox-group|container|steps|carousel|menu|menu-item|submenu|menu-item-group|button|button-group|card|table|select-dropdown|row|tabs|notification|radio|progress|progress-bar|tag|popover|tooltip|cascader|cascader-menus|cascader-menu|time-spinner|spinner|spinner-inner|transfer|transfer-panel|rate|slider|dropdown|dropdown-menu|textarea|input|input-group|popup-parent|radio-group|main|breadcrumb|time-range-picker|date-range-picker|year-table|date-editor|range-editor|time-spinner|date-picker|time-panel|date-table|month-table|picker-panel|collapse|collapse-item|alert|select-dropdown|select-dropdown__empty|select-dropdown__wrap|select-dropdown__list|scrollbar|switch|carousel|upload|upload-dragger|upload-list|upload-cover|aside|input-number|header|message-box|footer|radio-button|step|autocomplete|autocomplete-suggestion|loading-parent|loading-mask|loading-spinner|)/},
{:search=>"all", :text=>'Element UI'},
]
end