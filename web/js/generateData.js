function getNowFormatDate() {
    var date = new Date();
    var split_1 = "-";
    var split_2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + split_1 + month + split_1 + strDate
        + " " + date.getHours() + split_2 + date.getMinutes()
        + split_2 + date.getSeconds();
    return currentdate;
}

function generateRandom(num, deviation) {
    var result = (num + (Math.random() * deviation * 2) - deviation).toFixed(2);
    return parseFloat(result);
}

function generateRandomRate(num, deviationRate) {
    var result = (num + (Math.random() * num * deviationRate * 2) - deviationRate * num).toFixed(2);
    return parseFloat(result);
}

function generateRandomElement(num) {
    return generateRandom(num * 0.01, num * 0.01);
}

function generateQstRecordBefore() {
    var u = generateRandom(223.66, 4);
    var i = generateRandom(141.01, 4);
    var p = generateRandom(21.35, 2);
    var s = generateRandom(31.68, 2);
    var q = generateRandom(9.65, 1);
    var cosPi = generateRandom(0.71, 0.01);
    var pf = cosPi * generateRandomRate(112.82, 0.1) / i;
    var pstU = generateRandom(4.39, 1);
    var pltU = generateRandom(4.29, 1);
    var thdu = generateRandom(5.65, 0.3);
    var thdi = generateRandom(75.08, 3);


    var data = {
        "allHZ": [
            {
                "time": getNowFormatDate(),
                "hz": generateRandom(50.01, 0.1)
            }
        ],
        "allRMS": [
            {
                "u1": u,
                "u2": u + generateRandomRate(0.92, 0.05),
                "u3": u - generateRandomRate(0.98, 0.05),
                "i1": i,
                "i2": i + generateRandomRate(1.60, 0.05),
                "i3": i - generateRandomRate(7.33, 0.05)
            }
        ],
        "allTHD": [
            {
                "u1": thdu, // todo
                "u2": thdu + generateRandomRate(0.17, 0.05), // todo
                "u3": thdu - generateRandomRate(0.18, 0.05), // todo
                "i1": thdi, // todo
                "i2": thdi + generateRandomRate(1.64, 0.05), // todo
                "i3": thdi - generateRandomRate(1.35, 0.05)  // todo
            }
        ],
        "allW": [
            {
                "p1": p,
                "p2": p + generateRandomRate(0.51, 0.05),
                "p3": p - generateRandomRate(1, 0.05)
            }
        ],
        "allVA": [
            {
                "s1": s,
                "s2": s + generateRandomRate(0.48, 0.05),
                "s3": s - generateRandomRate(1.77, 0.05)
            }
        ],
        "allVAR": [
            {
                "q1": q,
                "q2": q + generateRandomRate(2.02, 0.05),
                "q3": q - generateRandomRate(0.38, 0.05)
            }
        ],
        "allPF": [
            {
                "pf1": pf,
                "pf2": pf + generateRandomRate(0.6, 0.05),
                "pf3": pf - generateRandomRate(0.6, 0.05)
            }
        ],
        "allPST": [
            {
                "pstU1": pstU,
                "pstU2": pstU + generateRandomRate(0.51, 0.05),
                "pstU3": pstU - generateRandomRate(0.34, 0.05)
            }
        ],
        "allPLT": [
            {
                "pltU1": pltU,
                "pltU2": pltU + generateRandomRate(0.34, 0.05),
                "pltU3": pltU - generateRandomRate(0.52, 0.05)
            }
        ],
        "allUNB": [
            {
                "uunb": generateRandom(0.16, 0.1)
            }
        ]
    };

    return data;
}

function generateQstRecordAfter() {
    var u = generateRandom(224.09, 4);
    var i = generateRandom(109.77, 4);
    var p = generateRandom(23.98, 2);
    var s = generateRandom(24.64, 2);
    var q = generateRandom(5.21, 1);
    var cosPi = generateRandom(0.97, 0.01);
    var pf = cosPi * generateRandomRate(106.82, 0.1) / i;
    var pstU = generateRandom(4.37, 1);
    var pltU = generateRandom(4.29, 1);
    var thdu = generateRandom(1.30, 0.2);
    var thdi = generateRandom(5.30, 0.3);

    var data = {
        "allHZ": [
            {
                "time": getNowFormatDate(),
                "hz": generateRandom(50.01, 0.1)
            }
        ],
        "allRMS": [
            {
                "u1": u,
                "u2": u + generateRandomRate(0.54, 0.05),
                "u3": u - generateRandomRate(0.36, 0.05),
                "i1": i,
                "i2": i + generateRandomRate(5.24, 0.05),
                "i3": i - generateRandomRate(1.71, 0.05)

            }
        ],
        "allTHD": [
            {
                "u1": thdu, // todo
                "u2": thdu + generateRandomRate(0.24, 0.05), // todo
                "u3": thdu - generateRandomRate(0.07, 0.05), // todo
                "i1": thdi, // todo
                "i2": thdi + generateRandomRate(0.18, 0.05), // todo
                "i3": thdi - generateRandomRate(0.05, 0.05)  // todo
            }
        ],
        "allW": [
            {
                "p1": p,
                "p2": p + generateRandomRate(0.46, 0.05),
                "p3": p - generateRandomRate(1.18, 0.05)
            }
        ],
        "allVA": [
            {
                "s1": s,
                "s2": s + generateRandomRate(1.22, 0.05),
                "s3": s - generateRandomRate(0.44, 0.05)
            }
        ],
        "allVAR": [
            {
                "q1": q,
                "q2": q + generateRandomRate(0.01, 0.05),
                "q3": q - generateRandomRate(0.31, 0.05)
            }
        ],
        "allPF": [
            {
                "pf1": pf,
                "pf2": pf + generateRandomRate(0.95, 0.05),
                "pf3": pf - generateRandomRate(0.95, 0.05)
            }
        ],
        "allPST": [
            {
                "pstU1": pstU,
                "pstU2": pstU + generateRandomRate(1.05, 0.05),
                "pstU3": pstU - generateRandomRate(0.42, 0.05)
            }
        ],
        "allPLT": [
            {
                "pltU1": pltU,
                "pltU2": pltU + generateRandomRate(0.24, 0.05),
                "pltU3": pltU - generateRandomRate(0.4, 0.05)
            }
        ],
        "allUNB": [
            {
                "uunb": generateRandom(0.16, 0.1)
            }
        ]
    };

    return data;
}

