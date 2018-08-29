// 获取趋势图数据
function getDataQst(mpid) {
    $.ajax({
        type: "post",
        url: "getQst",
        data: {monitorpointid: mpid},
        dataType: "json",
        success: function (data) {
            var qstRecords = []; // 暂存趋势图数据
            addData(qstRecords, JSON.parse(data));
            alert(qstRecords);
        },
        error: function () {
            alert("获取趋势图数据失败");
        }
    });
}

// 获取谐波数据
function getDataXb(mpid) {
    $.ajax({
        type: "post",
        url: "getXB",
        data: {
            monitorpointid: mpid
        },
        dataType: "json",
        success: function (data) {
            var obj = JSON.parse(data);
            var ndata = obj.nowpowerxb;
            alert(ndata);
        },
        error: function(){
            alert("获取谐波数据失败");
        }
    });
}

// 获取三相电压、电流数据
function getDataSxdy(mpid) {
    $.ajax({
        type: "post",
        url: "getSXDY",
        data: {monitorpointid: mpid},
        dataType: "json",
        success: function (data) {
            var obj = JSON.parse(data);
            dataSxbphd = obj.nowpowersxdy;
            alert(dataSxbphd);
        },
        error: function () {
            alert("获取三相电压数据失败");
        }
    });
}

// 获取参数值
function getDataParams(mpid) {
    $.ajax({
        type: "post",
        url: "getParameter",
        data: {monitorpointid: mpid},
        success: function(data){
            var obj = JSON.parse(data);
            var rt = obj.nowpowerparm;
            alert(rt);
        },
        error: function(){
            alert("获取参数值失败");
        }
    })
}

// 添加数据
function addData(qstRecords, newRecord) {
    //console.log(newRecord);
    if (qstRecords.length > (60 * 12)) {
        qstRecords.shift();
        qstRecords.shift();
        qstRecords.shift();
    }
    // 构造3条记录
    for(var i = 0; i < 3; i++){
        var oneRecord = {
            time: newRecord["allHZ"][i]["time"],
            // RMS
            rmsU1: newRecord["allRMS"][i]["u1"],
            rmsU2: newRecord["allRMS"][i]["u2"],
            rmsU3: newRecord["allRMS"][i]["u3"],
            rmsI1: newRecord["allRMS"][i]["i1"],
            rmsI2: newRecord["allRMS"][i]["i2"],
            rmsI3: newRecord["allRMS"][i]["i3"],
            // THD
            thdU1: newRecord["allTHD"][i]["u1"],
            thdU2: newRecord["allTHD"][i]["u2"],
            thdU3: newRecord["allTHD"][i]["u3"],
            thdI1: newRecord["allTHD"][i]["i1"],
            thdI2: newRecord["allTHD"][i]["i2"],
            thdI3: newRecord["allTHD"][i]["i3"],
            // CF
            cfU1: newRecord["allCF"][i]["u1"],
            cfU2: newRecord["allCF"][i]["u2"],
            cfU3: newRecord["allCF"][i]["u3"],
            cfI1: newRecord["allCF"][i]["i1"],
            cfI2: newRecord["allCF"][i]["i2"],
            cfI3: newRecord["allCF"][i]["i3"],
            // Hz
            hz: newRecord["allHZ"][i]["hz"],
            // W
            p1: newRecord["allW"][i]["p1"],
            p2: newRecord["allW"][i]["p2"],
            p3: newRecord["allW"][i]["p3"],
            // VA
            s1: newRecord["allVA"][i]["s1"],
            s2: newRecord["allVA"][i]["s2"],
            s3: newRecord["allVA"][i]["s3"],
            // Var
            q1: newRecord["allVAR"][i]["q1"],
            q2: newRecord["allVAR"][i]["q2"],
            q3: newRecord["allVAR"][i]["q3"],
            // PF
            pf1: newRecord["allPF"][i]["pf1"],
            pf2: newRecord["allPF"][i]["pf2"],
            pf3: newRecord["allPF"][i]["pf3"],
            // DPF
            dpf1: newRecord["allDPF"][i]["cosPhi1"],
            dpf2: newRecord["allDPF"][i]["cosPhi2"],
            dpf3: newRecord["allDPF"][i]["cosPhi3"],
            // Tan
            tan1: newRecord["allTAN"][i]["tan1"],
            tan2: newRecord["allTAN"][i]["tan2"],
            tan3: newRecord["allTAN"][i]["tan3"],
            // unb
            unb: newRecord["allUNB"][i]["unb"],
            // Pst
            pstU1: newRecord["allPST"][i]["pstU1"],
            pstU2: newRecord["allPST"][i]["pstU2"],
            pstU3: newRecord["allPST"][i]["pstU3"],
            // Plt
            pltU1: newRecord["allPLT"][i]["pltU1"],
            pltU2: newRecord["allPLT"][i]["pltU2"],
            pltU3: newRecord["allPLT"][i]["pltU3"]
            // vh
            // Ah
        };
        qstRecords.push(oneRecord);
    }
    //console.log(qstRecords);
}