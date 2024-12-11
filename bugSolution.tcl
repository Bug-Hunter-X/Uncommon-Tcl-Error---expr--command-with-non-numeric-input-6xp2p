proc goodproc {a b} {
  if {[string is double $a] && [string is double $b]} {
    set c [expr {$a + $b}]
    return $c
  } else {
    return "Error: Inputs must be numbers"
  }
}
puts [goodproc 10 20]
puts [goodproc 10 abc]
puts [goodproc abc 20]
puts [goodproc abc def]