function generateParmDataBefore() {
    var u = generateRandom(223.66, 4);
    var i = generateRandom(141.01, 4);
    var p = generateRandom(21.35, 2);
    var s = generateRandom(31.68, 2);
    var q = generateRandom(9.65, 1);
    var cosPhi = generateRandom(0.71, 0.01);
    var pf = cosPhi * generateRandomRate(112.82, 0.1) / i;
    var pstU = generateRandom(4.39, 1);
    var pltU = generateRandom(4.29, 1);

    var data = {
        "time": getNowFormatDate(),
        "u1": u, // todo
        "u2": u + generateRandomElement(u), // todo
        "u3": u - generateRandomElement(u), // todo
        "u4": 0, // todo
        "i1": i, // todo
        "i2": i + generateRandomElement(i), // todo
        "i3": i - generateRandomElement(i), // todo
        "i4": 0, // todo
        "p1": p, // todo
        "p2": p + generateRandomElement(p), // todo
        "p3": p - generateRandomElement(p), // todo
        "cosPhi1": cosPhi, // todo
        "cosPhi2": cosPhi + generateRandomElement(cosPhi), // todo
        "cosPhi3": cosPhi - generateRandomElement(cosPhi), // todo
        "pf1": pf, // todo
        "pf2": pf + generateRandomElement(pf), // todo
        "pf3": pf - generateRandomElement(pf), // todo
        "q1": q, // todo
        "q2": q + generateRandomElement(q), // todo
        "q3": q - generateRandomElement(q), // todo
        "s1": s, // todo
        "s2": s + generateRandomElement(s), // todo
        "s3": s - generateRandomElement(s), // todo
        "hz": generateRandom(50.01, 0.1), // todo
        "pstU1": pstU, // todo
        "pstU2": pstU + generateRandomElement(pstU), // todo
        "pstU3": pstU - generateRandomElement(pstU), // todo
        "pltU1": pltU, // todo
        "pltU2": pltU + generateRandomElement(pltU), // todo
        "pltU3": pltU - generateRandomElement(pltU)  // todo
    };

    return data;
}

function generateParmDataAfter() {
    var u = generateRandom(224.45, 4);
    var i = generateRandom(109.77, 4);
    var p = generateRandom(23.98, 2);
    var cosPhi = generateRandom(0.97, 0.01);
    var pf = cosPhi * generateRandomRate(106.82, 0.1) / i;
    var q = generateRandom(5.47, 1);
    var s = generateRandom(24.64, 2);
    var pstU = generateRandom(4.37, 1);
    var pltU = generateRandom(4.16, 1);


    var data = {
        "u1": u, // todo
        "u2": u + generateRandomElement(u), // todo
        "u3": u - generateRandomElement(u), // todo
        "u4": 0, // todo
        "i1": i, // todo
        "i2": i + generateRandomElement(i), // todo
        "i3": i - generateRandomElement(i), // todo
        "i4": 0, // todo
        "p1": p, // todo
        "p2": p + generateRandomElement(p), // todo
        "p3": p - generateRandomElement(p), // todo
        "cosPhi1": cosPhi, // todo
        "cosPhi2": cosPhi + generateRandomElement(cosPhi), // todo
        "cosPhi3": cosPhi - generateRandomElement(cosPhi), // todo
        "pf1": pf, // todo
        "pf2": pf + generateRandomElement(pf), // todo
        "pf3": pf - generateRandomElement(pf), // todo
        "q1": q, // todo
        "q2": q + generateRandomElement(q), // todo
        "q3": q - generateRandomElement(q), // todo
        "s1": s, // todo
        "s2": s + generateRandomElement(s), // todo
        "s3": s - generateRandomElement(s), // todo
        "hz": generateRandom(50.01, 0.1), // todo
        "pstU1": pstU, // todo
        "pstU2": pstU + generateRandomElement(pstU), // todo
        "pstU3": pstU - generateRandomElement(pstU), // todo
        "pltU1": pltU, // todo
        "pltU2": pltU + generateRandomElement(pltU), // todo
        "pltU3": pltU - generateRandomElement(pltU)  // todo
    };

    return data;
}

function generateSxdytDataBefore() {
    var data = {
        "u1": 223.32, // todo
        "u2": 224.28, // todo
        "u3": 225.17, // todo
        "v1": 0.00, // todo
        "v2": 0.00, // todo
        "v3": 0.00, // todo
        "i1": 106.36, // todo
        "i2": 112.61, // todo
        "i3": 114.32, // todo
        "uunb": generateRandom(0.16, 0.1), // todo
        "vunb": 0.00, // todo
        "aunb": generateRandom(1.48, 0.1), // todo
        "angleU1": 223.32 % 360, // todo
        "angleU2": 224.28 % 360, // todo
        "angleU3": 225.17 % 360, // todo
        "angleI1": 106.36 % 360, // todo
        "angleI2": 112.61 % 360, // todo
        "angleI3": 114.32 % 360, // todo
        "angleV1": 0.00, // todo
        "angleV2": 0.00, // todo
        "angleV3": 0.00 // todo
    };

    return data;
}

