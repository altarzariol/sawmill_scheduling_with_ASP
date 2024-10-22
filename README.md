# A Declarative Approach to Tackle Sawmill Production Scheduling with Answer Set Programming

Benchmark of Sawmill Production Scheduling, ASP encodings and experimental results.


## Requirements

* [Clingo](https://potassco.org/clingo/) 

## Benchmark
Each directory ins[n] contains a random instance from each type of demand considered in our study, mapped as follows:
<table>
  <thead>
    <tr>
      <th>Standard</th>
      <th>Growing</th>
      <th>Diminishing</th>
      <th>Low</th>
      <th>High</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>real</td>
      <td>real_c</td>
      <td>real_d</td>
      <td>real_h</td>
      <td>real_o</td>
    </tr>
  </tbody>
</table>

## Repeat experiments
For n in [0..4]
```
$ ./run.sh n
```


## Authors

Giacomo Da Col  
Philipp Fleiss  
Alice Tarzariol  
Erich C. Teppan  
Elena Wiegelmann


## License

This project is licensed under the MIT License 


