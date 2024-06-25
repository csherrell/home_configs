#!/usr/bin/env zsh
set -x
echo $1 $2 $3
datamover_bin.py -d $1 -e $2 "mkdir -p $3/%Y-%m-%d/gusdata"
datamover_bin.py -d $1 -e $2 "mkdir -p $3/%Y-%m-%d/gusrng"
datamover_bin.py -d $1 -e $2 "mkdir -p $3/%Y-%m-%d/logs"
datamover_bin.py -d $1 -e $2 "mkdir -p $3/%Y-%m-%d/parquet"
datamover_bin.py -d $1 -e $2 "mkdir -p $3/%Y-%m-%d/sxs"
datamover_bin.py -d $1 -e $2 "rsync -auv --exclude 'C?_*rpt' /wmd/source/%Y/%m/%d/cat/field/cp_sp_logs/ $3/%Y-%m-%d/logs/"
datamover_bin.py -d $1 -e $2 "rsync -auv /wmd/source/%Y/%m/%d/cat/field/dp_condensed/msg9*.rpt $3/%Y-%m-%d/logs/"
datamover_bin.py -d $1 -e $2 "rsync -auv /wmd/source/%Y/%m/%d/cat/field/dp_reports/WAAS_Type09_Msg_Geo?.rpt $3/%Y-%m-%d/logs/"
datamover_bin.py -d $1 -e $2 "rsync -auv /wmd/source/%Y/%m/%d/cat/field/dp_reports/TR_OM_SE $3/%Y-%m-%d/logs/"
datamover_bin.py -d $1 -e $2 "rsync -auv /wmd/source/%Y/%m/%d/cat/field/dp_reports/GUS/ $3/%Y-%m-%d/gusdata/"
datamover_bin.py -d $1 -e $2 "rsync -auv /wmd/source/%Y/%m/%d/cat/field/reformatter/*[ODT]*rng.gz $3/%Y-%m-%d/gusrng/"
datamover_bin.py -d $1 -e $2 "rsync -auv /wmd/source/%Y/%m/%d/cat/field/dqt_data/*/* $3/%Y-%m-%d/dqt_data/"
datamover_bin.py -d $1 -e $2 "rsync -auv /wmd/source/%Y/%m/%d/cat/field/dp_reports/WNT_Filter*.rpt $3/%Y-%m-%d/dqt_data/"
datamover_bin.py -d $1 -e $2 "rsync -auv /wmd/source/%Y/%m/%d/cat/field/dp_reports/WNT_Linear*.rpt $3/%Y-%m-%d/dqt_data/"
datamover_bin.py -d $1 -e $2 "rsync -auv /wmd/source/%Y/%m/%d/olm/parquet/field/*gus*.parquet $3/%Y-%m-%d/parquet/"
