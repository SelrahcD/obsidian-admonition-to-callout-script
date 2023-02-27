BEGIN {
    in_admonition = 0
}

match($0, /```ad-(.*)/, ary) {
    in_admonition = 1
    print "> [!"ary[1]"]"
    next
}

#/```ad/ && in_admonition=true { print "AAA"}
#

#
#in_admonition==true && !/```/ {
#    print "> " $0
#}

# !/```/ {
#    if(in_admonition == 0) print "> " $0
#    else print $0
#     next
#}
#
/```/  && in_admonition == 1 {
    in_admonition = 0
    next
}

{
    if (in_admonition == 1) print "> " $0
    else print $0
}