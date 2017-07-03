# !/bin/sh

# create the scripts for all the deterministic runs at once
CURDIR=`pwd`
INSTANCES=()
# INSTANCES+=(n005w4_0_1-2-3-3 n005w4_1_5-3-1-0 n005w4_2_6-7-8-9)
# INSTANCES+=(n012w8_0_3-5-0-2-0-4-5-2 n012w8_1_7-7-0-8-9-3-2-6 n012w8_2_4-5-6-7-2-1-2-1)
# INSTANCES+=(n021w4_0_5-4-1-2 n021w4_1_0-6-1-6 n021w4_2_8-1-4-3)
INSTANCES+=(n030w4_1_6-2-9-1 n030w4_1_6-7-5-3 n030w8_1_2-7-0-9-3-6-0-6 n030w8_1_6-7-5-3-5-6-2-9)
INSTANCES+=(n035w4_2_8-8-7-5 n035w4_0_1-7-1-8) # n035w4_0_4-2-1-6 n035w4_0_5-9-5-6 n035w4_0_9-8-7-7 n035w4_1_0-6-9-2 n035w4_2_8-6-7-1 n035w4_2_9-2-2-6 n035w4_2_9-7-2-2 n035w4_2_9-9-2-1)
INSTANCES+=(n035w8_0_6-2-9-8-7-7-9-8 n035w8_1_0-8-1-6-1-7-2-0) # n035w8_1_0-8-4-0-9-1-3-2 n035w8_1_1-4-4-9-3-5-3-2 n035w8_1_7-0-6-2-1-1-1-6 n035w8_2_2-1-7-1-8-7-4-2 n035w8_2_7-1-4-9-2-2-6-7 n035w8_2_8-8-7-5-0-0-6-9 n035w8_2_9-5-6-3-9-9-2-1 n035w8_2_9-7-2-2-5-7-4-3)
INSTANCES+=(n040w4_0_2-0-6-1 n040w4_2_6-1-0-6 n040w8_0_0-6-8-9-2-6-6-4 n040w8_2_5-0-4-8-7-1-7-2)
INSTANCES+=(n050w4_0_0-4-8-7 n050w4_0_7-2-7-2 n050w8_1_1-7-8-5-7-4-1-8 n050w8_1_9-7-5-3-8-8-3-1)
INSTANCES+=(n060w4_1_6-1-1-5 n060w4_1_9-6-3-8 n060w8_0_6-2-9-9-0-8-1-3 n060w8_2_1-0-3-4-0-3-9-1)
INSTANCES+=(n070w4_0_3-6-5-1 n070w4_0_4-9-6-7) # n070w4_0_4-9-7-6 n070w4_0_8-6-0-8 n070w4_0_9-1-7-5 n070w4_1_1-3-8-8 n070w4_2_0-5-6-8 n070w4_2_3-5-8-2 n070w4_2_5-8-2-5 n070w4_2_9-5-6-5 )
INSTANCES+=(n070w8_0_3-3-9-2-3-7-5-2 n070w8_0_9-3-0-7-2-1-1-0) # n070w8_1_5-6-8-5-7-8-5-6 n070w8_1_9-8-9-9-2-8-1-4 n070w8_2_4-9-2-0-2-7-0-6 n070w8_2_5-1-3-0-8-0-5-8 n070w8_2_5-7-4-8-7-2-9-9 n070w8_2_6-3-0-1-8-1-5-9 n070w8_2_8-6-0-1-6-4-7-8 n070w8_2_9-3-5-2-2-9-2-0)
INSTANCES+=(n080w4_2_4-3-3-3 n080w4_2_6-0-4-8 n080w8_1_4-4-9-9-3-6-0-5 n080w8_2_0-4-0-9-1-9-6-2)
INSTANCES+=(n100w4_0_1-1-0-8 n100w4_2_0-6-4-6 n100w8_0_0-1-7-8-9-1-5-4 n100w8_1_2-4-7-9-3-9-2-8)
INSTANCES+=(n110w4_0_1-4-2-8 n110w4_0_1-9-3-5) # n110w4_1_0-1-6-4 n110w4_1_0-5-8-8 n110w4_1_2-9-2-0 n110w4_1_4-8-7-2 n110w4_2_0-2-7-0 n110w4_2_5-1-3-0 n110w4_2_8-9-9-2 n110w4_2_9-8-4-9)
INSTANCES+=(n110w8_0_2-1-1-7-2-6-4-7 n110w8_0_3-2-4-9-4-1-3-7) # n110w8_0_5-5-2-2-5-3-4-7 n110w8_0_7-8-7-5-9-7-8-1 n110w8_0_8-8-0-2-3-4-6-3 n110w8_0_8-8-2-2-3-2-0-8 n110w8_1_0-6-1-0-3-2-9-1 n110w8_1_4-1-3-6-8-8-1-3 n110w8_2_2-9-5-5-1-8-4-0 n110w8_2_8-5-7-3-9-8-8-5)
INSTANCES+=(n120w4_1_4-6-2-6 n120w4_1_5-6-9-8 n120w8_0_0-9-9-4-5-1-0-3 n120w8_1_7-2-6-4-5-2-0-2)
echo "List of instances: ${INSTANCES[*]}"

for DIR in ${INSTANCES[*]}
do
	cd ${CURDIR}
	scripts/writeRun.sh ${DIR} ${1}.txt ${2}
done