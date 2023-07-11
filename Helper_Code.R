clean_code_segments = function(code_segments) {
  segments = c()
  
  for (segment in code_segments) {
    segments = c(segments, clean_code(segment))
  }
  
  return(segments)
}

clean_code = function(code) {
  mod_lines = c()
  
  for (line in str_split(code, "\\n")[[1]]) {
    line = str_trim(line)
    
    if (line == "")
      next
    
    if (grepl("^#", line))
      next
    
    mod_lines = c(mod_lines, line)
  }
  
  return(str_c(mod_lines, collapse = "\n"))
}