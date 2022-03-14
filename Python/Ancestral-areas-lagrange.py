#!/usr/bin/env python
import os
import lagrange
data = """\
### begin data
{'area_adjacency': [[1, 1], [1, 1]],
 'area_dispersal': [[[1.0, 1.0], 
                      1.0, 1.0]]],
 'area_labels': ['A', 'B'],
 'base_rates': '__estimate__',
 'dispersal_durations': [10.0],
 'dm_symmetric_entry': True,
 'excluded_ranges': [],
 'lagrange_version': '20120508',
 'max_range_size': 2,
 'model_name': 'psychotria',
 'newick_trees': [{'included': '__all__',
                   'name': 'Equal-BL-2x2',
                   'newick': '((t1:1.00,t2:1.00):1.00,(t3:1.00,t4:1.00):1.00);',
                   'root_age': 1}],
 'ranges': [(),
            (0,),
            (0, 1),
            (1,)],
 'taxa': ['t1',
          't2',
          't3',
          't4'],
 'taxon_range_data': {'t1': (0,),
                      't2': (0,),
                      't3': (1,)
                      't4': (1,))}
                      }
### end data
"""

i = 0
while 1:
    if not i:
        outfname = "Ancestral-reconstruction.txt"
    else:
        outfname = "Ancestral-reconstruction-"+str(i)+".txt"
    if not os.path.exists(outfname): break
    i += 1
outfile = open(outfname, "w")
lagrange.output.log(lagrange.msg, outfile, tee=True)
model, tree, data, nodelabels, base_rates = lagrange.input.eval_decmodel(data)
lagrange.output.ascii_tree(outfile, tree, model, data, tee=True)
if base_rates != "__estimate__":
    d, e = base_rates
else:
    d, e = lagrange.output.optimize_dispersal_extinction(outfile, tree, model, tee=True)
if nodelabels:
    if nodelabels == "__all__":
        nodelabels = None
    lagrange.output.ancsplits(outfile, tree, model, d, e, nodelabels=nodelabels, tee=True)
