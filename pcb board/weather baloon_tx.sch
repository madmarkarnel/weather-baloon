<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Teensy_3_and_LC_Series_Boards_v1.4">
<packages>
<package name="TEENSY_3.0_DIL_MAD">
<pad name="GND" x="-7.62" y="16.51" drill="0.9652" shape="long"/>
<pad name="0" x="-7.62" y="13.97" drill="0.9652" shape="long"/>
<pad name="1" x="-7.62" y="11.43" drill="0.9652" shape="long"/>
<pad name="2" x="-7.62" y="8.89" drill="0.9652" shape="long"/>
<pad name="3" x="-7.62" y="6.35" drill="0.9652" shape="long"/>
<pad name="4" x="-7.62" y="3.81" drill="0.9652" shape="long"/>
<pad name="5" x="-7.62" y="1.27" drill="0.9652" shape="long"/>
<pad name="6" x="-7.62" y="-1.27" drill="0.9652" shape="long"/>
<pad name="7" x="-7.62" y="-3.81" drill="0.9652" shape="long"/>
<pad name="8" x="-7.62" y="-6.35" drill="0.9652" shape="long"/>
<pad name="9" x="-7.62" y="-8.89" drill="0.9652" shape="long"/>
<pad name="10" x="-7.62" y="-11.43" drill="0.9652" shape="long"/>
<pad name="11" x="-7.62" y="-13.97" drill="0.9652" shape="long"/>
<pad name="12" x="-7.62" y="-16.51" drill="0.9652" shape="long"/>
<pad name="13" x="7.62" y="-16.51" drill="0.9652" shape="long"/>
<pad name="14/A0" x="7.62" y="-13.97" drill="0.9652" shape="long"/>
<pad name="15/A1" x="7.62" y="-11.43" drill="0.9652" shape="long"/>
<pad name="16/A2" x="7.62" y="-8.89" drill="0.9652" shape="long"/>
<pad name="17/A3" x="7.62" y="-6.35" drill="0.9652" shape="long"/>
<pad name="18/A4" x="7.62" y="-3.81" drill="0.9652" shape="long"/>
<pad name="19/A5" x="7.62" y="-1.27" drill="0.9652" shape="long"/>
<pad name="20/A6" x="7.62" y="1.27" drill="0.9652" shape="long"/>
<pad name="21/A7" x="7.62" y="3.81" drill="0.9652" shape="long"/>
<pad name="22/A8" x="7.62" y="6.35" drill="0.9652" shape="long"/>
<pad name="23/A9" x="7.62" y="8.89" drill="0.9652" shape="long"/>
<pad name="3.3V" x="7.62" y="11.43" drill="0.9652" shape="long"/>
<pad name="AGND" x="7.62" y="13.97" drill="0.9652" shape="long"/>
<pad name="VIN" x="7.62" y="16.51" drill="0.9652" shape="long"/>
<wire x1="-8.89" y1="17.78" x2="8.89" y2="17.78" width="0.127" layer="51"/>
<wire x1="8.89" y1="17.78" x2="8.89" y2="-17.78" width="0.127" layer="51"/>
<wire x1="8.89" y1="-17.78" x2="-8.89" y2="-17.78" width="0.127" layer="51"/>
<wire x1="-8.89" y1="-17.78" x2="-8.89" y2="17.78" width="0.127" layer="51"/>
<wire x1="-1.27" y1="16.51" x2="1.27" y2="16.51" width="0.2032" layer="21"/>
<wire x1="1.27" y1="16.51" x2="1.27" y2="17.78" width="0.2032" layer="21"/>
<wire x1="1.27" y1="17.78" x2="8.89" y2="17.78" width="0.2032" layer="21"/>
<wire x1="8.89" y1="17.78" x2="8.89" y2="-17.78" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-17.78" x2="-8.89" y2="-17.78" width="0.2032" layer="21"/>
<wire x1="-8.89" y1="-17.78" x2="-8.89" y2="17.78" width="0.2032" layer="21"/>
<wire x1="-8.89" y1="17.78" x2="-1.27" y2="17.78" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="17.78" x2="-1.27" y2="16.51" width="0.2032" layer="21"/>
<text x="-3.81" y="13.97" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-3.81" y="-13.97" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="TEENSY_3.0_DIL_MAD">
<wire x1="-15.24" y1="-38.1" x2="20.32" y2="-38.1" width="0.254" layer="94"/>
<wire x1="20.32" y1="-38.1" x2="20.32" y2="30.48" width="0.254" layer="94"/>
<wire x1="20.32" y1="30.48" x2="-15.24" y2="30.48" width="0.254" layer="94"/>
<wire x1="-15.24" y1="30.48" x2="-15.24" y2="-38.1" width="0.254" layer="94"/>
<pin name="12/MISO" x="-20.32" y="-5.08" visible="pin" length="middle"/>
<pin name="11/MOSI" x="-20.32" y="-2.54" visible="pin" length="middle"/>
<pin name="10/TX2/PWM" x="-20.32" y="0" visible="pin" length="middle"/>
<pin name="9/RX2/PWM" x="-20.32" y="2.54" visible="pin" length="middle"/>
<pin name="8/TX3" x="-20.32" y="5.08" visible="pin" length="middle"/>
<pin name="7/RX3" x="-20.32" y="7.62" visible="pin" length="middle"/>
<pin name="6/PWM" x="-20.32" y="10.16" visible="pin" length="middle"/>
<pin name="5/PWM" x="-20.32" y="12.7" visible="pin" length="middle"/>
<pin name="4/PWM" x="-20.32" y="15.24" visible="pin" length="middle"/>
<pin name="3/PWM" x="-20.32" y="17.78" visible="pin" length="middle"/>
<pin name="2" x="-20.32" y="20.32" visible="pin" length="middle"/>
<pin name="1/TX1/T" x="-20.32" y="22.86" visible="pin" length="middle"/>
<pin name="0/RX1/T" x="-20.32" y="25.4" visible="pin" length="middle"/>
<pin name="GND" x="25.4" y="17.78" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="VIN" x="25.4" y="25.4" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="AGND" x="25.4" y="2.54" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="3.3V" x="25.4" y="22.86" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="23/A9/T/PWM" x="-20.32" y="-33.02" visible="pin" length="middle"/>
<pin name="22/A8/T/PWM" x="-20.32" y="-30.48" visible="pin" length="middle"/>
<pin name="21/A7/PWM" x="-20.32" y="-27.94" visible="pin" length="middle"/>
<pin name="20/A6/PWM" x="-20.32" y="-25.4" visible="pin" length="middle"/>
<pin name="19/A5/T/SCL" x="-20.32" y="-22.86" visible="pin" length="middle"/>
<pin name="18/A4/T/SDA" x="-20.32" y="-20.32" visible="pin" length="middle"/>
<pin name="17/A3/T" x="-20.32" y="-17.78" visible="pin" length="middle"/>
<pin name="16/A2/T" x="-20.32" y="-15.24" visible="pin" length="middle"/>
<pin name="15/A1/T" x="-20.32" y="-12.7" visible="pin" length="middle"/>
<pin name="14/A0" x="-20.32" y="-10.16" visible="pin" length="middle"/>
<pin name="13/SCK/LED" x="-20.32" y="-7.62" visible="pin" length="middle"/>
<text x="-3.048" y="31.75" size="1.27" layer="95" font="vector" ratio="15">&gt;NAME</text>
<text x="-0.254" y="-40.64" size="1.27" layer="96" font="vector" ratio="15">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TEENSY_3.0_DIL_MAD">
<gates>
<gate name="G$1" symbol="TEENSY_3.0_DIL_MAD" x="-2.54" y="2.54"/>
</gates>
<devices>
<device name="" package="TEENSY_3.0_DIL_MAD">
<connects>
<connect gate="G$1" pin="0/RX1/T" pad="0"/>
<connect gate="G$1" pin="1/TX1/T" pad="1"/>
<connect gate="G$1" pin="10/TX2/PWM" pad="10"/>
<connect gate="G$1" pin="11/MOSI" pad="11"/>
<connect gate="G$1" pin="12/MISO" pad="12"/>
<connect gate="G$1" pin="13/SCK/LED" pad="13"/>
<connect gate="G$1" pin="14/A0" pad="14/A0"/>
<connect gate="G$1" pin="15/A1/T" pad="15/A1"/>
<connect gate="G$1" pin="16/A2/T" pad="16/A2"/>
<connect gate="G$1" pin="17/A3/T" pad="17/A3"/>
<connect gate="G$1" pin="18/A4/T/SDA" pad="18/A4"/>
<connect gate="G$1" pin="19/A5/T/SCL" pad="19/A5"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20/A6/PWM" pad="20/A6"/>
<connect gate="G$1" pin="21/A7/PWM" pad="21/A7"/>
<connect gate="G$1" pin="22/A8/T/PWM" pad="22/A8"/>
<connect gate="G$1" pin="23/A9/T/PWM" pad="23/A9"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="3/PWM" pad="3"/>
<connect gate="G$1" pin="4/PWM" pad="4"/>
<connect gate="G$1" pin="5/PWM" pad="5"/>
<connect gate="G$1" pin="6/PWM" pad="6"/>
<connect gate="G$1" pin="7/RX3" pad="7"/>
<connect gate="G$1" pin="8/TX3" pad="8"/>
<connect gate="G$1" pin="9/RX2/PWM" pad="9"/>
<connect gate="G$1" pin="AGND" pad="AGND"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ina219_mad">
<packages>
<package name="INA219">
<pad name="VCC" x="-5.08" y="-7.62" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="GND" x="-2.54" y="-7.62" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="SCL" x="0" y="-7.62" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="SDA" x="2.54" y="-7.62" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="VIN-" x="5.08" y="-7.62" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="VIN+" x="7.62" y="-7.62" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<hole x="11.049" y="-8.001" drill="1.524"/>
<hole x="-9.144" y="-7.874" drill="1.524"/>
<hole x="-9.271" y="9.271" drill="1.524"/>
<hole x="11.049" y="9.271" drill="1.524"/>
<wire x1="-11.811" y1="-7.874" x2="-11.811" y2="9.271" width="0.127" layer="21"/>
<wire x1="-9.271" y1="11.811" x2="12.319" y2="11.811" width="0.127" layer="21"/>
<wire x1="14.859" y1="-7.62" x2="14.859" y2="9.271" width="0.127" layer="21"/>
<wire x1="12.319" y1="11.811" x2="14.859" y2="9.271" width="0.127" layer="21" curve="-90"/>
<wire x1="-11.811" y1="9.271" x2="-9.271" y2="11.811" width="0.127" layer="21" curve="-90"/>
<wire x1="-9.144" y1="-10.541" x2="-11.811" y2="-7.874" width="0.127" layer="21" curve="-90"/>
<wire x1="-9.144" y1="-10.541" x2="11.938" y2="-10.541" width="0.127" layer="21"/>
<wire x1="11.938" y1="-10.541" x2="14.859" y2="-7.62" width="0.127" layer="21" curve="90"/>
</package>
</packages>
<symbols>
<symbol name="INA219">
<pin name="VCC" x="-17.78" y="5.08" length="middle"/>
<pin name="GND" x="-17.78" y="0" length="middle"/>
<pin name="VIN-" x="-17.78" y="-5.08" length="middle"/>
<pin name="SCL" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="SDA" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="VIN+" x="17.78" y="-5.08" length="middle" rot="R180"/>
<wire x1="-12.7" y1="10.16" x2="-12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="12.7" y2="10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="10.16" x2="-12.7" y2="10.16" width="0.254" layer="94"/>
<text x="-5.08" y="-12.7" size="1.778" layer="94">ina219</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="INA219_MAD">
<gates>
<gate name="G$1" symbol="INA219" x="0" y="0"/>
</gates>
<devices>
<device name="" package="INA219">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
<connect gate="G$1" pin="VIN+" pad="VIN+"/>
<connect gate="G$1" pin="VIN-" pad="VIN-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="rfm95_mad">
<packages>
<package name="RFM96">
<description>rfm96</description>
<pad name="VIN" x="-10.16" y="-12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="GND" x="-7.62" y="-12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="EN" x="-5.08" y="-12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="G0" x="-2.54" y="-12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="SCK" x="0" y="-12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="MISO" x="2.54" y="-12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="MOSI" x="5.08" y="-12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="CS" x="7.62" y="-12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="RST" x="10.16" y="-12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="G1" x="-10.16" y="12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="G2" x="-7.62" y="12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="G3" x="-5.08" y="12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="G4" x="-2.54" y="12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="G5" x="0" y="12.7" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<wire x1="-11.43" y1="-15.24" x2="11.43" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-12.7" y1="-13.97" x2="-12.7" y2="13.97" width="0.127" layer="21"/>
<wire x1="12.7" y1="-13.97" x2="12.7" y2="13.97" width="0.127" layer="21"/>
<wire x1="-11.43" y1="15.24" x2="11.43" y2="15.24" width="0.127" layer="21"/>
<wire x1="-11.43" y1="15.24" x2="-12.7" y2="13.97" width="0.127" layer="21" curve="90"/>
<wire x1="11.43" y1="15.24" x2="12.7" y2="13.97" width="0.127" layer="21" curve="-90"/>
<wire x1="11.43" y1="-15.24" x2="12.7" y2="-13.97" width="0.127" layer="21" curve="90"/>
<wire x1="-11.43" y1="-15.24" x2="-12.7" y2="-13.97" width="0.127" layer="21" curve="-90"/>
</package>
</packages>
<symbols>
<symbol name="RFM96">
<description>rfm96</description>
<pin name="G1" x="-30.48" y="12.7" length="middle"/>
<pin name="G2" x="-30.48" y="5.08" length="middle"/>
<pin name="G3" x="-30.48" y="-2.54" length="middle"/>
<pin name="G4" x="-30.48" y="-10.16" length="middle"/>
<pin name="EN" x="33.02" y="12.7" length="middle" rot="R180"/>
<pin name="G0" x="33.02" y="5.08" length="middle" rot="R180"/>
<pin name="SCK" x="33.02" y="-2.54" length="middle" rot="R180"/>
<pin name="MISO" x="33.02" y="-10.16" length="middle" rot="R180"/>
<pin name="MOSI" x="33.02" y="-17.78" length="middle" rot="R180"/>
<pin name="CS" x="33.02" y="-25.4" length="middle" rot="R180"/>
<pin name="RST" x="33.02" y="-33.02" length="middle" rot="R180"/>
<wire x1="-25.4" y1="20.32" x2="-25.4" y2="-40.64" width="0.254" layer="94"/>
<wire x1="-25.4" y1="-40.64" x2="27.94" y2="-40.64" width="0.254" layer="94"/>
<wire x1="27.94" y1="-40.64" x2="27.94" y2="20.32" width="0.254" layer="94"/>
<wire x1="27.94" y1="20.32" x2="-25.4" y2="20.32" width="0.254" layer="94"/>
<pin name="GND" x="-30.48" y="-33.02" length="middle"/>
<pin name="VIN" x="-30.48" y="-25.4" length="middle"/>
<pin name="G5" x="-30.48" y="-17.78" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RFM96_MAD" uservalue="yes">
<description>rfm96_mad</description>
<gates>
<gate name="G$1" symbol="RFM96" x="0" y="10.16"/>
</gates>
<devices>
<device name="" package="RFM96">
<connects>
<connect gate="G$1" pin="CS" pad="CS"/>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="G0" pad="G0"/>
<connect gate="G$1" pin="G1" pad="G1"/>
<connect gate="G$1" pin="G2" pad="G2"/>
<connect gate="G$1" pin="G3" pad="G3"/>
<connect gate="G$1" pin="G4" pad="G4"/>
<connect gate="G$1" pin="G5" pad="G5"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="MISO" pad="MISO"/>
<connect gate="G$1" pin="MOSI" pad="MOSI"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="SCK" pad="SCK"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="dc-dc_mad">
<packages>
<package name="DC-DC_BUCK">
<pad name="-IN" x="-6.858" y="-8.89" drill="1" shape="long" rot="R90"/>
<pad name="-IN1" x="-4.318" y="-8.89" drill="1" shape="long" rot="R90"/>
<pad name="+IN1" x="4.572" y="-8.89" drill="1" shape="long" rot="R90"/>
<pad name="+OUT1" x="4.572" y="10.16" drill="1" shape="long" rot="R270"/>
<pad name="-OUT1" x="-4.318" y="10.16" drill="1" shape="long" rot="R270"/>
<pad name="-OUT" x="-6.858" y="10.16" drill="1" shape="long" rot="R270"/>
<pad name="+OUT" x="7.112" y="10.16" drill="1" diameter="2.54" shape="square"/>
<pad name="+IN" x="7.112" y="-8.89" drill="1" diameter="2.54" shape="square"/>
<wire x1="8.89" y1="11.938" x2="-8.128" y2="11.938" width="0.127" layer="21"/>
<wire x1="-8.128" y1="11.938" x2="-8.128" y2="-10.922" width="0.127" layer="21"/>
<wire x1="-8.128" y1="-10.922" x2="8.89" y2="-10.922" width="0.127" layer="21"/>
<wire x1="8.89" y1="-10.922" x2="8.89" y2="11.938" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="DC-DC_BUCK">
<pin name="-IN" x="-17.78" y="5.08" length="middle"/>
<pin name="-IN1" x="-17.78" y="2.54" length="middle"/>
<pin name="+IN1" x="-17.78" y="-2.54" length="middle"/>
<pin name="+IN" x="-17.78" y="-5.08" length="middle"/>
<pin name="-OUT" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="-OUT1" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="+OUT1" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="+OUT" x="17.78" y="-5.08" length="middle" rot="R180"/>
<wire x1="-12.7" y1="7.62" x2="-12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-7.62" x2="12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="12.7" y2="7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="7.62" x2="-12.7" y2="7.62" width="0.254" layer="94"/>
<text x="-5.08" y="-10.16" size="1.27" layer="94">dc-dc buck</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DC-DC_BUCK_MAD">
<gates>
<gate name="G$1" symbol="DC-DC_BUCK" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DC-DC_BUCK">
<connects>
<connect gate="G$1" pin="+IN" pad="+IN"/>
<connect gate="G$1" pin="+IN1" pad="+IN1"/>
<connect gate="G$1" pin="+OUT" pad="+OUT"/>
<connect gate="G$1" pin="+OUT1" pad="+OUT1"/>
<connect gate="G$1" pin="-IN" pad="-IN"/>
<connect gate="G$1" pin="-IN1" pad="-IN1"/>
<connect gate="G$1" pin="-OUT" pad="-OUT"/>
<connect gate="G$1" pin="-OUT1" pad="-OUT1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="gps_mad">
<packages>
<package name="GPS">
<pad name="3.3V" x="-10.16" y="-15.24" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="EN" x="-7.62" y="-15.24" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="VBAT" x="-5.08" y="-15.24" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="FIX" x="-2.54" y="-15.24" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="TX" x="0" y="-15.24" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="RX" x="2.54" y="-15.24" drill="1" diameter="1.4224" shape="long" rot="R270"/>
<pad name="GND" x="5.08" y="-15.24" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="VIN" x="7.62" y="-15.24" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<pad name="PPS" x="10.16" y="-15.24" drill="1" diameter="1.4224" shape="long" rot="R90"/>
<wire x1="-9.652" y1="16.764" x2="10.668" y2="16.764" width="0.127" layer="21"/>
<hole x="10.16" y="14.478" drill="2.286"/>
<hole x="-10.16" y="14.478" drill="2.286"/>
<wire x1="10.668" y1="16.764" x2="10.922" y2="16.764" width="0.127" layer="45"/>
<wire x1="10.922" y1="16.764" x2="12.7" y2="14.986" width="0.127" layer="45" curve="-90"/>
<wire x1="-12.7" y1="-15.748" x2="-12.7" y2="14.732" width="0.127" layer="45"/>
<wire x1="-9.652" y1="16.764" x2="-10.668" y2="16.764" width="0.127" layer="45"/>
<wire x1="-10.668" y1="16.764" x2="-12.7" y2="14.732" width="0.127" layer="45" curve="90"/>
<wire x1="10.922" y1="-17.272" x2="-11.176" y2="-17.272" width="0.127" layer="45"/>
<wire x1="-11.176" y1="-17.272" x2="-12.7" y2="-15.748" width="0.127" layer="45" curve="-90"/>
<wire x1="12.7" y1="14.986" x2="12.7" y2="-15.494" width="0.127" layer="45"/>
<wire x1="12.7" y1="-15.494" x2="10.922" y2="-17.272" width="0.127" layer="45" curve="-90"/>
<wire x1="-11.176" y1="-17.272" x2="11.176" y2="-17.272" width="0.1524" layer="21"/>
<wire x1="11.176" y1="-17.272" x2="12.7" y2="-15.748" width="0.1524" layer="21" curve="90"/>
<wire x1="12.7" y1="-15.748" x2="12.7" y2="15.24" width="0.1524" layer="21"/>
<wire x1="10.668" y1="16.764" x2="-10.668" y2="16.764" width="0.1524" layer="21"/>
<wire x1="-10.668" y1="16.764" x2="-12.7" y2="14.732" width="0.1524" layer="21" curve="90"/>
<wire x1="-12.7" y1="14.732" x2="-12.7" y2="-15.748" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-15.748" x2="-11.176" y2="-17.272" width="0.1524" layer="21" curve="90"/>
<wire x1="10.668" y1="16.764" x2="11.176" y2="16.764" width="0.1524" layer="21"/>
<wire x1="11.176" y1="16.764" x2="12.7" y2="15.24" width="0.1524" layer="21" curve="-90"/>
</package>
</packages>
<symbols>
<symbol name="GPS">
<description>gps v3</description>
<pin name="3.3V" x="-17.78" y="12.7" length="middle"/>
<pin name="EN" x="-17.78" y="7.62" length="middle"/>
<pin name="VBAT" x="-17.78" y="2.54" length="middle"/>
<pin name="FIX" x="-17.78" y="-2.54" length="middle"/>
<pin name="GND" x="-17.78" y="-7.62" length="middle"/>
<pin name="TX" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="RX" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="PPS" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="VIN" x="17.78" y="-7.62" length="middle" rot="R180"/>
<wire x1="-12.7" y1="15.24" x2="-12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="12.7" y2="15.24" width="0.254" layer="94"/>
<wire x1="12.7" y1="15.24" x2="-12.7" y2="15.24" width="0.254" layer="94"/>
<text x="-2.54" y="-12.7" size="1.778" layer="94">gps</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="GPS_MAD">
<gates>
<gate name="G$1" symbol="GPS" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="GPS">
<connects>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="FIX" pad="FIX"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="PPS" pad="PPS"/>
<connect gate="G$1" pin="RX" pad="RX"/>
<connect gate="G$1" pin="TX" pad="TX"/>
<connect gate="G$1" pin="VBAT" pad="VBAT"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="switch" urn="urn:adsk.eagle:library:380">
<description>&lt;b&gt;Switches&lt;/b&gt;&lt;p&gt;
Marquardt, Siemens, C&amp;K, ITT, and others&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="320-916" urn="urn:adsk.eagle:footprint:27534/1" library_version="1">
<description>&lt;b&gt;TOGGLE SWITCH&lt;/b&gt;&lt;p&gt;
distributor RS Components</description>
<wire x1="-2.8702" y1="6.6802" x2="-3.5052" y2="6.0452" width="0.1524" layer="21"/>
<wire x1="-2.8702" y1="6.6802" x2="2.8702" y2="6.6802" width="0.1524" layer="21"/>
<wire x1="3.5052" y1="6.0452" x2="2.8702" y2="6.6802" width="0.1524" layer="21"/>
<wire x1="2.8702" y1="-6.6802" x2="3.5052" y2="-6.0452" width="0.1524" layer="21"/>
<wire x1="2.8702" y1="-6.6802" x2="-2.8702" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="-6.0452" x2="-2.8702" y2="-6.6802" width="0.1524" layer="21"/>
<wire x1="4.318" y1="2.286" x2="4.318" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="2.286" x2="-4.318" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="1.905" y1="-3.175" x2="2.54" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="1.905" y1="-3.175" x2="-1.905" y2="-3.175" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="-1.905" y2="-3.175" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="1.27" x2="2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="3.5052" y1="-6.0452" x2="3.5052" y2="-2.8702" width="0.1524" layer="21"/>
<wire x1="3.5052" y1="6.0452" x2="3.5052" y2="2.8702" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="2.8702" x2="-3.5052" y2="6.0452" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="-6.0452" x2="-3.5052" y2="-2.8194" width="0.1524" layer="21"/>
<wire x1="-1.6002" y1="1.27" x2="-2.54" y2="-1.905" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="51" curve="-270"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.1524" layer="51" curve="-233.130102"/>
<wire x1="-1.6002" y1="1.27" x2="1.6002" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="-2.286" x2="-3.5052" y2="-2.8194" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="-2.8194" x2="0" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="4.318" y1="-2.286" x2="3.5052" y2="-2.8702" width="0.1524" layer="21"/>
<wire x1="3.5052" y1="-2.8702" x2="0" y2="-5.08" width="0.1524" layer="51"/>
<wire x1="4.318" y1="2.286" x2="3.5052" y2="2.8702" width="0.1524" layer="21"/>
<wire x1="3.5052" y1="2.8702" x2="0" y2="5.08" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="2.286" x2="-3.5052" y2="2.8702" width="0.1524" layer="21"/>
<wire x1="-3.5052" y1="2.8702" x2="0" y2="5.08" width="0.1524" layer="51"/>
<pad name="3" x="0" y="-4.0132" drill="2.0066" shape="long"/>
<pad name="2" x="0" y="0" drill="2.0066" shape="long"/>
<pad name="1" x="0" y="4.0132" drill="2.0066" shape="long"/>
<text x="-2.54" y="7.62" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-9.525" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="320-916" urn="urn:adsk.eagle:package:27678/1" type="box" library_version="1">
<description>TOGGLE SWITCH
distributor RS Components</description>
<packageinstances>
<packageinstance name="320-916"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="KS-U" urn="urn:adsk.eagle:symbol:27532/1" library_version="1">
<wire x1="-3.81" y1="1.905" x2="-2.54" y2="1.905" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="0" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0" x2="-3.81" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="1.905" x2="-3.81" y2="1.905" width="0.254" layer="94"/>
<wire x1="0.254" y1="0" x2="0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-3.175" x2="2.54" y2="-1.905" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.905" x2="0.635" y2="3.175" width="0.254" layer="94"/>
<wire x1="3.81" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="3.175" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="3.175" width="0.254" layer="94"/>
<wire x1="-0.762" y1="0" x2="-0.254" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-0.762" x2="0.254" y2="0" width="0.1524" layer="94"/>
<text x="-6.35" y="-1.905" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="P" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="S" x="5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="O" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="320-916" urn="urn:adsk.eagle:component:27763/1" prefix="S" uservalue="yes" library_version="1">
<description>&lt;b&gt;TOGGLE SWITCH&lt;/b&gt;&lt;p&gt;
distributor RS Components</description>
<gates>
<gate name="1" symbol="KS-U" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="320-916">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27678/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb" urn="urn:adsk.eagle:library:162">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA04-1" urn="urn:adsk.eagle:footprint:8285/1" library_version="1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.08" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.223" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.635" y="1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.334" y="-0.635" size="1.27" layer="21" ratio="10">4</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="MA04-1" urn="urn:adsk.eagle:package:8337/1" type="box" library_version="1">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA04-1"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA04-1" urn="urn:adsk.eagle:symbol:8284/1" library_version="1">
<wire x1="3.81" y1="-7.62" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA04-1" urn="urn:adsk.eagle:component:8375/1" prefix="SV" uservalue="yes" library_version="1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA04-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA04-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8337/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="holes" urn="urn:adsk.eagle:library:237">
<description>&lt;b&gt;Mounting Holes and Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2,8" urn="urn:adsk.eagle:footprint:14239/1" library_version="1">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 2.8 mm with drill center</description>
<wire x1="-1.778" y1="0" x2="0" y2="-1.778" width="2.286" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="1.778" x2="1.778" y2="0" width="2.286" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="0.635" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="2.921" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.54" width="2.032" layer="40"/>
<circle x="0" y="0" radius="2.54" width="2.032" layer="39"/>
<circle x="0" y="0" radius="2.54" width="2.032" layer="41"/>
<circle x="0" y="0" radius="2.54" width="2.032" layer="42"/>
<circle x="0" y="0" radius="2.54" width="2.032" layer="43"/>
<circle x="0" y="0" radius="1.5" width="0.2032" layer="21"/>
<hole x="0" y="0" drill="2.8"/>
</package>
<package name="3,0" urn="urn:adsk.eagle:footprint:14240/1" library_version="1">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 3.0 mm with drill center</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="39"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="43"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="40"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="41"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="42"/>
<circle x="0" y="0" radius="1.6" width="0.2032" layer="21"/>
<text x="-1.27" y="-3.81" size="1.27" layer="48">3,0</text>
<hole x="0" y="0" drill="3"/>
</package>
<package name="3,3" urn="urn:adsk.eagle:footprint:14241/1" library_version="1">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 3.3 mm with drill center</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.048" width="2.54" layer="39"/>
<circle x="0" y="0" radius="3.048" width="2.54" layer="40"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="43"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="41"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="42"/>
<circle x="0" y="0" radius="1.75" width="0.2032" layer="21"/>
<hole x="0" y="0" drill="3.3"/>
</package>
<package name="3,6" urn="urn:adsk.eagle:footprint:14242/1" library_version="1">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 3.6 mm with drill center</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.048" width="2.7686" layer="39"/>
<circle x="0" y="0" radius="3.048" width="2.7686" layer="40"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="43"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="41"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="42"/>
<circle x="0" y="0" radius="1.9" width="0.2032" layer="21"/>
<hole x="0" y="0" drill="3.6"/>
</package>
<package name="4,1" urn="urn:adsk.eagle:footprint:14243/1" library_version="1">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 4.1 mm with drill center</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="39"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="40"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="41"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="42"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="43"/>
<circle x="0" y="0" radius="2.15" width="0.1524" layer="21"/>
<hole x="0" y="0" drill="4.1"/>
</package>
<package name="4,5" urn="urn:adsk.eagle:footprint:14244/1" library_version="1">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 4.5 mm with drill center</description>
<wire x1="4.445" y1="0" x2="2.159" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="4.445" x2="0" y2="2.159" width="0.0508" layer="21"/>
<wire x1="-2.159" y1="0" x2="-4.445" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="-2.159" x2="0" y2="-4.445" width="0.0508" layer="21"/>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="39"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="40"/>
<circle x="0" y="0" radius="3.8184" width="2.54" layer="41"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="42"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="43"/>
<circle x="0" y="0" radius="2.35" width="0.1524" layer="21"/>
<text x="-1.27" y="-4.445" size="1.27" layer="48">4,5</text>
<hole x="0" y="0" drill="4.5"/>
</package>
<package name="5,0" urn="urn:adsk.eagle:footprint:14245/1" library_version="1">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 5.0 mm with drill center</description>
<wire x1="4.445" y1="0" x2="2.159" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="4.445" x2="0" y2="2.159" width="0.0508" layer="21"/>
<wire x1="-2.159" y1="0" x2="-4.445" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="-2.159" x2="0" y2="-4.445" width="0.0508" layer="21"/>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="39"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="40"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="43"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="42"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="41"/>
<circle x="0" y="0" radius="2.6" width="0.1524" layer="21"/>
<text x="-1.27" y="-4.445" size="1.27" layer="48">5,0</text>
<hole x="0" y="0" drill="5"/>
</package>
<package name="3,2" urn="urn:adsk.eagle:footprint:14246/1" library_version="1">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 3.2 mm with drill center</description>
<wire x1="-2.159" y1="0" x2="0" y2="-2.159" width="2.4892" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.159" x2="2.159" y2="0" width="2.4892" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="39"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="43"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="40"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="41"/>
<circle x="0" y="0" radius="3.048" width="2.032" layer="42"/>
<circle x="0" y="0" radius="1.7" width="0.2032" layer="21"/>
<hole x="0" y="0" drill="3.2"/>
</package>
<package name="4,3" urn="urn:adsk.eagle:footprint:14247/1" library_version="1">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 4.3 mm with drill center</description>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="39"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="40"/>
<circle x="0" y="0" radius="3.8184" width="2.54" layer="41"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="42"/>
<circle x="0" y="0" radius="3.81" width="2.54" layer="43"/>
<circle x="0" y="0" radius="2.25" width="0.1524" layer="21"/>
<hole x="0" y="0" drill="4.3"/>
</package>
<package name="5,5" urn="urn:adsk.eagle:footprint:14248/1" library_version="1">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; 5.5 mm with drill center</description>
<wire x1="4.445" y1="0" x2="2.159" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="4.445" x2="0" y2="2.159" width="0.0508" layer="21"/>
<wire x1="-2.159" y1="0" x2="-4.445" y2="0" width="0.0508" layer="21"/>
<wire x1="0" y1="-2.159" x2="0" y2="-4.445" width="0.0508" layer="21"/>
<wire x1="-2.54" y1="0" x2="0" y2="-2.54" width="3.9116" layer="51" curve="90" cap="flat"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="3.9116" layer="51" curve="-90" cap="flat"/>
<circle x="0" y="0" radius="4.4958" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="0.762" width="0.4572" layer="51"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="39"/>
<circle x="0" y="0" radius="4.699" width="4.5466" layer="40"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="43"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="42"/>
<circle x="0" y="0" radius="4.826" width="2.54" layer="41"/>
<circle x="0" y="0" radius="2.85" width="0.1524" layer="21"/>
<hole x="0" y="0" drill="5.5"/>
</package>
</packages>
<packages3d>
<package3d name="2,8" urn="urn:adsk.eagle:package:14271/1" type="box" library_version="1">
<description>MOUNTING HOLE 2.8 mm with drill center</description>
<packageinstances>
<packageinstance name="2,8"/>
</packageinstances>
</package3d>
<package3d name="3,0" urn="urn:adsk.eagle:package:14277/1" type="box" library_version="1">
<description>MOUNTING HOLE 3.0 mm with drill center</description>
<packageinstances>
<packageinstance name="3,0"/>
</packageinstances>
</package3d>
<package3d name="3,3" urn="urn:adsk.eagle:package:14278/1" type="box" library_version="1">
<description>MOUNTING HOLE 3.3 mm with drill center</description>
<packageinstances>
<packageinstance name="3,3"/>
</packageinstances>
</package3d>
<package3d name="3,6" urn="urn:adsk.eagle:package:14272/1" type="box" library_version="1">
<description>MOUNTING HOLE 3.6 mm with drill center</description>
<packageinstances>
<packageinstance name="3,6"/>
</packageinstances>
</package3d>
<package3d name="4,1" urn="urn:adsk.eagle:package:14273/1" type="box" library_version="1">
<description>MOUNTING HOLE 4.1 mm with drill center</description>
<packageinstances>
<packageinstance name="4,1"/>
</packageinstances>
</package3d>
<package3d name="4,5" urn="urn:adsk.eagle:package:14274/1" type="box" library_version="1">
<description>MOUNTING HOLE 4.5 mm with drill center</description>
<packageinstances>
<packageinstance name="4,5"/>
</packageinstances>
</package3d>
<package3d name="5,0" urn="urn:adsk.eagle:package:14276/1" type="box" library_version="1">
<description>MOUNTING HOLE 5.0 mm with drill center</description>
<packageinstances>
<packageinstance name="5,0"/>
</packageinstances>
</package3d>
<package3d name="3,2" urn="urn:adsk.eagle:package:14275/1" type="box" library_version="1">
<description>MOUNTING HOLE 3.2 mm with drill center</description>
<packageinstances>
<packageinstance name="3,2"/>
</packageinstances>
</package3d>
<package3d name="4,3" urn="urn:adsk.eagle:package:14289/1" type="box" library_version="1">
<description>MOUNTING HOLE 4.3 mm with drill center</description>
<packageinstances>
<packageinstance name="4,3"/>
</packageinstances>
</package3d>
<package3d name="5,5" urn="urn:adsk.eagle:package:14279/1" type="box" library_version="1">
<description>MOUNTING HOLE 5.5 mm with drill center</description>
<packageinstances>
<packageinstance name="5,5"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MOUNT-HOLE" urn="urn:adsk.eagle:symbol:14238/1" library_version="1">
<wire x1="0" y1="1.27" x2="1.27" y2="0" width="1.524" layer="94" curve="-90" cap="flat"/>
<wire x1="-1.27" y1="0" x2="0" y2="-1.27" width="1.524" layer="94" curve="90" cap="flat"/>
<wire x1="-0.508" y1="0" x2="0.508" y2="0" width="0.0508" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.0508" layer="94"/>
<circle x="0" y="0" radius="2.032" width="0.0508" layer="94"/>
<circle x="0" y="0" radius="0.508" width="0.0508" layer="94"/>
<text x="2.032" y="0.5842" size="1.778" layer="95">&gt;NAME</text>
<text x="2.032" y="-2.4638" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOUNT-HOLE" urn="urn:adsk.eagle:component:14301/1" prefix="H" library_version="1">
<description>&lt;b&gt;MOUNTING HOLE&lt;/b&gt; with drill center marker</description>
<gates>
<gate name="G$1" symbol="MOUNT-HOLE" x="0" y="0"/>
</gates>
<devices>
<device name="2.8" package="2,8">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14271/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.0" package="3,0">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14277/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.3" package="3,3">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14278/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.6" package="3,6">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14272/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4.1" package="4,1">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14273/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4.5" package="4,5">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14274/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5.0" package="5,0">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14276/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.2" package="3,2">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14275/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4.3" package="4,3">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14289/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5.5" package="5,5">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14279/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="18650 holder-3">
<packages>
<package name="18650-2">
<pad name="B1+" x="-11.46" y="35.05" drill="1" diameter="6.4516" shape="square"/>
<pad name="B2+" x="7.54" y="35.05" drill="1" diameter="6.4516" shape="square"/>
<pad name="B1-" x="-11.46" y="-36.95" drill="1" diameter="6.4516" shape="square"/>
<pad name="B2-" x="7.54" y="-36.95" drill="1" diameter="6.4516" shape="square"/>
<wire x1="-21.46" y1="39.05" x2="18.54" y2="39.05" width="0.127" layer="21"/>
<wire x1="18.54" y1="39.05" x2="18.54" y2="-40.95" width="0.127" layer="21"/>
<wire x1="18.54" y1="-40.95" x2="-21.46" y2="-40.95" width="0.127" layer="21"/>
<wire x1="-21.46" y1="-40.95" x2="-21.46" y2="39.05" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="18650-2">
<wire x1="-15" y1="16.08" x2="6.38" y2="16.08" width="0.254" layer="94"/>
<wire x1="6.38" y1="16.08" x2="6.38" y2="-13.92" width="0.254" layer="94"/>
<wire x1="6.38" y1="-13.92" x2="-15" y2="-13.92" width="0.254" layer="94"/>
<wire x1="-15" y1="-13.92" x2="-15" y2="16.08" width="0.254" layer="94"/>
<pin name="B1+" x="-12" y="21.08" length="middle" rot="R270"/>
<pin name="B2+" x="0" y="21.08" length="middle" rot="R270"/>
<pin name="B1-" x="-12" y="-18.92" length="middle" rot="R90"/>
<pin name="B2-" x="0" y="-18.92" length="middle" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="18650-2">
<gates>
<gate name="G$1" symbol="18650-2" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="18650-2">
<connects>
<connect gate="G$1" pin="B1+" pad="B1+"/>
<connect gate="G$1" pin="B1-" pad="B1-"/>
<connect gate="G$1" pin="B2+" pad="B2+"/>
<connect gate="G$1" pin="B2-" pad="B2-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" urn="urn:adsk.eagle:symbol:13874/1" library_version="1">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" urn="urn:adsk.eagle:component:13926/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$5" library="ina219_mad" deviceset="INA219_MAD" device=""/>
<part name="U$6" library="Teensy_3_and_LC_Series_Boards_v1.4" deviceset="TEENSY_3.0_DIL_MAD" device=""/>
<part name="U$1" library="rfm95_mad" deviceset="RFM96_MAD" device=""/>
<part name="U$2" library="dc-dc_mad" deviceset="DC-DC_BUCK_MAD" device=""/>
<part name="U$3" library="gps_mad" deviceset="GPS_MAD" device=""/>
<part name="S1" library="switch" library_urn="urn:adsk.eagle:library:380" deviceset="320-916" device="" package3d_urn="urn:adsk.eagle:package:27678/1"/>
<part name="SV3" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA04-1" device="" package3d_urn="urn:adsk.eagle:package:8337/1"/>
<part name="H1" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-HOLE" device="3.0" package3d_urn="urn:adsk.eagle:package:14277/1"/>
<part name="H2" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-HOLE" device="3.0" package3d_urn="urn:adsk.eagle:package:14277/1"/>
<part name="H3" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-HOLE" device="3.0" package3d_urn="urn:adsk.eagle:package:14277/1"/>
<part name="H4" library="holes" library_urn="urn:adsk.eagle:library:237" deviceset="MOUNT-HOLE" device="3.0" package3d_urn="urn:adsk.eagle:package:14277/1"/>
<part name="U$4" library="18650 holder-3" deviceset="18650-2" device=""/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$5" gate="G$1" x="50.8" y="22.86"/>
<instance part="U$6" gate="G$1" x="208.28" y="134.62">
<attribute name="NAME" x="205.232" y="166.37" size="1.27" layer="95" font="vector" ratio="15"/>
<attribute name="VALUE" x="208.026" y="93.98" size="1.27" layer="96" font="vector" ratio="15"/>
</instance>
<instance part="U$1" gate="G$1" x="63.5" y="142.24"/>
<instance part="U$2" gate="G$1" x="200.66" y="45.72"/>
<instance part="U$3" gate="G$1" x="58.42" y="66.04"/>
<instance part="S1" gate="1" x="127" y="76.2" rot="R270">
<attribute name="NAME" x="125.095" y="82.55" size="1.778" layer="95"/>
<attribute name="VALUE" x="129.54" y="80.01" size="1.778" layer="96"/>
</instance>
<instance part="SV3" gate="1" x="124.46" y="55.88">
<attribute name="VALUE" x="123.19" y="45.72" size="1.778" layer="96"/>
<attribute name="NAME" x="123.19" y="61.722" size="1.778" layer="95"/>
</instance>
<instance part="H1" gate="G$1" x="104.14" y="20.32">
<attribute name="NAME" x="106.172" y="20.9042" size="1.778" layer="95"/>
<attribute name="VALUE" x="106.172" y="17.8562" size="1.778" layer="96"/>
</instance>
<instance part="H2" gate="G$1" x="104.14" y="12.7">
<attribute name="NAME" x="106.172" y="13.2842" size="1.778" layer="95"/>
<attribute name="VALUE" x="106.172" y="10.2362" size="1.778" layer="96"/>
</instance>
<instance part="H3" gate="G$1" x="137.16" y="20.32">
<attribute name="NAME" x="139.192" y="20.9042" size="1.778" layer="95"/>
<attribute name="VALUE" x="139.192" y="17.8562" size="1.778" layer="96"/>
</instance>
<instance part="H4" gate="G$1" x="137.16" y="12.7">
<attribute name="NAME" x="139.192" y="13.2842" size="1.778" layer="95"/>
<attribute name="VALUE" x="139.192" y="10.2362" size="1.778" layer="96"/>
</instance>
<instance part="U$4" gate="G$1" x="195.58" y="66.04" rot="R270"/>
<instance part="FRAME1" gate="G$1" x="2.54" y="2.54">
<attribute name="DRAWING_NAME" x="219.71" y="17.78" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="219.71" y="12.7" size="2.286" layer="94"/>
<attribute name="SHEET" x="233.045" y="7.62" size="2.54" layer="94"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="SCK" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="SCK"/>
<wire x1="96.52" y1="139.7" x2="111.76" y2="139.7" width="0.1524" layer="91"/>
<label x="111.76" y="139.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="13/SCK/LED"/>
<wire x1="187.96" y1="127" x2="180.34" y2="127" width="0.1524" layer="91"/>
<label x="180.34" y="127" size="1.778" layer="95"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="MISO"/>
<wire x1="96.52" y1="132.08" x2="111.76" y2="132.08" width="0.1524" layer="91"/>
<label x="111.76" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="12/MISO"/>
<wire x1="187.96" y1="129.54" x2="180.34" y2="129.54" width="0.1524" layer="91"/>
<label x="180.34" y="129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="MOSI"/>
<wire x1="96.52" y1="124.46" x2="111.76" y2="124.46" width="0.1524" layer="91"/>
<label x="111.76" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="11/MOSI"/>
<wire x1="187.96" y1="132.08" x2="180.34" y2="132.08" width="0.1524" layer="91"/>
<label x="180.34" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="CS" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="CS"/>
<wire x1="96.52" y1="116.84" x2="111.76" y2="116.84" width="0.1524" layer="91"/>
<label x="111.76" y="116.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="10/TX2/PWM"/>
<wire x1="187.96" y1="134.62" x2="180.34" y2="134.62" width="0.1524" layer="91"/>
<label x="180.34" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="RST" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="RST"/>
<wire x1="96.52" y1="109.22" x2="111.76" y2="109.22" width="0.1524" layer="91"/>
<label x="111.76" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="9/RX2/PWM"/>
<wire x1="187.96" y1="137.16" x2="180.34" y2="137.16" width="0.1524" layer="91"/>
<label x="180.34" y="137.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="INT" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="G0"/>
<wire x1="96.52" y1="147.32" x2="111.76" y2="147.32" width="0.1524" layer="91"/>
<label x="111.76" y="147.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="2"/>
<wire x1="187.96" y1="154.94" x2="180.34" y2="154.94" width="0.1524" layer="91"/>
<label x="180.34" y="154.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VIN"/>
<wire x1="33.02" y1="116.84" x2="22.86" y2="116.84" width="0.1524" layer="91"/>
<label x="22.86" y="116.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="VIN"/>
<wire x1="233.68" y1="160.02" x2="243.84" y2="160.02" width="0.1524" layer="91"/>
<label x="243.84" y="160.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="+OUT"/>
<wire x1="218.44" y1="40.64" x2="220.98" y2="40.64" width="0.1524" layer="91"/>
<wire x1="220.98" y1="40.64" x2="220.98" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="+OUT1"/>
<wire x1="220.98" y1="43.18" x2="218.44" y2="43.18" width="0.1524" layer="91"/>
<wire x1="220.98" y1="43.18" x2="226.06" y2="43.18" width="0.1524" layer="91"/>
<junction x="220.98" y="43.18"/>
<label x="226.06" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="VCC"/>
<wire x1="33.02" y1="27.94" x2="22.86" y2="27.94" width="0.1524" layer="91"/>
<label x="22.86" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="VIN"/>
<wire x1="76.2" y1="58.42" x2="86.36" y2="58.42" width="0.1524" layer="91"/>
<label x="86.36" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SV3" gate="1" pin="4"/>
<wire x1="132.08" y1="58.42" x2="137.16" y2="58.42" width="0.1524" layer="91"/>
<label x="137.16" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="33.02" y1="109.22" x2="22.86" y2="109.22" width="0.1524" layer="91"/>
<label x="22.86" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="233.68" y1="152.4" x2="243.84" y2="152.4" width="0.1524" layer="91"/>
<label x="243.84" y="152.4" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="-IN1"/>
<wire x1="182.88" y1="48.26" x2="180.34" y2="48.26" width="0.1524" layer="91"/>
<wire x1="180.34" y1="48.26" x2="180.34" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="-IN"/>
<wire x1="180.34" y1="50.8" x2="182.88" y2="50.8" width="0.1524" layer="91"/>
<wire x1="180.34" y1="50.8" x2="172.72" y2="50.8" width="0.1524" layer="91"/>
<junction x="180.34" y="50.8"/>
<label x="172.72" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="-OUT1"/>
<wire x1="218.44" y1="48.26" x2="220.98" y2="48.26" width="0.1524" layer="91"/>
<wire x1="220.98" y1="48.26" x2="220.98" y2="50.8" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="-OUT"/>
<wire x1="220.98" y1="50.8" x2="218.44" y2="50.8" width="0.1524" layer="91"/>
<junction x="220.98" y="50.8"/>
<wire x1="220.98" y1="50.8" x2="226.06" y2="50.8" width="0.1524" layer="91"/>
<label x="226.06" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="GND"/>
<wire x1="33.02" y1="22.86" x2="22.86" y2="22.86" width="0.1524" layer="91"/>
<label x="22.86" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="40.64" y1="58.42" x2="30.48" y2="58.42" width="0.1524" layer="91"/>
<label x="30.48" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SV3" gate="1" pin="3"/>
<wire x1="132.08" y1="55.88" x2="137.16" y2="55.88" width="0.1524" layer="91"/>
<label x="137.16" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="AGND"/>
<wire x1="233.68" y1="137.16" x2="241.3" y2="137.16" width="0.1524" layer="91"/>
<label x="241.3" y="137.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="B2+"/>
<wire x1="216.66" y1="66.04" x2="223.52" y2="66.04" width="0.1524" layer="91"/>
<label x="223.52" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="RX_GPS" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="7/RX3"/>
<wire x1="187.96" y1="142.24" x2="180.34" y2="142.24" width="0.1524" layer="91"/>
<label x="180.34" y="142.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="TX"/>
<wire x1="76.2" y1="78.74" x2="86.36" y2="78.74" width="0.1524" layer="91"/>
<label x="86.36" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="TX_GPS" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="8/TX3"/>
<wire x1="187.96" y1="139.7" x2="180.34" y2="139.7" width="0.1524" layer="91"/>
<label x="180.34" y="139.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="RX"/>
<wire x1="76.2" y1="73.66" x2="86.36" y2="73.66" width="0.1524" layer="91"/>
<label x="86.36" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="+BATT" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="+IN1"/>
<wire x1="182.88" y1="43.18" x2="180.34" y2="43.18" width="0.1524" layer="91"/>
<wire x1="180.34" y1="43.18" x2="180.34" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="+IN"/>
<wire x1="180.34" y1="40.64" x2="182.88" y2="40.64" width="0.1524" layer="91"/>
<wire x1="180.34" y1="43.18" x2="172.72" y2="43.18" width="0.1524" layer="91"/>
<junction x="180.34" y="43.18"/>
<label x="172.72" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="VIN-"/>
<wire x1="33.02" y1="17.78" x2="22.86" y2="17.78" width="0.1524" layer="91"/>
<label x="22.86" y="17.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="18/A4/T/SDA"/>
<wire x1="187.96" y1="114.3" x2="180.34" y2="114.3" width="0.1524" layer="91"/>
<label x="180.34" y="114.3" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="SDA"/>
<wire x1="68.58" y1="22.86" x2="78.74" y2="22.86" width="0.1524" layer="91"/>
<label x="78.74" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SV3" gate="1" pin="1"/>
<wire x1="132.08" y1="50.8" x2="137.16" y2="50.8" width="0.1524" layer="91"/>
<label x="137.16" y="50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="19/A5/T/SCL"/>
<wire x1="187.96" y1="111.76" x2="180.34" y2="111.76" width="0.1524" layer="91"/>
<label x="180.34" y="111.76" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="SCL"/>
<wire x1="68.58" y1="27.94" x2="78.74" y2="27.94" width="0.1524" layer="91"/>
<label x="78.74" y="27.94" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SV3" gate="1" pin="2"/>
<wire x1="132.08" y1="53.34" x2="137.16" y2="53.34" width="0.1524" layer="91"/>
<label x="137.16" y="53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="+MAIN" class="0">
<segment>
<pinref part="S1" gate="1" pin="P"/>
<wire x1="121.92" y1="73.66" x2="111.76" y2="73.66" width="0.1524" layer="91"/>
<label x="111.76" y="73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="B1+"/>
<wire x1="216.66" y1="78.04" x2="216.66" y2="78.74" width="0.1524" layer="91"/>
<wire x1="216.66" y1="78.74" x2="223.52" y2="78.74" width="0.1524" layer="91"/>
<label x="223.52" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="+VCC" class="0">
<segment>
<pinref part="S1" gate="1" pin="O"/>
<wire x1="132.08" y1="76.2" x2="139.7" y2="76.2" width="0.1524" layer="91"/>
<label x="139.7" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="VIN+"/>
<wire x1="68.58" y1="17.78" x2="78.74" y2="17.78" width="0.1524" layer="91"/>
<label x="78.74" y="17.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="1" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="1/TX1/T"/>
<wire x1="187.96" y1="157.48" x2="180.34" y2="157.48" width="0.1524" layer="91"/>
<label x="180.34" y="157.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="0" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="0/RX1/T"/>
<wire x1="187.96" y1="160.02" x2="180.34" y2="160.02" width="0.1524" layer="91"/>
<label x="180.34" y="160.02" size="1.778" layer="95"/>
</segment>
</net>
<net name="6" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="6/PWM"/>
<wire x1="187.96" y1="144.78" x2="180.34" y2="144.78" width="0.1524" layer="91"/>
<label x="180.34" y="144.78" size="1.778" layer="95"/>
</segment>
</net>
<net name="5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="5/PWM"/>
<wire x1="187.96" y1="147.32" x2="180.34" y2="147.32" width="0.1524" layer="91"/>
<label x="180.34" y="147.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="4" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="4/PWM"/>
<wire x1="187.96" y1="149.86" x2="180.34" y2="149.86" width="0.1524" layer="91"/>
<label x="180.34" y="149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="3/PWM"/>
<wire x1="187.96" y1="152.4" x2="180.34" y2="152.4" width="0.1524" layer="91"/>
<label x="180.34" y="152.4" size="1.778" layer="95"/>
</segment>
</net>
<net name="14" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="14/A0"/>
<wire x1="187.96" y1="124.46" x2="180.34" y2="124.46" width="0.1524" layer="91"/>
<label x="180.34" y="124.46" size="1.778" layer="95"/>
</segment>
</net>
<net name="15" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="15/A1/T"/>
<wire x1="187.96" y1="121.92" x2="180.34" y2="121.92" width="0.1524" layer="91"/>
<label x="180.34" y="121.92" size="1.778" layer="95"/>
</segment>
</net>
<net name="17" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="17/A3/T"/>
<wire x1="187.96" y1="116.84" x2="180.34" y2="116.84" width="0.1524" layer="91"/>
<label x="180.34" y="116.84" size="1.778" layer="95"/>
</segment>
</net>
<net name="20" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="20/A6/PWM"/>
<wire x1="187.96" y1="109.22" x2="180.34" y2="109.22" width="0.1524" layer="91"/>
<label x="180.34" y="109.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="21" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="21/A7/PWM"/>
<wire x1="187.96" y1="106.68" x2="180.34" y2="106.68" width="0.1524" layer="91"/>
<label x="180.34" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="22" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="22/A8/T/PWM"/>
<wire x1="187.96" y1="104.14" x2="180.34" y2="104.14" width="0.1524" layer="91"/>
<label x="180.34" y="104.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="23" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="23/A9/T/PWM"/>
<wire x1="187.96" y1="101.6" x2="180.34" y2="101.6" width="0.1524" layer="91"/>
<label x="180.34" y="101.6" size="1.778" layer="95"/>
</segment>
</net>
<net name="16" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="16/A2/T"/>
<wire x1="187.96" y1="119.38" x2="180.34" y2="119.38" width="0.1524" layer="91"/>
<label x="180.34" y="119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="3V3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="3.3V"/>
<wire x1="233.68" y1="157.48" x2="241.3" y2="157.48" width="0.1524" layer="91"/>
<label x="241.3" y="157.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="B2-"/>
<wire x1="176.66" y1="66.04" x2="172.72" y2="66.04" width="0.1524" layer="91"/>
<wire x1="172.72" y1="66.04" x2="172.72" y2="78.74" width="0.1524" layer="91"/>
<wire x1="172.72" y1="78.74" x2="176.66" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="B1-"/>
<wire x1="176.66" y1="78.74" x2="176.66" y2="78.04" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