function generateSxdytDataAfter() {
    var data = {
        "u1": 224.05,
        "u2": 224.42,
        "u3": 224.93,
        "v1": 0.00,
        "v2": 0.00,
        "v3": 0.00,
        "i1": 104.36,
        "i2": 109.61,
        "i3": 111.32,
        "uunb": generateRandom(0.14, 0.1),
        "vunb": 0.00,
        "aunb": generateRandom(1.85, 0.1),
        "angleU1": 224.05 % 360, // todo
        "angleU2": 224.42 % 360, // todo
        "angleU3": 224.93 % 360, // todo
        "angleI1": 104.36 % 360, // todo
        "angleI2": 109.61 % 360, // todo
        "angleI3": 111.32 % 360, // todo
        "angleV1": 0.00, // todo
        "angleV2": 0.00, // todo
        "angleV3": 0.00 // todo
    };

    return data;
}

function generateIXbData(num) {
    var data = [
        0,
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5),
        generateRandomRate(num, 0.5)
    ];
    return data;
}

function generateXbtDataBefore() {
    var thdu = generateRandom(5.65, 0.3);
    var thdi = generateRandom(75.08, 3);
    var iXb = generateIXbData(50);

    var data = {
        "time": getNowFormatDate(),
        "u1Xb1": generateRandom(224.05, 4),
        "u1Xb2": 0,
        "u1Xb3": 0,
        "u1Xb4": 0,
        "u1Xb5": 0,
        "u1Xb6": 0,
        "u1Xb7": 0,
        "u1Xb8": 0,
        "u1Xb9": 0,
        "u1Xb10": 0,
        "u1Xb11": 0,
        "u1Xb12": 0,
        "u1Xb13": 0,
        "u1Xb14": 0,
        "u1Xb15": 0,
        "u1Xb16": 0,
        "u1Xb17": 0,
        "u1Xb18": 0,
        "u1Xb19": 0,
        "u1Xb20": 0,
        "u1Xb21": 0,
        "u1Xb22": 0,
        "u1Xb23": 0,
        "u1Xb24": 0,
        "u1Xb25": 0,
        "u1Xb26": 0,
        "u1Xb27": 0,
        "u1Xb28": 0,
        "u1Xb29": 0,
        "u1Xb30": 0,
        "u1Xb31": 0,
        "u1Xb32": 0,
        "u1Xb33": 0,
        "u1Xb34": 0,
        "u1Xb35": 0,
        "u1Xb36": 0,
        "u1Xb37": 0,
        "u1Xb38": 0,
        "u1Xb39": 0,
        "u1Xb40": 0,
        "u1Xb41": 0,
        "u1Xb42": 0,
        "u1Xb43": 0,
        "u1Xb44": 0,
        "u1Xb45": 0,
        "u1Xb46": 0,
        "u1Xb47": 0,
        "u1Xb48": 0,
        "u1Xb49": 0,
        "u1Xb50": 0,
        "u2Xb1": generateRandom(224.42, 4),
        "u2Xb2": 0,
        "u2Xb3": 0,
        "u2Xb4": 0,
        "u2Xb5": 0,
        "u2Xb6": 0,
        "u2Xb7": 0,
        "u2Xb8": 0,
        "u2Xb9": 0,
        "u2Xb10": 0,
        "u2Xb11": 0,
        "u2Xb12": 0,
        "u2Xb13": 0,
        "u2Xb14": 0,
        "u2Xb15": 0,
        "u2Xb16": 0,
        "u2Xb17": 0,
        "u2Xb18": 0,
        "u2Xb19": 0,
        "u2Xb20": 0,
        "u2Xb21": 0,
        "u2Xb22": 0,
        "u2Xb23": 0,
        "u2Xb24": 0,
        "u2Xb25": 0,
        "u2Xb26": 0,
        "u2Xb27": 0,
        "u2Xb28": 0,
        "u2Xb29": 0,
        "u2Xb30": 0,
        "u2Xb31": 0,
        "u2Xb32": 0,
        "u2Xb33": 0,
        "u2Xb34": 0,
        "u2Xb35": 0,
        "u2Xb36": 0,
        "u2Xb37": 0,
        "u2Xb38": 0,
        "u2Xb39": 0,
        "u2Xb40": 0,
        "u2Xb41": 0,
        "u2Xb42": 0,
        "u2Xb43": 0,
        "u2Xb44": 0,
        "u2Xb45": 0,
        "u2Xb46": 0,
        "u2Xb47": 0,
        "u2Xb48": 0,
        "u2Xb49": 0,
        "u2Xb50": 0,
        "u3Xb1": generateRandom(224.93, 4),
        "u3Xb2": 0,
        "u3Xb3": 0,
        "u3Xb4": 0,
        "u3Xb5": 0,
        "u3Xb6": 0,
        "u3Xb7": 0,
        "u3Xb8": 0,
        "u3Xb9": 0,
        "u3Xb10": 0,
        "u3Xb11": 0,
        "u3Xb12": 0,
        "u3Xb13": 0,
        "u3Xb14": 0,
        "u3Xb15": 0,
        "u3Xb16": 0,
        "u3Xb17": 0,
        "u3Xb18": 0,
        "u3Xb19": 0,
        "u3Xb20": 0,
        "u3Xb21": 0,
        "u3Xb22": 0,
        "u3Xb23": 0,
        "u3Xb24": 0,
        "u3Xb25": 0,
        "u3Xb26": 0,
        "u3Xb27": 0,
        "u3Xb28": 0,
        "u3Xb29": 0,
        "u3Xb30": 0,
        "u3Xb31": 0,
        "u3Xb32": 0,
        "u3Xb33": 0,
        "u3Xb34": 0,
        "u3Xb35": 0,
        "u3Xb36": 0,
        "u3Xb37": 0,
        "u3Xb38": 0,
        "u3Xb39": 0,
        "u3Xb40": 0,
        "u3Xb41": 0,
        "u3Xb42": 0,
        "u3Xb43": 0,
        "u3Xb44": 0,
        "u3Xb45": 0,
        "u3Xb46": 0,
        "u3Xb47": 0,
        "u3Xb48": 0,
        "u3Xb49": 0,
        "u3Xb50": 0,
        // iXb is not herr.
        "thdu1": thdu, // todo
        "thdu2": thdu + generateRandomElement(thdu), // todo
        "thdu3": thdu - generateRandomElement(thdu),  // todo
        "thdi1": thdi, // todo
        "thdi2": thdi + generateRandomElement(thdi), // todo
        "thdi3": thdi - generateRandomElement(thdi),  // todo
        "u1Va1": 0.00, // todo
        "u1Va2": (10), // todo
        "u1Va3": (10), // todo
        "u1Va4": (10), // todo
        "u1Va5": (10), // todo
        "u1Va6": (10), // todo
        "u1Va7": (10), // todo
        "u1Va8": (10), // todo
        "u1Va9": (10), // todo
        "u1Va10": (10), // todo
        "u1Va11": (10), // todo
        "u1Va12": (10), // todo
        "u1Va13": (10), // todo
        "u1Va14": (10), // todo
        "u1Va15": (10), // todo
        "u1Va16": (10), // todo
        "u1Va17": (10), // todo
        "u1Va18": (10), // todo
        "u1Va19": (10), // todo
        "u1Va20": (10), // todo
        "u1Va21": (10), // todo
        "u1Va22": (10), // todo
        "u1Va23": (10), // todo
        "u1Va24": (10), // todo
        "u1Va25": (10), // todo
        "u1Va26": (10), // todo
        "u1Va27": (10), // todo
        "u1Va28": (10), // todo
        "u1Va29": (10), // todo
        "u1Va30": (10), // todo
        "u1Va31": (10), // todo
        "u1Va32": (10), // todo
        "u1Va33": (10), // todo
        "u1Va34": (10), // todo
        "u1Va35": (10), // todo
        "u1Va36": (10), // todo
        "u1Va37": (10), // todo
        "u1Va38": (10), // todo
        "u1Va39": (10), // todo
        "u1Va40": (10), // todo
        "u1Va41": (10), // todo
        "u1Va42": (10), // todo
        "u1Va43": (10), // todo
        "u1Va44": (10), // todo
        "u1Va45": (10), // todo
        "u1Va46": (10), // todo
        "u1Va47": (10), // todo
        "u1Va48": (10), // todo
        "u1Va49": (10), // todo
        "u1Va50": (10), // todo
        "u2Va1": 0.00, // todo
        "u2Va2": (10), // todo
        "u2Va3": (10), // todo
        "u2Va4": (10), // todo
        "u2Va5": (10), // todo
        "u2Va6": (10), // todo
        "u2Va7": (10), // todo
        "u2Va8": (10), // todo
        "u2Va9": (10), // todo
        "u2Va10": (10), // todo
        "u2Va11": (10), // todo
        "u2Va12": (10), // todo
        "u2Va13": (10), // todo
        "u2Va14": (10), // todo
        "u2Va15": (10), // todo
        "u2Va16": (10), // todo
        "u2Va17": (10), // todo
        "u2Va18": (10), // todo
        "u2Va19": (10), // todo
        "u2Va20": (10), // todo
        "u2Va21": (10), // todo
        "u2Va22": (10), // todo
        "u2Va23": (10), // todo
        "u2Va24": (10), // todo
        "u2Va25": (10), // todo
        "u2Va26": (10), // todo
        "u2Va27": (10), // todo
        "u2Va28": (10), // todo
        "u2Va29": (10), // todo
        "u2Va30": (10), // todo
        "u2Va31": (10), // todo
        "u2Va32": (10), // todo
        "u2Va33": (10), // todo
        "u2Va34": (10), // todo
        "u2Va35": (10), // todo
        "u2Va36": (10), // todo
        "u2Va37": (10), // todo
        "u2Va38": (10), // todo
        "u2Va39": (10), // todo
        "u2Va40": (10), // todo
        "u2Va41": (10), // todo
        "u2Va42": (10), // todo
        "u2Va43": (10), // todo
        "u2Va44": (10), // todo
        "u2Va45": (10), // todo
        "u2Va46": (10), // todo
        "u2Va47": (10), // todo
        "u2Va48": (10), // todo
        "u2Va49": (10), // todo
        "u2Va50": (10), // todo
        "u3Va1": 0.00, // todo
        "u3Va2": (10), // todo
        "u3Va3": (10), // todo
        "u3Va4": (10), // todo
        "u3Va5": (10), // todo
        "u3Va6": (10), // todo
        "u3Va7": (10), // todo
        "u3Va8": (10), // todo
        "u3Va9": (10), // todo
        "u3Va10": (10), // todo
        "u3Va11": (10), // todo
        "u3Va12": (10), // todo
        "u3Va13": (10), // todo
        "u3Va14": (10), // todo
        "u3Va15": (10), // todo
        "u3Va16": (10), // todo
        "u3Va17": (10), // todo
        "u3Va18": (10), // todo
        "u3Va19": (10), // todo
        "u3Va20": (10), // todo
        "u3Va21": (10), // todo
        "u3Va22": (10), // todo
        "u3Va23": (10), // todo
        "u3Va24": (10), // todo
        "u3Va25": (10), // todo
        "u3Va26": (10), // todo
        "u3Va27": (10), // todo
        "u3Va28": (10), // todo
        "u3Va29": (10), // todo
        "u3Va30": (10), // todo
        "u3Va31": (10), // todo
        "u3Va32": (10), // todo
        "u3Va33": (10), // todo
        "u3Va34": (10), // todo
        "u3Va35": (10), // todo
        "u3Va36": (10), // todo
        "u3Va37": (10), // todo
        "u3Va38": (10), // todo
        "u3Va39": (10), // todo
        "u3Va40": (10), // todo
        "u3Va41": (10), // todo
        "u3Va42": (10), // todo
        "u3Va43": (10), // todo
        "u3Va44": (10), // todo
        "u3Va45": (10), // todo
        "u3Va46": (10), // todo
        "u3Va47": (10), // todo
        "u3Va48": (10), // todo
        "u3Va49": (10), // todo
        "u3Va50": (10), // todo
        "i1Va1": 0.00, // todo
        "i1Va2": (10), // todo
        "i1Va3": (10), // todo
        "i1Va4": (10), // todo
        "i1Va5": (10), // todo
        "i1Va6": (10), // todo
        "i1Va7": (10), // todo
        "i1Va8": (10), // todo
        "i1Va9": (10), // todo
        "i1Va10": (10), // todo
        "i1Va11": (10), // todo
        "i1Va12": (10), // todo
        "i1Va13": (10), // todo
        "i1Va14": (10), // todo
        "i1Va15": (10), // todo
        "i1Va16": (10), // todo
        "i1Va17": (10), // todo
        "i1Va18": (10), // todo
        "i1Va19": (10), // todo
        "i1Va20": (10), // todo
        "i1Va21": (10), // todo
        "i1Va22": (10), // todo
        "i1Va23": (10), // todo
        "i1Va24": (10), // todo
        "i1Va25": (10), // todo
        "i1Va26": (10), // todo
        "i1Va27": (10), // todo
        "i1Va28": (10), // todo
        "i1Va29": (10), // todo
        "i1Va30": (10), // todo
        "i1Va31": (10), // todo
        "i1Va32": (10), // todo
        "i1Va33": (10), // todo
        "i1Va34": (10), // todo
        "i1Va35": (10), // todo
        "i1Va36": (10), // todo
        "i1Va37": (10), // todo
        "i1Va38": (10), // todo
        "i1Va39": (10), // todo
        "i1Va40": (10), // todo
        "i1Va41": (10), // todo
        "i1Va42": (10), // todo
        "i1Va43": (10), // todo
        "i1Va44": (10), // todo
        "i1Va45": (10), // todo
        "i1Va46": (10), // todo
        "i1Va47": (10), // todo
        "i1Va48": (10), // todo
        "i1Va49": (10), // todo
        "i1Va50": (10), // todo
        "i2Va1": 0.00, // todo
        "i2Va2": (10), // todo
        "i2Va3": (10), // todo
        "i2Va4": (10), // todo
        "i2Va5": (10), // todo
        "i2Va6": (10), // todo
        "i2Va7": (10), // todo
        "i2Va8": (10), // todo
        "i2Va9": (10), // todo
        "i2Va10": (10), // todo
        "i2Va11": (10), // todo
        "i2Va12": (10), // todo
        "i2Va13": (10), // todo
        "i2Va14": (10), // todo
        "i2Va15": (10), // todo
        "i2Va16": (10), // todo
        "i2Va17": (10), // todo
        "i2Va18": (10), // todo
        "i2Va19": (10), // todo
        "i2Va20": (10), // todo
        "i2Va21": (10), // todo
        "i2Va22": (10), // todo
        "i2Va23": (10), // todo
        "i2Va24": (10), // todo
        "i2Va25": (10), // todo
        "i2Va26": (10), // todo
        "i2Va27": (10), // todo
        "i2Va28": (10), // todo
        "i2Va29": (10), // todo
        "i2Va30": (10), // todo
        "i2Va31": (10), // todo
        "i2Va32": (10), // todo
        "i2Va33": (10), // todo
        "i2Va34": (10), // todo
        "i2Va35": (10), // todo
        "i2Va36": (10), // todo
        "i2Va37": (10), // todo
        "i2Va38": (10), // todo
        "i2Va39": (10), // todo
        "i2Va40": (10), // todo
        "i2Va41": (10), // todo
        "i2Va42": (10), // todo
        "i2Va43": (10), // todo
        "i2Va44": (10), // todo
        "i2Va45": (10), // todo
        "i2Va46": (10), // todo
        "i2Va47": (10), // todo
        "i2Va48": (10), // todo
        "i2Va49": (10), // todo
        "i2Va50": (10), // todo
        "i3Va1": 0.00, // todo
        "i3Va2": (10), // todo
        "i3Va3": (10), // todo
        "i3Va4": (10), // todo
        "i3Va5": (10), // todo
        "i3Va6": (10), // todo
        "i3Va7": (10), // todo
        "i3Va8": (10), // todo
        "i3Va9": (10), // todo
        "i3Va10": (10), // todo
        "i3Va11": (10), // todo
        "i3Va12": (10), // todo
        "i3Va13": (10), // todo
        "i3Va14": (10), // todo
        "i3Va15": (10), // todo
        "i3Va16": (10), // todo
        "i3Va17": (10), // todo
        "i3Va18": (10), // todo
        "i3Va19": (10), // todo
        "i3Va20": (10), // todo
        "i3Va21": (10), // todo
        "i3Va22": (10), // todo
        "i3Va23": (10), // todo
        "i3Va24": (10), // todo
        "i3Va25": (10), // todo
        "i3Va26": (10), // todo
        "i3Va27": (10), // todo
        "i3Va28": (10), // todo
        "i3Va29": (10), // todo
        "i3Va30": (10), // todo
        "i3Va31": (10), // todo
        "i3Va32": (10), // todo
        "i3Va33": (10), // todo
        "i3Va34": (10), // todo
        "i3Va35": (10), // todo
        "i3Va36": (10), // todo
        "i3Va37": (10), // todo
        "i3Va38": (10), // todo
        "i3Va39": (10), // todo
        "i3Va40": (10), // todo
        "i3Va41": (10), // todo
        "i3Va42": (10), // todo
        "i3Va43": (10), // todo
        "i3Va44": (10), // todo
        "i3Va45": (10), // todo
        "i3Va46": (10), // todo
        "i3Va47": (10), // todo
        "i3Va48": (10), // todo
        "i3Va49": (10), // todo
        "i3Va50": (10) // todo
    };

    data["i1Xb1"] = generateRandomRate(112.78, 0.1);
    data["i2Xb1"] = generateRandomRate(112.78, 0.1);
    data["i3Xb1"] = generateRandomRate(112.78, 0.1);
    for (var i = 2; i <= 50; i++) {
        for (var j = 1; j <= 3; j++) {
            var temp = generateRandomRate(iXb[i], 0.1);
            if (temp > ((50 - i) * 2) || temp < ((50 - i) * 1.5)) {
                temp /= 100;
            }
            data["i" + j + "Xb" + i] = temp;
        }
    }

    return data;
}

