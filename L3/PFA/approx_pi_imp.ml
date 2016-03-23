let n = int_of_string Sys.argv.(1)

let () =

  let p = ref 0 in

  for k = 1 to n do
    let x = Random.float 1.0 in
    let y = Random.float 1.0 in    
    if x *. x +. y *. y <= 1.0 then 
      p := !p + 1
  done;

  let pi = 4. *. (float !p) /. (float n) in
  Printf.printf "%f\n" pi

