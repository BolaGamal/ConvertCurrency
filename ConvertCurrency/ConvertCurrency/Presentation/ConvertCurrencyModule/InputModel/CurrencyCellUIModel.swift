//
//  File.swift
//  ConvertCurrency
//
//  Created by Bola Gamal on 09/12/2023.
//

import Foundation

struct CurrencyCellUIModel {
    
    let aED : String?
    let aFN : String?
    let aLL : String?
    let aMD : String?
    let aNG : String?
    let aOA : String?
    let aRS : String?
    let aUD : String?
    let aWG : String?
    let aZN : String?
    let bAM : String?
    let bBD : String?
    let bDT : String?
    let bGN : String?
    let bHD : String?
    let bIF : String?
    let bMD : String?
    let bND : String?
    let bOB : String?
    let bRL : String?
    let bSD : String?
    let bTC : String?
    let bTN : String?
    let bWP : String?
    let bYN : String?
    let bYR : String?
    let bZD : String?
    let cAD : String?
    let cDF : String?
    let cHF : String?
    let cLF : String?
    let cLP : String?
    let cNY : String?
    let cOP : String?
    let cRC : String?
    let cUC : String?
    let cUP : String?
    let cVE : String?
    let cZK : String?
    let dJF : String?
    let dKK : String?
    let dOP : String?
    let dZD : String?
    let eGP : String?
    let eRN : String?
    let eTB : String?
    let eUR : String?
    let fJD : String?
    let fKP : String?
    let gBP : String?
    let gEL : String?
    let gGP : String?
    let gHS : String?
    let gIP : String?
    let gMD : String?
    let gNF : String?
    let gTQ : String?
    let gYD : String?
    let hKD : String?
    let hNL : String?
    let hRK : String?
    let hTG : String?
    let hUF : String?
    let iDR : String?
    let iLS : String?
    let iMP : String?
    let iNR : String?
    let iQD : String?
    let iRR : String?
    let iSK : String?
    let jEP : String?
    let jMD : String?
    let jOD : String?
    let jPY : String?
    let kES : String?
    let kGS : String?
    let kHR : String?
    let kMF : String?
    let kPW : String?
    let kRW : String?
    let kWD : String?
    let kYD : String?
    let kZT : String?
    let lAK : String?
    let lBP : String?
    let lKR : String?
    let lRD : String?
    let lSL : String?
    let lTL : String?
    let lVL : String?
    let lYD : String?
    let mAD : String?
    let mDL : String?
    let mGA : String?
    let mKD : String?
    let mMK : String?
    let mNT : String?
    let mOP : String?
    let mRU : String?
    let mUR : String?
    let mVR : String?
    let mWK : String?
    let mXN : String?
    let mYR : String?
    let mZN : String?
    let nAD : String?
    let nGN : String?
    let nIO : String?
    let nOK : String?
    let nPR : String?
    let nZD : String?
    let oMR : String?
    let pAB : String?
    let pEN : String?
    let pGK : String?
    let pHP : String?
    let pKR : String?
    let pLN : String?
    let pYG : String?
    let qAR : String?
    let rON : String?
    let rSD : String?
    let rUB : String?
    let rWF : String?
    let sAR : String?
    let sBD : String?
    let sCR : String?
    let sDG : String?
    let sEK : String?
    let sGD : String?
    let sHP : String?
    let sLE : String?
    let sLL : String?
    let sOS : String?
    let sRD : String?
    let sTD : String?
    let sVC : String?
    let sYP : String?
    let sZL : String?
    let tHB : String?
    let tJS : String?
    let tMT : String?
    let tND : String?
    let tOP : String?
    let tRY : String?
    let tTD : String?
    let tWD : String?
    let tZS : String?
    let uAH : String?
    let uGX : String?
    let uSD : String?
    let uYU : String?
    let uZS : String?
    let vEF : String?
    let vES : String?
    let vND : String?
    let vUV : String?
    let wST : String?
    let xAF : String?
    let xAG : String?
    let xAU : String?
    let xCD : String?
    let xDR : String?
    let xOF : String?
    let xPF : String?
    let yER : String?
    let zAR : String?
    let zMK : String?
    let zMW : String?
    let zWL : String?
    
