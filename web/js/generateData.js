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

function generateQstRecord() {
    var data = {
        "allHZ": [
            {
                "time": getNowFormatDate(),
                "hz": generateRandom(50.01, 0.1)
            }
        ],
        "allRMS": [
            {
                "u1": generateRandom(224.09, 4),
                "u2": generateRandom(224.45, 4),
                "u3": generateRandom(224.99, 4),
                "i1": generateRandom(104.53, 4),
                "i2": generateRandom(109.77, 4),
                "i3": generateRandom(111.48, 4)
            }
        ],
        "allTHD": [
            {
                "u1": generateRandom(224.09, 4), // todo
                "u2": generateRandom(224.45, 4), // todo
                "u3": generateRandom(224.99, 4), // todo
                "i1": generateRandom(104.53, 4), // todo
                "i2": generateRandom(109.77, 4), // todo
                "i3": generateRandom(111.48, 4) // todo
            }
        ],
        "allW": [
            {
                "p1": generateRandom(22.8, 2),
                "p2": generateRandom(23.98, 2),
                "p3": generateRandom(24.44, 2)
            }
        ],
        "allVA": [
            {
                "s1": generateRandom(23.42, 2),
                "s2": generateRandom(24.64, 2),
                "s3": generateRandom(25.08, 2)
            }
        ],
        "allVAR": [
            {
                "q1": generateRandom(5.15, 1),
                "q2": generateRandom(5.47, 1),
                "q3": generateRandom(5.46, 1)
            }
        ],
        "allPF": [
            {
                "pf1": generateRandom(0.97, 0.01),
                "pf2": generateRandom(0.97, 0.01),
                "pf3": generateRandom(0.97, 0.01)
            }
        ],
        "allPST": [
            {
                "pstU1": generateRandom(3.95, 0.2),
                "pstU2": generateRandom(4.37, 0.2),
                "pstU3": generateRandom(5.26, 0.2)
            }
        ],
        "allPLT": [
            {
                "pltU1": generateRandom(3.76, 0.2),
                "pltU2": generateRandom(4.16, 0.2),
                "pltU3": generateRandom(5.21, 0.2)
            }
        ],
        "allUNB": [
            {
                "uunb": generateRandom(0.14, 0.1),
            }
        ]
    };

    return data;
}

function generateParmData() {
    var data = {
        "u1": generateRandom(224.09, 4), // todo
        "u2": generateRandom(224.45, 4), // todo
        "u3": generateRandom(224.99, 4), // todo
        "u4": 10, // todo
        "i1": generateRandom(104.53, 4), // todo
        "i2": generateRandom(109.77, 4), // todo
        "i3": generateRandom(111.48, 4), // todo
        "i4": 10, // todo
        "p1": generateRandom(22.8, 2), // todo
        "p2": generateRandom(23.98, 2), // todo
        "p3": generateRandom(24.44, 2), // todo
        "pf1": generateRandom(0.97, 0.01), // todo
        "pf2": generateRandom(0.97, 0.01), // todo
        "pf3": generateRandom(0.97, 0.01), // todo
        "q1": generateRandom(5.15, 1), // todo
        "q2": generateRandom(5.47, 1), // todo
        "q3": generateRandom(5.46, 1), // todo
        "s1": generateRandom(23.42, 2), // todo
        "s2": generateRandom(24.64, 2), // todo
        "s3": generateRandom(25.08, 2), // todo
        "hz": generateRandom(50.01, 0.1), // todo
        "pstU1": generateRandom(3.95, 0.2), // todo
        "pstU2": generateRandom(4.37, 0.2), // todo
        "pstU3": generateRandom(5.26, 0.2), // todo
        "pltU1": generateRandom(3.76, 0.2), // todo
        "pltU2": generateRandom(4.16, 0.2), // todo
        "pltU3": generateRandom(5.21, 0.2) // todo
    };

    return data;
}

function generateSxdytData() {
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

function generateIXbData() {
    var data = [
        0,
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3),
        generateRandom(0.50, 0.3)
    ];
    return data;
}

function generateXbtData() {
    var iXb = generateIXbData();
    var data = {
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
        "thdu1": generateRandom(1.23, 0.1),
        "thdu2": generateRandom(1.30, 0.1),
        "thdu3": generateRandom(1.54, 0.1),
        "thdi1": generateRandom(5.48, 0.3),
        "thdi2": generateRandom(5.30, 0.3),
        "thdi3": generateRandom(5.28, 0.3),
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

    for (var i = 2; i <= 50; i++) {
        data["i1Xb" + i] = generateRandomRate(iXb[i], 0.1);
        data["i2Xb" + i] = generateRandomRate(iXb[i], 0.1);
        data["i3Xb" + i] = generateRandomRate(iXb[i], 0.1);
    }

    return data;
}