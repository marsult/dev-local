INSERT INTO MWCONFIG.CONFIG_METADATA (ACTIVE, XML, MODIFIED_BY, TIMESTAMP)
	VALUES (1, '<db-config>
	<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}''</attribute>
	<attribute id="timestamp-check">2000</attribute>
	<element id="attribute">
		<attribute id="id">mapping-script</attribute>
		<text>
			String unescape(String p) {
				id.co.hanoman.config.Util.unescape(p);
			}
			String hex(String p) {
				id.co.hanoman.config.Util.hex(p);
			}
			void copyMessage() {
				id.co.hanoman.config.UtilMQ.copyMbMessage(tar.''!this'', msg.''!this'');
			}
			void copyMessage(String dest, String src) {
				id.co.hanoman.config.UtilMQ.copyMbMessage(id.co.hanoman.config.UtilMQ.getMbFolder(tar.''!this'', dest), id.co.hanoman.config.UtilMQ.getMbFolder(head.''!this'', src));
			}
			void copyMessage(String dest, String src, int depth) {
				id.co.hanoman.config.UtilMQ.copyMbMessage(id.co.hanoman.config.UtilMQ.getMbFolder(tar.''!this'', dest), id.co.hanoman.config.UtilMQ.getMbFolder(head.''!this'', src), depth);
			}
			void copyMessageToChild(String id) {
				id.co.hanoman.config.UtilMQ.copyMbMessage(id.co.hanoman.config.UtilMQ.getMbFolder(tar.''!this'', id), msg.''!this'');
			}
			void setValue(String name, String value) {
				mbt.createElementAsLastChild(com.ibm.broker.plugin.MbXMLNSC.FOLDER, name, value);
			}
			String counter(String id, int hiLength, int loLength, String dateReset) {
				id.co.hanoman.config.Util.counter(getParamValue("System", "counter." + id, getParamValue("System", "counter.path", null)), id, hiLength, loLength, dateReset);
			}
			String convert(String type, Object value, int length) {
				id.co.hanoman.config.Util.convert(type, value, length);
			}
			String decimalFormat(String format, Number value) {
				new java.text.DecimalFormat(format).format(value);
			}
			String getTimeZoneFormat(String format, String timeZone) {
				id.co.hanoman.config.Util.getTimeZoneFormat(format, timeZone);
			}
			String getTimeZoneFormat(String format, String timeZone, Date) {
				id.co.hanoman.config.Util.getTimeZoneFormat(format, timeZone, Date);
			}
			String getUID(String str) {
				id.co.hanoman.config.Util.getUID(str);
			}
			Object bitmap(Map msg, List fields) {
				id.co.hanoman.config.Util.bitmap(msg, fields);
			}
			Object bitmapHex(Map msg, List fields) {
				id.co.hanoman.config.Util.hex(id.co.hanoman.config.Util.bitmap(msg, fields));
			}
			Object dtree(String group, String treeRoot) {
				id.co.hanoman.mbplugin.codex.UtilCodex.dtree(config, ctx, group, treeRoot, msg, head, tar);
			}
			String getParamValue(String group, String name, String defaultValue) {
				id.co.hanoman.mbplugin.codex.UtilCodex.getParamValue(config, ctx, group, name, defaultValue, msg, head, local, tar, idx, size);
			}
			String getParamValueWithError(String group, String name, String error) {
				def v = id.co.hanoman.mbplugin.codex.UtilCodex.getParamValue(config, ctx, group, name, null, msg, head, local, tar, idx, size);
				if (v == null)
					throw new Exception(error);
				return v;
			}
			List getParamValues(String group, String name) {
				id.co.hanoman.mbplugin.codex.UtilCodex.getParamValues(config, ctx, group, name, defaultValue, msg, head, local, tar, idx, size);
			}
			String binaryToNumeric(String type, Object value) {
				id.co.hanoman.config.Util.binaryToNumeric(type, value);
			}
			String ebcdicToAscii(String value) {
				id.co.hanoman.config.Util.ebcdicToAscii(value);
			}
			String getCharge(int idx) {
				def v;
				if ((v = tar.get("charge_script_" + idx)) != null) {
					def script = id.co.hanoman.mbplugin.codex.MappingScript.init(config, ctx, "", "return " + v);
					script.setParam("charge_value", tar.get("charge_value_" + idx));
					return script.evalString(msg, head, local, tar, idx, size);
				} else if ((v = tar.get("charge_value_" + idx)) != null) {
					return v;
				}
				return null;
			}
			String getChargeValue(int idx) {
				def v;
				if ((v = tar.get("charge_value_" + idx)) != null) {
					return v;
				}
				return null;
			}
			String getAccount(int index) {
				return tar.get("charge_account_" + index);
			}
			String numericToBinaryCounter(String value, int idx) {
				new java.lang.Integer(value).toHexString(new java.lang.Integer(value) + new java.lang.Integer(idx));
			}
			void throwException(String error) {
				throw new Exception(error);
			}
			String padLeftMbElementOrString(Object obj, int i, String s) {
				return (obj instanceof String ? ((String)obj).padLeft(i, s) : ((com.ibm.broker.plugin.MbElement)obj).getValueAsString().padLeft(i, s));
			}
			void convertMsg() {
				Map map = new LinkedHashMap();
				id.co.hanoman.config.UtilMQ.convertData2Map(msg.''!this'', map);
				map.remove("!raw");
				map.remove("!remaining");
				map.remove("!remainingPos");
				id.co.hanoman.mbplugin.codex.CodexFactory cf = new id.co.hanoman.mbplugin.codex.CodexFactory(null, config);
				id.co.hanoman.mbplugin.codex.Codex cc = cf.getCodex("dsp-iso-response");
				id.co.hanoman.mbplugin.codex.CodexContext ctx = new id.co.hanoman.mbplugin.codex.CodexContext();
				cc.encode(ctx, map);
				String hex = id.co.hanoman.config.Util.dump(ctx.toByteArray(), 0, ctx.toByteArray().length);
				if (hex.length() > 999) {
					tar.responses1 = hex.substring(0, 999);
					hex = hex.substring(999);
				} else {
					tar.responses1 = hex;
					hex = "";
				}
				if (hex.length() > 999) {
					tar.responses2 = hex.substring(0, 999);
					hex = hex.substring(999);
				} else if (hex.length() > 0) {
					tar.responses2 = hex;
					hex = "";
				}
				if (hex.length() > 999) {
					tar.responses3 = hex.substring(0, 999);
					hex = hex.substring(999);
				} else if (hex.length() > 0) {
					tar.responses3 = hex;
					hex = "";
				}
				if (hex.length() > 0) {
					tar.responses4 = hex;
				}
			}
			String checkSpvOR(String hex) {
				String binaryString = Integer.toBinaryString(Integer.parseInt(hex, 16));
				String toCheck = binaryString.substring(binaryString.length() - 2, binaryString.length());
				if (toCheck.equals("10")) {
					return "FE";
				} else if (toCheck.equals("01")) {
					return "FD";
				} else if (toCheck.equals("11")) {
					return "FF";
				} else {
					return "FC";
				}
			}
			void normalizeF9() {
				Map map = new LinkedHashMap();
				id.co.hanoman.config.UtilMQ.convertData2Map(msg.''!this'', map);
				id.co.hanoman.mbplugin.codex.CodexFactory cf = new id.co.hanoman.mbplugin.codex.CodexFactory(null, config);
				id.co.hanoman.mbplugin.codex.Codex cc = cf.getCodex("dsp-abcs-response");
				id.co.hanoman.mbplugin.codex.CodexContext ctx = new id.co.hanoman.mbplugin.codex.CodexContext();
				cc.encode(ctx, map);
				String F9Concat = "";
				int countF9 = Integer.valueOf(map.get("!COUNT_F9"));
				F9Concat = String.valueOf(countF9).padLeft(3, "0");
				int i = 1;
				while (countF9 >= i) {
					F9Concat += map.get("!WITH_" + i + "_F9").toString().padLeft(20, "0") + map.get("!DEP_" + i + "_F9").toString().padLeft(20, "0") + map.get("!INT_" + i + "_F9").toString().padLeft(20, "0") + map.get("!BAL_" + i + "_F9").toString().padLeft(20, "0") + map.get("!TELL_" + i + "_F9").toString().padLeft(7, "0") + map.get("!DATE_" + i + "_F9").toString().padLeft(7, "0") + map.get("!TLPBB_" + i + "_F9").toString().padLeft(3, "0") + map.get("!TLLIN_" + i + "_F9").toString().padLeft(3, "0") + map.get("!TLSB_" + i + "_F9").toString().padLeft(4, "0");
					i++;
				}
				tar.F9Normalize = F9Concat;
			}
			String getNormalizeF9() {
				Map map = new LinkedHashMap();
				id.co.hanoman.config.UtilMQ.convertData2Map(msg.''!this'', map);
				id.co.hanoman.mbplugin.codex.CodexFactory cf = new id.co.hanoman.mbplugin.codex.CodexFactory(null, config);
				id.co.hanoman.mbplugin.codex.Codex cc = cf.getCodex("dsp-abcs-response");
				id.co.hanoman.mbplugin.codex.CodexContext ctx = new id.co.hanoman.mbplugin.codex.CodexContext();
				cc.encode(ctx, map);
				String F9Concat = "";
				int countF9 = Integer.valueOf(map.get("!COUNT_F9"));
				F9Concat = String.valueOf(countF9).padLeft(2, "0");
				int i = 1;
				while (countF9 >= i) {
					F9Concat += map.get("!WITH_" + i + "_F9").toString().padLeft(19, "0") + map.get("!DEP_" + i + "_F9").toString().padLeft(19, "0") + map.get("!INT_" + i + "_F9").toString().padLeft(19, "0") + map.get("!BAL_" + i + "_F9").toString().padLeft(19, "0") + map.get("!TELL_" + i + "_F9").toString().padLeft(7, "0") + map.get("!DATE_" + i + "_F9").toString().padLeft(7, "0") + map.get("!TLPBB_" + i + "_F9").toString().padLeft(3, "0") + map.get("!TLLIN_" + i + "_F9").toString().padLeft(3, "0") + map.get("!TLSB_" + i + "_F9").toString().padLeft(4, "0");
					i++;
				}
				return F9Concat;
			}
			String getNormalize42() {
				Map map = new LinkedHashMap();
				id.co.hanoman.config.UtilMQ.convertData2Map(msg.''!this'', map);
				id.co.hanoman.mbplugin.codex.CodexFactory cf = new id.co.hanoman.mbplugin.codex.CodexFactory(null, config);
				id.co.hanoman.mbplugin.codex.Codex cc = cf.getCodex("dsp-abcs-response");
				id.co.hanoman.mbplugin.codex.CodexContext ctx = new id.co.hanoman.mbplugin.codex.CodexContext();
				cc.encode(ctx, map);
				String StrConcat = "";
				StrConcat = map.get("!TELLERTRANCD_42").toString().padLeft(5, "0") + map.get("!TELLERTRANMNM_42").toString().padLeft(3, "0") + map.get("!TELLERJOURNALSEQ_42").toString().padLeft(7, "0") + map.get("!TELLER_42").toString().padLeft(7, "0") + map.get("!CTRLID_42").toString().padLeft(3, "0") + map.get("!WORKSTID_42").toString().padLeft(2, "0") + map.get("!HIGHOVRD_42").toString().padLeft(1, "0") + map.get("!NUMERR_42").toString().padLeft(2, "0") + map.get("!FILL_A_42").toString().padLeft(3, "0") + map.get("!FILL_B_42").toString().padLeft(1, "0");
				int count42 = Integer.valueOf(map.get("!NUMERR_42"));
				int i = 1;
				while (count42 >= i) {
					StrConcat += map.get("!EDIT_" + i + "_42").toString().padLeft(2, "0") + map.get("!OVERRIDE_" + i + "_42").toString().padLeft(1, "0") + map.get("!TLTX_" + i + "_42").toString().padLeft(1, "0") + map.get("!ADDINF_" + i + "_42").toString().padLeft(17, "0") + map.get("!FILLER1_" + i + "_42").toString().padLeft(3, "0") + map.get("!FILLER2_" + i + "_42").toString().padLeft(1, "0");
					i++;
				}
				StrConcat += map.get("!FILL_1_42").toString().padLeft(2, "0") + map.get("!FILL_2_42").toString().padLeft(1, "0") + map.get("!FILL_3_42").toString().padLeft(1, "0") + map.get("!FILL_4_42").toString().padLeft(17, "0") + map.get("!ERROR_42").toString().padLeft(50, "0");
				return StrConcat;
			}
			String passBookF9() {
				Map map = new LinkedHashMap();
				id.co.hanoman.config.UtilMQ.convertData2Map(msg.''!this'', map);
				String F9Concat = "";
				int countF9 = Integer.valueOf(map.get("!COUNT_F9"));
				int index = 0;
				int i = 1;
				if (countF9 > 12) {
					index = 12;
				} else {
					index = countF9;
				}
				F9Concat = String.valueOf(index) + "|";
				while (index >= i) {
					F9Concat += decimalFormat(".00", Double.valueOf(map.get("!WITH_" + i + "_F9"))) + "|" + decimalFormat(".00", Double.valueOf(map.get("!DEP_" + i + "_F9"))) + "|" + decimalFormat(".00", Double.valueOf(map.get("!INT_" + i + "_F9"))) + "|" + decimalFormat(".00", Double.valueOf(map.get("!BAL_" + i + "_F9"))) + "|" + Integer.valueOf(map.get("!TELL_" + i + "_F9")) + "|" + Integer.valueOf(map.get("!DATE_" + i + "_F9")) + "|" + map.get("!TLPBB_" + i + "_F9").toString() + "|" + Integer.valueOf(map.get("!TLLIN_" + i + "_F9")) + "|";
					i++;
				}
				return F9Concat;
			}
			String getMD5(String input) {
				java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
				byte[]messageDigest = md.digest(input.getBytes());
				BigInteger number = new BigInteger(1, messageDigest);
				String hashstr = number.toString(16);
				while (hashstr.length() &lt; 32) {
					hashstr = "0" + hashstr;
				}
				return hashstr;
			}
			String sha1(String input) {
				java.security.MessageDigest mDigest = java.security.MessageDigest.getInstance("SHA1");
				byte[]result = mDigest.digest(input.getBytes());
				StringBuffer sb = new StringBuffer();
				for (int i = 0; i &lt; result.length; i++) {
					sb.append(Integer.toString((result[i] &amp; 0xff) + 0x100, 16).substring(1));
				}
				return sb.toString();
			}
			boolean notNull(data) {
				if(data instanceof java.lang.String)
					return true;
				return false;
			}
			<![CDATA[
            String hexToString(String hex) {
                StringBuilder output = new StringBuilder();
                for (int i = 0; i < hex.length(); i += 2) {
                    String str = hex.substring(i, i + 2);
                    output.append((char) Integer.parseInt(str, 16));
                }
                return output.toString();
            }
            String hexToBase64(String hex) {
                byte[] bytes = new byte[hex.length() / 2];
                for (int i = 0; i < hex.length(); i += 2) {
                    int index = (int)(i / 2);  // Casting hasil pembagian ke int
                    int highNibble = Character.digit(hex.charAt(i), 16) << 4;
                    int lowNibble = Character.digit(hex.charAt(i + 1), 16);
                    bytes[index] = (byte) (highNibble + lowNibble);
                }
                return java.util.Base64.getEncoder().encodeToString(bytes);
            }
            ]]>
		</text>
	</element>
	<element id="ports">
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''port''</attribute>
		<element id="port" query="select a.id, a.asynchronous, s.port, s.server, s.group, a.timestamp from ${schema}.adaptor a, ${schema}.server_port s where a.id = s.adaptor_id">
			<attribute id="server">${v.server}</attribute>
			<attribute id="id">${v.id}</attribute>
			<attribute id="tz">${v.timestamp}</attribute>
			<attribute id="group">${v.group}</attribute>
			<param id="asynchronous" boolean="true">${v.asynchronous}</param>
			<param id="port">${v.port}</param>
			<param id="closeQueue">${v.close_queue}</param>
			<element id="param" query="select adaptor_id, name, value from ${schema}.adaptor_param" filter-value="adaptor_id" filter-parent="id">
				<attribute id="id">${v.name}</attribute>
				<text>${v.value}</text>
			</element>
			<element id="codex" query="select id, codex_id, adaptor_id from ${schema}.adaptor_codex" filter-value="adaptor_id" filter-parent="id">
				<attribute id="id">${v.id}</attribute>
				<attribute id="src">/*/codex[@id=''${v.codex_id}'']</attribute>
				<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''codex''</attribute>
			</element>
		</element>
	</element>
	<element id="clients">
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''port''</attribute>
		<element id="client" query="select distinct ct.id, c.adaptor_id, c.node, a.asynchronous, c.keep_conn, c.reuse_delay, c.idle_wait, c.close_queue, c.control_queue, a.timestamp from ${schema}.adaptor a, ${schema}.client c, ${schema}.client_target ct where a.id = c.adaptor_id and a.id = ct.client_id" query-value="id, adaptor_id">
			<attribute id="id">${v.id}</attribute>
			<attribute id="adaptorId">${v.adaptor_id}</attribute>
			<attribute id="tz">${v.timestamp}</attribute>
			<attribute id="node">${v.node}</attribute>
			<param id="asynchronous" boolean="true">${v.asynchronous}</param>
			<param id="keepConnection">${v.keep_conn}</param>
			<param id="reuseDelay">${v.reuse_delay}</param>
			<param id="idleWait">${v.idle_wait}</param>
			<param id="closeQueue">${v.close_queue}</param>
			<param id="controlQueue">${v.control_queue}</param>
			<element id="param" query="select adaptor_id, name, value from ${schema}.adaptor_param" filter-value="adaptor_id" filter-parent="adaptor_id">
				<attribute id="id">${v.name}</attribute>
				<text>${v.value}</text>
			</element>
			<element id="target" query="select id, client_id, host, weight, seq from ${schema}.client_target" query-value="id, client_id" filter-value="id__client_id" filter-parent="id__adaptor_id">
				<attribute id="id">${v.id}|${v.seq}</attribute>
				<attribute id="weight">${v.weight}</attribute>
				<text>${v.host}</text>
			</element>
			<element id="codex" query="select id, codex_id, adaptor_id from ${schema}.adaptor_codex" filter-value="adaptor_id" filter-parent="adaptor_id">
				<attribute id="id">${v.id}</attribute>
				<attribute id="src">/*/codex[@id=''${v.codex_id}'']</attribute>
				<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''codex''</attribute>
			</element>
		</element>
	</element>
	<element id="parser" query="select id from ${schema}.parser">
		<attribute id="id">${v.id}</attribute>
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''parser''</attribute>
		<element id="codex" query="select parser_id, id, codex_id from ${schema}.parser_codex" filter-value="parser_id" filter-parent="id">
			<attribute id="id">${v.id}</attribute>
			<attribute id="src">/*/codex[@id=''${v.codex_id}'']</attribute>
			<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''codex''</attribute>
		</element>
	</element>
	<element id="db" query="select id, driver, url, username, password, schema, timeout from ${schema}.dbconn">
		<attribute id="id">${v.id}</attribute>
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''db''</attribute>
		<param id="driver">${v.driver}</param>
		<param id="url">${v.url}</param>
		<param id="username">${v.username}</param>
		<param id="password">${v.password}</param>
		<param id="schema">${v.schema}</param>
		<param id="timeout">${v.timeout}</param>
	</element>
	<element id="dbquery" lazy="true" query="select id, query from ${schema}.dbquery">
		<attribute id="id">${v.id}</attribute>
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''db''</attribute>
		<text>${v.query}</text>
	</element>
	<element id="routing" query="select code_start, code_end, channel, start_date, end_date, subcodex, queue, status, additional, reply_to, reply_to_qmgr from ${schema}.routing_table">
		<attribute id="id">${v.channel}|${v.code_start}|${v.code_end}</attribute>
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''routing''</attribute>
		<param id="code_start">${v.code_start}</param>
		<param id="code_end">${v.code_end}</param>
		<param id="channel">${v.channel}</param>
		<param id="start_date">${v.start_date}</param>
		<param id="end_date">${v.end_date}</param>
		<param id="subcodex">${v.subcodex}</param>
		<param id="queue">${v.queue}</param>
		<param id="status">${v.status}</param>
		<param id="additional">${v.additional}</param>
		<param id="replyTo">${v.reply_to}</param>
		<param id="replyToQMgr">${v.reply_to_qmgr}</param>
	</element>
	<element id="mapping" lazy="true" query="select id, description, module from ${schema}.mapping">
		<attribute id="id">${v.id}</attribute>
		<attribute id="__id">${v.module}</attribute>
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''mapping''</attribute>
		<param id="description">${v.description}</param>
		<element id="group" query="select mapping_id, id, source, target, include_mapping_id, include_id from ${schema}.mapping_group order by id asc" query-value="mapping_id, id" filter-value="mapping_id" filter-parent="id">
			<attribute id="id">${v.id}</attribute>
			<attribute id="include_mapping_id">${v.include_mapping_id}</attribute>
			<attribute id="include_id">${v.include_id}</attribute>
			<param id="source">${v.source}</param>
			<param id="target">${v.target}</param>
			<element id="line" query="select mapping_id, mapping_group_id, name, text, seq from ${schema}.mapping_group_line order by seq asc" query-value="mapping_id, mapping_group_id" filter-value="mapping_id__mapping_group_id" filter-parent="mapping_id__id">
				<attribute id="name">${v.name}</attribute>
				<attribute id="seq">${v.seq}</attribute>
				<text>${v.text}</text>
			</element>
		</element>
	</element>
	<element id="host" query="select id, host, username, password, context from ${schema}.host">
		<attribute id="id">${v.id}</attribute>
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''rpg''</attribute>
		<param id="host">${v.host}</param>
		<param id="username">${v.username}</param>
		<param id="password">${v.password}</param>
		<param id="context">${v.context}</param>
	</element>
	<element id="rpg-call" lazy="true" query="select id, cmd, timeout, host from ${schema}.rpg_call">
		<attribute id="id">${v.id}</attribute>
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''rpg''</attribute>
		<param id="cmd">${v.cmd}</param>
		<param id="timeout">${v.timeout}</param>
		<element query="select id, host, username, password, context from ${schema}.host" filter-value="id" filter-parent="host">
			<param id="host">${v.host}</param>
			<param id="username">${v.username}</param>
			<param id="password">${v.password}</param>
			<param id="context">${v.context}</param>
		</element>
		<element id="arg" query="select rpg_call_id, name, type, length from ${schema}.rpg_call_arg order by id asc" filter-value="rpg_call_id" filter-parent="id">
			<attribute id="id">${v.name}</attribute>
			<param id="type">${v.type}</param>
			<param id="length">${v.length}</param>
		</element>
	</element>
	<element id="codex" lazy="true" query="select id, allow_partial, xml from ${schema}.codex" query-with-filter="select id, allow_partial, xml from ${schema}.codex where ${v.filter}">
		<attribute id="id">${v.id}</attribute>
		<attribute id="allow-partial" boolean="true">${v.allow_partial}</attribute>
		<attribute id="preload" boolean="true"/>
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''codex''</attribute>
		<xml parent-attributes="type,charset,mask">${v.xml}</xml>
	</element>
	<element id="dtree-map" query="select group, path, value, module from ${schema}.dtree" query-value="group, path">
		<attribute id="id">${v.group}|${v.path}</attribute>
		<attribute id="__id">${v.module}</attribute>
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''param''</attribute>
		<param id="group">${v.group}</param>
		<param id="path">${v.path}</param>
		<param id="value">${v.value}</param>
		<element id="map" query="select group, path, name, value from ${schema}.dtree_map" query-value="group, path" filter-value="group__path" filter-parent="group__path">
			<param id="name">${v.name}</param>
			<param id="value">${v.value}</param>
		</element>
		<element query="select ''CHARGES'' as group, id, c1_name, c1_value, c1_script, c1_account, c2_name, c2_value, c2_script, c2_account, c3_name, c3_value, c3_script, c3_account, c4_name, c4_value, c4_script, c4_account, c5_name, c5_value, c5_script, c5_account, c6_name, c6_value from ${schema}.charges" query-value="group, id" filter-value="group__id" filter-parent="group__path">
			<element id="map">
				<param id="name">charge_name_1</param>
				<param id="value">${v.c1_name}</param>
			</element>
			<element id="map">
				<param id="name">charge_value_1</param>
				<param id="value">${v.c1_value}</param>
			</element>
			<element id="map">
				<param id="name">charge_script_1</param>
				<param id="value">${v.c1_script}</param>
			</element>
			<element id="map">
				<param id="name">charge_account_1</param>
				<param id="value">${v.c1_account}</param>
			</element>
			<element id="map">
				<param id="name">charge_name_2</param>
				<param id="value">${v.c2_name}</param>
			</element>
			<element id="map">
				<param id="name">charge_value_2</param>
				<param id="value">${v.c2_value}</param>
			</element>
			<element id="map">
				<param id="name">charge_script_2</param>
				<param id="value">${v.c2_script}</param>
			</element>
			<element id="map">
				<param id="name">charge_account_2</param>
				<param id="value">${v.c2_account}</param>
			</element>
			<element id="map">
				<param id="name">charge_name_3</param>
				<param id="value">${v.c3_name}</param>
			</element>
			<element id="map">
				<param id="name">charge_value_3</param>
				<param id="value">${v.c3_value}</param>
			</element>
			<element id="map">
				<param id="name">charge_script_3</param>
				<param id="value">${v.c3_script}</param>
			</element>
			<element id="map">
				<param id="name">charge_account_3</param>
				<param id="value">${v.c3_account}</param>
			</element>
			<element id="map">
				<param id="name">charge_name_4</param>
				<param id="value">${v.c4_name}</param>
			</element>
			<element id="map">
				<param id="name">charge_value_4</param>
				<param id="value">${v.c4_value}</param>
			</element>
			<element id="map">
				<param id="name">charge_script_4</param>
				<param id="value">${v.c4_script}</param>
			</element>
			<element id="map">
				<param id="name">charge_account_4</param>
				<param id="value">${v.c4_account}</param>
			</element>
			<element id="map">
				<param id="name">charge_name_5</param>
				<param id="value">${v.c5_name}</param>
			</element>
			<element id="map">
				<param id="name">charge_value_5</param>
				<param id="value">${v.c5_value}</param>
			</element>
			<element id="map">
				<param id="name">charge_script_5</param>
				<param id="value">${v.c5_script}</param>
			</element>
			<element id="map">
				<param id="name">charge_account_5</param>
				<param id="value">${v.c5_account}</param>
			</element>
			<element id="map">
				<param id="name">charge_name_6</param>
				<param id="value">${v.c6_name}</param>
			</element>
			<element id="map">
				<param id="name">charge_value_6</param>
				<param id="value">${v.c6_value}</param>
			</element>
		</element>
	</element>
	<element id="param-map" query="select group, name, seq, value from ${schema}.param_map order by seq">
		<attribute id="id">${v.group}|${v.name}</attribute>
		<attribute id="seq">${v.seq}</attribute>
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''param''</attribute>
		<param id="group">${v.group}</param>
		<param id="name">${v.name}</param>
		<param id="value">${v.value}</param>
	</element>
	<element id="param-map" query="select group, device_id, teller_id, terminal_id, ctrl_unit_id, terminal_ip from ${schema}.dev_teller_map order by group, device_id, teller_id">
		<attribute id="id">device_teller_map|${v.group}_${v.device_id}</attribute>
		<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''param''</attribute>
		<param id="group">device_teller_map</param>
		<param id="name">${v.group}_${v.device_id}</param>
		<param id="value">${v.teller_id}|${v.terminal_id}|${v.ctrl_unit_id}|${v.terminal_ip}</param>
	</element>
	<element query="select group, original, target, detail from ${schema}.error_map">
		<element id="param-map">
			<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''param''</attribute>
			<attribute id="id">error_map|${v.group}|${v.original}</attribute>
			<param id="group">error_map|${v.group}</param>
			<param id="name">${v.original}</param>
			<param id="value">${v.target}</param>
		</element>
		<element id="param-map">
			<attribute id="timestamp" trim="true">SELECT MAX(TIMESTAMP) FROM ${schema}.RELOADTS WHERE BROKER = ''${broker}'' AND EXECUTIONGROUP = ''${executionGroup}'' AND TYPE = ''param''</attribute>
			<attribute id="id">error_map_detail|${v.group}|${v.original}</attribute>
			<param id="group">error_map_detail|${v.group}</param>
			<param id="name">${v.original}</param>
			<param id="value">${v.detail}</param>
		</element>
	</element>
	<!--element id="certificate" query="select trim(id) as id, trim(password) as password, trim(key_index) as key_index from ${schema}.certificate"><attribute id="id">${v.id}</attribute><param id="password">${v.password}</param><param id="keyIndex">${v.key_index}</param></element-->
	<!--	element id="monitor" query="select id, delay, script from	${schema}.monitor"> <attribute id="id">${v.id}</attribute> <attribute	id="delay">${v.delay}</attribute> <text>${v.script}</text> </element 	-->
</db-config>', CURRENT USER, CURRENT TIMESTAMP)~

INSERT INTO MWCONFIG.CODEX (ID, XML, MODIFIED_BY, TIMESTAMP)
	VALUES ('dsp-abcs-response', '<codex escape="true" raw="true">
	<!-- DSP HEADER -->

	<!-- ABCS HEADER OFFSET=246 -->
	<field id="ICLEN" type="numericBinary" length="4" padding-mode="left" padding-char="0" />
	<field id="ICHEAD" type="string" charset="cp1047" length="5" />
	<field id="ICRTRQ" type="string" charset="cp1047" length="10" />
	<field id="ICDEVN" type="string" charset="cp1047" length="15" />
	<field id="ICID" type="string" charset="cp1047" length="5" />
	<field id="ICCOMQ" type="string" charset="cp1047" length="10" />
	<field id="ICIPSF" type="numericBinary" decimal-format="packed" length="5" />
	<field id="TMTIMIN" type="string" charset="cp1047" length="6" padding-mode="left" padding-char="0" />
	<field id="TMTXTYP" type="string" charset="cp1047" length="5" />
	<field id="ICRSV1" type="numericBinary" decimal-format="packed" length="5" />
	<field id="ICEOM" type="string" charset="cp1047" length="4" />

	<!-- Common response field -->
	<field id="!type" type="script">dsp-abcs-response</field>
	
	<field id="tellerID" type="numericBinary" decimal-format="packed" length="4" />
	<field id="sequenceNumber" type="numericBinary" decimal-format="packed" length="4" />

	<field id="abcsResponses" type="multisubcodex" suffix="@!type" suffix---="_${msg[''!type'']}.${idx}" codex="dsp-abcs-subresponse" />
	<field id="!code" type="script" encode="true">${dtree("DSPRESP-CODE", "dspScenarioNumber")}</field>
	<field id="msgCode" type="script" encode="true">${dtree("DSPRESP-CODE", "dspScenarioNumber")}</field>
	<field id="responseCode" type="script">${ def l1 = [], l2 = [], l3 = []; 
	def m1 = msg.abcsResponses; m1.split("\\s").each { v -> l1.add(v) };
	def m2 = msg.msgCode; getParamValue("core-response-ok", m2, "999").split("\\s").each { v -> l2.add(v) }; 
	def m3 = "41 42 43 44"; m3.split("\\s").each { v -> l3.add(v) }
	return l1.containsAll(l2) ? "000"  : (l3.containsAll(l1) ? (msg.abcsResponses) : (msg.TLBERR_F2 != null ? msg.TLBERR_F2.padLeft(3,"0") : "999")) }</field>
	<field id="isF2code" type="script" encode="true">${msg.TLBERR_F2 != null ? msg.TLBERR_F2.padLeft(3,"0") : "000"}</field>
</codex>
', CURRENT USER, CURRENT TIMESTAMP)~