function generateXbtDataAfter() {
    var thdu = generateRandom(1.30, 0.2);
    var thdi = generateRandom(5.30, 0.3);
    var iXb = generateIXbData(0.5);

    var data = {
        "time": getNowFormatDate(),
        "u1Xb1": generateRandom(224.05, 4),
        "u1Xb2": 0,
        "u1Xb3": 0,
        "u1Xb4": 0,
        "u1Xb5": 0,
        "u1Xb6": 0,
        "u1Xb7": 0,
        "u1Xb8": 0,
        "u1Xb9": 0,
        "u1Xb10": 0,
        "u1Xb11": 0,
        "u1Xb12": 0,
        "u1Xb13": 0,
        "u1Xb14": 0,
        "u1Xb15": 0,
        "u1Xb16": 0,
        "u1Xb17": 0,
        "u1Xb18": 0,
        "u1Xb19": 0,
        "u1Xb20": 0,
        "u1Xb21": 0,
        "u1Xb22": 0,
        "u1Xb23": 0,
        "u1Xb24": 0,
        "u1Xb25": 0,
        "u1Xb26": 0,
        "u1Xb27": 0,
        "u1Xb28": 0,
        "u1Xb29": 0,
        "u1Xb30": 0,
        "u1Xb31": 0,
        "u1Xb32": 0,
        "u1Xb33": 0,
        "u1Xb34": 0,
        "u1Xb35": 0,
        "u1Xb36": 0,
        "u1Xb37": 0,
        "u1Xb38": 0,
        "u1Xb39": 0,
        "u1Xb40": 0,
        "u1Xb41": 0,
        "u1Xb42": 0,
        "u1Xb43": 0,
        "u1Xb44": 0,
        "u1Xb45": 0,
        "u1Xb46": 0,
        "u1Xb47": 0,
        "u1Xb48": 0,
        "u1Xb49": 0,
        "u1Xb50": 0,
        "u2Xb1": generateRandom(224.42, 4),
        "u2Xb2": 0,
        "u2Xb3": 0,
        "u2Xb4": 0,
        "u2Xb5": 0,
        "u2Xb6": 0,
        "u2Xb7": 0,
        "u2Xb8": 0,
        "u2Xb9": 0,
        "u2Xb10": 0,
        "u2Xb11": 0,
        "u2Xb12": 0,
        "u2Xb13": 0,
        "u2Xb14": 0,
        "u2Xb15": 0,
        "u2Xb16": 0,
        "u2Xb17": 0,
        "u2Xb18": 0,
        "u2Xb19": 0,
        "u2Xb20": 0,
        "u2Xb21": 0,
        "u2Xb22": 0,
        "u2Xb23": 0,
        "u2Xb24": 0,
        "u2Xb25": 0,
        "u2Xb26": 0,
        "u2Xb27": 0,
        "u2Xb28": 0,
        "u2Xb29": 0,
        "u2Xb30": 0,
        "u2Xb31": 0,
        "u2Xb32": 0,
        "u2Xb33": 0,
        "u2Xb34": 0,
        "u2Xb35": 0,
        "u2Xb36": 0,
        "u2Xb37": 0,
        "u2Xb38": 0,
        "u2Xb39": 0,
        "u2Xb40": 0,
        "u2Xb41": 0,
        "u2Xb42": 0,
        "u2Xb43": 0,
        "u2Xb44": 0,
        "u2Xb45": 0,
        "u2Xb46": 0,
        "u2Xb47": 0,
        "u2Xb48": 0,
        "u2Xb49": 0,
        "u2Xb50": 0,
        "u3Xb1": generateRandom(224.93, 4),
        "u3Xb2": 0,
        "u3Xb3": 0,
        "u3Xb4": 0,
        "u3Xb5": 0,
        "u3Xb6": 0,
        "u3Xb7": 0,
        "u3Xb8": 0,
        "u3Xb9": 0,
        "u3Xb10": 0,
        "u3Xb11": 0,
        "u3Xb12": 0,
        "u3Xb13": 0,
        "u3Xb14": 0,
        "u3Xb15": 0,
        "u3Xb16": 0,
        "u3Xb17": 0,
        "u3Xb18": 0,
        "u3Xb19": 0,
        "u3Xb20": 0,
        "u3Xb21": 0,
        "u3Xb22": 0,
        "u3Xb23": 0,
        "u3Xb24": 0,
        "u3Xb25": 0,
        "u3Xb26": 0,
        "u3Xb27": 0,
        "u3Xb28": 0,
        "u3Xb29": 0,
        "u3Xb30": 0,
        "u3Xb31": 0,
        "u3Xb32": 0,
        "u3Xb33": 0,
        "u3Xb34": 0,
        "u3Xb35": 0,
        "u3Xb36": 0,
        "u3Xb37": 0,
        "u3Xb38": 0,
        "u3Xb39": 0,
        "u3Xb40": 0,
        "u3Xb41": 0,
        "u3Xb42": 0,
        "u3Xb43": 0,
        "u3Xb44": 0,
        "u3Xb45": 0,
        "u3Xb46": 0,
        "u3Xb47": 0,
        "u3Xb48": 0,
        "u3Xb49": 0,
        "u3Xb50": 0,
        // iXb is not herr.
        "thdu1": thdu, // todo
        "thdu2": thdu + generateRandomElement(thdu), // todo
        "thdu3": thdu - generateRandomElement(thdu),  // todo
        "thdi1": thdi, // todo
        "thdi2": thdi + generateRandomElement(thdi), // todo
        "thdi3": thdi - generateRandomElement(thdi),  // todo
        "u1Va1": 0.00, // todo
        "u1Va2": (10), // todo
        "u1Va3": (10), // todo
        "u1Va4": (10), // todo
        "u1Va5": (10), // todo
        "u1Va6": (10), // todo
        "u1Va7": (10), // todo
        "u1Va8": (10), // todo
        "u1Va9": (10), // todo
        "u1Va10": (10), // todo
        "u1Va11": (10), // todo
        "u1Va12": (10), // todo
        "u1Va13": (10), // todo
        "u1Va14": (10), // todo
        "u1Va15": (10), // todo
        "u1Va16": (10), // todo
        "u1Va17": (10), // todo
        "u1Va18": (10), // todo
        "u1Va19": (10), // todo
        "u1Va20": (10), // todo
        "u1Va21": (10), // todo
        "u1Va22": (10), // todo
        "u1Va23": (10), // todo
        "u1Va24": (10), // todo
        "u1Va25": (10), // todo
        "u1Va26": (10), // todo
        "u1Va27": (10), // todo
        "u1Va28": (10), // todo
        "u1Va29": (10), // todo
        "u1Va30": (10), // todo
        "u1Va31": (10), // todo
        "u1Va32": (10), // todo
        "u1Va33": (10), // todo
        "u1Va34": (10), // todo
        "u1Va35": (10), // todo
        "u1Va36": (10), // todo
        "u1Va37": (10), // todo
        "u1Va38": (10), // todo
        "u1Va39": (10), // todo
        "u1Va40": (10), // todo
        "u1Va41": (10), // todo
        "u1Va42": (10), // todo
        "u1Va43": (10), // todo
        "u1Va44": (10), // todo
        "u1Va45": (10), // todo
        "u1Va46": (10), // todo
        "u1Va47": (10), // todo
        "u1Va48": (10), // todo
        "u1Va49": (10), // todo
        "u1Va50": (10), // todo
        "u2Va1": 0.00, // todo
        "u2Va2": (10), // todo
        "u2Va3": (10), // todo
        "u2Va4": (10), // todo
        "u2Va5": (10), // todo
        "u2Va6": (10), // todo
        "u2Va7": (10), // todo
        "u2Va8": (10), // todo
        "u2Va9": (10), // todo
        "u2Va10": (10), // todo
        "u2Va11": (10), // todo
        "u2Va12": (10), // todo
        "u2Va13": (10), // todo
        "u2Va14": (10), // todo
        "u2Va15": (10), // todo
        "u2Va16": (10), // todo
        "u2Va17": (10), // todo
        "u2Va18": (10), // todo
        "u2Va19": (10), // todo
        "u2Va20": (10), // todo
        "u2Va21": (10), // todo
        "u2Va22": (10), // todo
        "u2Va23": (10), // todo
        "u2Va24": (10), // todo
        "u2Va25": (10), // todo
        "u2Va26": (10), // todo
        "u2Va27": (10), // todo
        "u2Va28": (10), // todo
        "u2Va29": (10), // todo
        "u2Va30": (10), // todo
        "u2Va31": (10), // todo
        "u2Va32": (10), // todo
        "u2Va33": (10), // todo
        "u2Va34": (10), // todo
        "u2Va35": (10), // todo
        "u2Va36": (10), // todo
        "u2Va37": (10), // todo
        "u2Va38": (10), // todo
        "u2Va39": (10), // todo
        "u2Va40": (10), // todo
        "u2Va41": (10), // todo
        "u2Va42": (10), // todo
        "u2Va43": (10), // todo
        "u2Va44": (10), // todo
        "u2Va45": (10), // todo
        "u2Va46": (10), // todo
        "u2Va47": (10), // todo
        "u2Va48": (10), // todo
        "u2Va49": (10), // todo
        "u2Va50": (10), // todo
        "u3Va1": 0.00, // todo
        "u3Va2": (10), // todo
        "u3Va3": (10), // todo
        "u3Va4": (10), // todo
        "u3Va5": (10), // todo
        "u3Va6": (10), // todo
        "u3Va7": (10), // todo
        "u3Va8": (10), // todo
        "u3Va9": (10), // todo
        "u3Va10": (10), // todo
        "u3Va11": (10), // todo
        "u3Va12": (10), // todo
        "u3Va13": (10), // todo
        "u3Va14": (10), // todo
        "u3Va15": (10), // todo
        "u3Va16": (10), // todo
        "u3Va17": (10), // todo
        "u3Va18": (10), // todo
        "u3Va19": (10), // todo
        "u3Va20": (10), // todo
        "u3Va21": (10), // todo
        "u3Va22": (10), // todo
        "u3Va23": (10), // todo
        "u3Va24": (10), // todo
        "u3Va25": (10), // todo
        "u3Va26": (10), // todo
        "u3Va27": (10), // todo
        "u3Va28": (10), // todo
        "u3Va29": (10), // todo
        "u3Va30": (10), // todo
        "u3Va31": (10), // todo
        "u3Va32": (10), // todo
        "u3Va33": (10), // todo
        "u3Va34": (10), // todo
        "u3Va35": (10), // todo
        "u3Va36": (10), // todo
        "u3Va37": (10), // todo
        "u3Va38": (10), // todo
        "u3Va39": (10), // todo
        "u3Va40": (10), // todo
        "u3Va41": (10), // todo
        "u3Va42": (10), // todo
        "u3Va43": (10), // todo
        "u3Va44": (10), // todo
        "u3Va45": (10), // todo
        "u3Va46": (10), // todo
        "u3Va47": (10), // todo
        "u3Va48": (10), // todo
        "u3Va49": (10), // todo
        "u3Va50": (10), // todo
        "i1Va1": 0.00, // todo
        "i1Va2": (10), // todo
        "i1Va3": (10), // todo
        "i1Va4": (10), // todo
        "i1Va5": (10), // todo
        "i1Va6": (10), // todo
        "i1Va7": (10), // todo
        "i1Va8": (10), // todo
        "i1Va9": (10), // todo
        "i1Va10": (10), // todo
        "i1Va11": (10), // todo
        "i1Va12": (10), // todo
        "i1Va13": (10), // todo
        "i1Va14": (10), // todo
        "i1Va15": (10), // todo
        "i1Va16": (10), // todo
        "i1Va17": (10), // todo
        "i1Va18": (10), // todo
        "i1Va19": (10), // todo
        "i1Va20": (10), // todo
        "i1Va21": (10), // todo
        "i1Va22": (10), // todo
        "i1Va23": (10), // todo
        "i1Va24": (10), // todo
        "i1Va25": (10), // todo
        "i1Va26": (10), // todo
        "i1Va27": (10), // todo
        "i1Va28": (10), // todo
        "i1Va29": (10), // todo
        "i1Va30": (10), // todo
        "i1Va31": (10), // todo
        "i1Va32": (10), // todo
        "i1Va33": (10), // todo
        "i1Va34": (10), // todo
        "i1Va35": (10), // todo
        "i1Va36": (10), // todo
        "i1Va37": (10), // todo
        "i1Va38": (10), // todo
        "i1Va39": (10), // todo
        "i1Va40": (10), // todo
        "i1Va41": (10), // todo
        "i1Va42": (10), // todo
        "i1Va43": (10), // todo
        "i1Va44": (10), // todo
        "i1Va45": (10), // todo
        "i1Va46": (10), // todo
        "i1Va47": (10), // todo
        "i1Va48": (10), // todo
        "i1Va49": (10), // todo
        "i1Va50": (10), // todo
        "i2Va1": 0.00, // todo
        "i2Va2": (10), // todo
        "i2Va3": (10), // todo
        "i2Va4": (10), // todo
        "i2Va5": (10), // todo
        "i2Va6": (10), // todo
        "i2Va7": (10), // todo
        "i2Va8": (10), // todo
        "i2Va9": (10), // todo
        "i2Va10": (10), // todo
        "i2Va11": (10), // todo
        "i2Va12": (10), // todo
        "i2Va13": (10), // todo
        "i2Va14": (10), // todo
        "i2Va15": (10), // todo
        "i2Va16": (10), // todo
        "i2Va17": (10), // todo
        "i2Va18": (10), // todo
        "i2Va19": (10), // todo
        "i2Va20": (10), // todo
        "i2Va21": (10), // todo
        "i2Va22": (10), // todo
        "i2Va23": (10), // todo
        "i2Va24": (10), // todo
        "i2Va25": (10), // todo
        "i2Va26": (10), // todo
        "i2Va27": (10), // todo
        "i2Va28": (10), // todo
        "i2Va29": (10), // todo
        "i2Va30": (10), // todo
        "i2Va31": (10), // todo
        "i2Va32": (10), // todo
        "i2Va33": (10), // todo
        "i2Va34": (10), // todo
        "i2Va35": (10), // todo
        "i2Va36": (10), // todo
        "i2Va37": (10), // todo
        "i2Va38": (10), // todo
        "i2Va39": (10), // todo
        "i2Va40": (10), // todo
        "i2Va41": (10), // todo
        "i2Va42": (10), // todo
        "i2Va43": (10), // todo
        "i2Va44": (10), // todo
        "i2Va45": (10), // todo
        "i2Va46": (10), // todo
        "i2Va47": (10), // todo
        "i2Va48": (10), // todo
        "i2Va49": (10), // todo
        "i2Va50": (10), // todo
        "i3Va1": 0.00, // todo
        "i3Va2": (10), // todo
        "i3Va3": (10), // todo
        "i3Va4": (10), // todo
        "i3Va5": (10), // todo
        "i3Va6": (10), // todo
        "i3Va7": (10), // todo
        "i3Va8": (10), // todo
        "i3Va9": (10), // todo
        "i3Va10": (10), // todo
        "i3Va11": (10), // todo
        "i3Va12": (10), // todo
        "i3Va13": (10), // todo
        "i3Va14": (10), // todo
        "i3Va15": (10), // todo
        "i3Va16": (10), // todo
        "i3Va17": (10), // todo
        "i3Va18": (10), // todo
        "i3Va19": (10), // todo
        "i3Va20": (10), // todo
        "i3Va21": (10), // todo
        "i3Va22": (10), // todo
        "i3Va23": (10), // todo
        "i3Va24": (10), // todo
        "i3Va25": (10), // todo
        "i3Va26": (10), // todo
        "i3Va27": (10), // todo
        "i3Va28": (10), // todo
        "i3Va29": (10), // todo
        "i3Va30": (10), // todo
        "i3Va31": (10), // todo
        "i3Va32": (10), // todo
        "i3Va33": (10), // todo
        "i3Va34": (10), // todo
        "i3Va35": (10), // todo
        "i3Va36": (10), // todo
        "i3Va37": (10), // todo
        "i3Va38": (10), // todo
        "i3Va39": (10), // todo
        "i3Va40": (10), // todo
        "i3Va41": (10), // todo
        "i3Va42": (10), // todo
        "i3Va43": (10), // todo
        "i3Va44": (10), // todo
        "i3Va45": (10), // todo
        "i3Va46": (10), // todo
        "i3Va47": (10), // todo
        "i3Va48": (10), // todo
        "i3Va49": (10), // todo
        "i3Va50": (10) // todo
    };

    data["i1Xb1"] = generateRandomRate(106.82, 0.1);
    data["i2Xb1"] = generateRandomRate(106.82, 0.1);
    data["i3Xb1"] = generateRandomRate(106.82, 0.1);
    for (var i = 2; i <= 50; i++) {
        data["i1Xb" + i] = generateRandomRate(iXb[i], 0.1);
        data["i2Xb" + i] = generateRandomRate(iXb[i], 0.1);
        data["i3Xb" + i] = generateRandomRate(iXb[i], 0.1);
    }

    return data;
}