    init(model: Symbols) {
        self.aED = model.aED
        self.aFN = model.aFN
        self.aLL = model.aLL
        self.aMD = model.aMD
        self.aNG = model.aNG
        self.aOA = model.aOA
        self.aRS = model.aRS
        self.aUD = model.aUD
        self.aWG = model.aWG
        self.aZN = model.aZN
        self.bAM = model.bAM
        self.bBD = model.bBD
        self.bDT = model.bDT
        self.bGN = model.bGN
        self.bHD = model.bHD
        self.bIF = model.bIF
        self.bMD = model.bMD
        self.bND = model.bND
        self.bOB = model.bOB
        self.bRL = model.bRL
        self.bSD = model.bSD
        self.bTC = model.bTC
        self.bTN = model.bTN
        self.bWP = model.bWP
        self.bYN = model.bYN
        self.bYR = model.bYR
        self.bZD = model.bZD
        self.cAD = model.cAD
        self.cDF = model.cDF
        self.cHF = model.cHF
        self.cLF = model.cLF
        self.cLP = model.cLP
        self.cNY = model.cNY
        self.cOP = model.cOP
        self.cRC = model.cRC
        self.cUC = model.cUC
        self.cUP = model.cUP
        self.cVE = model.cVE
        self.cZK = model.cZK
        self.dJF = model.dJF
        self.dKK = model.dKK
        self.dOP = model.dOP
        self.dZD = model.dZD
        self.eGP = model.eGP
        self.eRN = model.eRN
        self.eTB = model.eTB
        self.eUR = model.eUR
        self.fJD = model.fJD
        self.fKP = model.fKP
        self.gBP = model.gBP
        self.gEL = model.gEL
        self.gGP = model.gGP
        self.gHS = model.gHS
        self.gIP = model.gIP
        self.gMD = model.gMD
        self.gNF = model.gNF
        self.gTQ = model.gTQ
        self.gYD = model.gYD
        self.hKD = model.hKD
        self.hNL = model.hNL
        self.hRK = model.hRK
        self.hTG = model.hTG
        self.hUF = model.hUF
        self.iDR = model.iDR
        self.iLS = model.iLS
        self.iMP = model.iMP
        self.iNR = model.iNR
        self.iQD = model.iQD
        self.iRR = model.iRR
        self.iSK = model.iSK
        self.jEP = model.jEP
        self.jMD = model.jMD
        self.jOD = model.jOD
        self.jPY = model.jPY
        self.kES = model.kES
        self.kGS = model.kGS
        self.kHR = model.kHR
        self.kMF = model.kMF
        self.kPW = model.kPW
        self.kRW = model.kRW
        self.kWD = model.kWD
        self.kYD = model.kYD
        self.kZT = model.kZT
        self.lAK = model.lAK
        self.lBP = model.lBP
        self.lKR = model.lKR
        self.lRD = model.lRD
        self.lSL = model.lSL
        self.lTL = model.lTL
        self.lVL = model.lVL
        self.lYD = model.lYD
        self.mAD = model.mAD
        self.mDL = model.mDL
        self.mGA = model.mGA
        self.mKD = model.mKD
        self.mMK = model.mMK
        self.mNT = model.mNT
        self.mOP = model.mOP
        self.mRU = model.mRU
        self.mUR = model.mUR
        self.mVR = model.mVR
        self.mWK = model.mWK
        self.mXN = model.mXN
        self.mYR = model.mYR
        self.mZN = model.mZN
        self.nAD = model.nAD
        self.nGN = model.nGN
        self.nIO = model.nIO
        self.nOK = model.nOK
        self.nPR = model.nPR
        self.nZD = model.nZD
        self.oMR = model.oMR
        self.pAB = model.pAB
        self.pEN = model.pEN
        self.pGK = model.pGK
        self.pHP = model.pHP
        self.pKR = model.pKR
        self.pLN = model.pLN
        self.pYG = model.pYG
        self.qAR = model.qAR
        self.rON = model.rON
        self.rSD = model.rSD
        self.rUB = model.rUB
        self.rWF = model.rWF
        self.sAR = model.sAR
        self.sBD = model.sBD
        self.sCR = model.sCR
        self.sDG = model.sDG
        self.sEK = model.sEK
        self.sGD = model.sGD
        self.sHP = model.sHP
        self.sLE = model.sLE
        self.sLL = model.sLL
        self.sOS = model.sOS
        self.sRD = model.sRD
        self.sTD = model.sTD
        self.sVC = model.sVC
        self.sYP = model.sYP
        self.sZL = model.sZL
        self.tHB = model.tHB
        self.tJS = model.tJS
        self.tMT = model.tMT
        self.tND = model.tND
        self.tOP = model.tOP
        self.tRY = model.tRY
        self.tTD = model.tTD
        self.tWD = model.tWD
        self.tZS = model.tZS
        self.uAH = model.uAH
        self.uGX = model.uGX
        self.uSD = model.uSD
        self.uYU = model.uYU
        self.uZS = model.uZS
        self.vEF = model.vEF
        self.vES = model.vES
        self.vND = model.vND
        self.vUV = model.vUV
        self.wST = model.wST
        self.xAF = model.xAF
        self.xAG = model.xAG
        self.xAU = model.xAU
        self.xCD = model.xCD
        self.xDR = model.xDR
        self.xOF = model.xOF
        self.xPF = model.xPF
        self.yER = model.yER
        self.zAR = model.zAR
        self.zMK = model.zMK
        self.zMW = model.zMW
        self.zWL = model.zWL
    }
    
}

