adm_setup
update: y means update, n means create a new client
calendar: 1 means yes, 2 means no.
bdgt_dim: if calendar is 1, then month_id is forced to be included
dim_...: all dimension selections, no other attribute with prefix dim_
TRIM all _name column first!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


adm_output
group: label on the output page or sheet name in excel output file; a label stands for a box
label: only drill down table and chart use this column, for those rows the format should be ..._number, such as market_1, market_2; the number refers to dma1, dma2, ....
type: tell Jay the field name of the output table
dim: fields to create output
chart: if not for chart, none; if for chart, then validate highchart type name; if for export, then excel
