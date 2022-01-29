# node_stats

A very crude mod to dump stats on how many nodes each of the other mods
registered.

Example from EdenLost (2022-01-28):

```
$ cat worlds/world/node-stats-summary.txt | sort -rn | head -n 20
4658 moreblocks
4203 scifi_nodes
2250 cblocks
1506 technic_cnc
1370 moretrees
1235 bakedclay
1198 letters
757 workbench
524 bridger
522 ??
520 mypaths
458 planet_mars
456 building_blocks
443 extranodes
416 pandorabox_custom
384 facade
382 pipeworks
318 street_signs
285 ethereal
269 farming
```


```
$ cat worlds/world/node-stats-detail.txt | sort | grep pandorabox | head -n 3
pandorabox_custom default:clay_technic_cnc_cylinder
pandorabox_custom default:clay_technic_cnc_cylinder_horizontal
pandorabox_custom default:clay_technic_cnc_element_cross

$ cat worlds/world/node-stats-detail.txt | sort | grep "\?\?" | head -n 3
3d_armor_stand 3d_armor_stand:armor_stand
3d_armor_stand 3d_armor_stand:locked_armor_stand
3d_armor_stand 3d_armor_stand:top
```
