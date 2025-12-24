local anonteam_0_0 = db.escape_from_samara_extension or {
	configs = {},
	drag_memory = {},
	viewmodel = {}
}

if anonteam_0_0.viewmodel == nil then
	anonteam_0_0.viewmodel = {}
end

local anonteam_0_1 = _NAME:find("Trial") ~= nil

if anonteam_0_1 and not anonteam_0_0.trial_cache_1 then
	anonteam_0_0.trial_cache_1 = common.get_unixtime() + 86401
end

events.shutdown:set(function()
	-- function 1
	db.escape_from_samara_extension = anonteam_0_0
end)
cvar.clear:call()

local function anonteam_0_2(...)
	-- function 2
	local anonteam_2_0 = {
		...
	}
	local anonteam_2_1 = {}

	for iter_2_0 = -#anonteam_2_0, -1 do
		local anonteam_2_2 = anonteam_2_0[-iter_2_0]

		if type(anonteam_2_2) == "table" then
			local anonteam_2_3 = anonteam_2_2

			temp_array = {}

			for iter_2_1, iter_2_2 in pairs(anonteam_2_3) do
				table.insert(temp_array, iter_2_1 .. " = " .. tostring(iter_2_2))
			end

			anonteam_2_2 = "\n{" .. table.concat(temp_array, ", \n") .. "}\n"
		end

		table.insert(anonteam_2_1, 1, tostring(anonteam_2_2))
	end

	print_raw(table.concat(anonteam_2_1, ", "))
end

files.create_folder("csgo\\materials\\panorama\\images\\icons\\extension")

local anonteam_0_3 = "\x89PNG\r\n\x1A\n\x00\x00\x00\rIHDR\x00\x00\x00\x80\x00\x00\x00\x80\b\x06\x00\x00\x00\xC3>a\xCB\x00\x00\x00\tpHYs\x00\x00\v\x13\x00\x00\v\x13\x01\x00\x9A\x9C\x18\x00\x00\x1A\xFDIDATx\x9C\xED}}\xAC]Wu\xE7o\xAD\xB5\xCF\xB3c\xC7(\xAD<!\xB4Uc\xB5\xF1@\x13FmE\xCBGJ\xDC\x96\bD\xCBG\xA0L5\x82\x89\t4\xA1\x01\xDA\xA4!-\t\xA1!Q\x02\xA5\t\xA1\xE1\xC3I\x93\fa\xDA\x90\xA8\x95:\xD3a\xC2\xC7LU\xE4\x82\fB$-\x9A\xA9D\x8CS\x1B\xD5\x16\x91 Q\xD4\xA6\xC4\xCF\xC4\xEF\xEC\xB5V\xFF\xD8{\x9F{\xEE}\xF7\xF9\x9Es\xDFG\x9E\xFD\xEEOz\xBA\xF7\x9E\xB7\xEF=\xFB\xEC\xF5[\xDF\xFB\xDEC\xEE\x8E\x196.\xF8\xD9\x9E\xC0\f\xCF.f\x04\xD8\xE0\x98\x11`\x83cF\x80\r\x8E\x19\x0168f\x04\xD8\xE0\x98\x11`\x83cF\x80\r\x8E\x19\x0168f\x04\xD8\xE0\x98\x11`\x83#\xF4}\xC35\xEF\xBE\x17f\nw\x87\x99B\xDD\xE1nPS\xA8)\xCC\x14f\x06\xD5\bwC\xCC\xAF\xD3q\xDDjf?\xE9\xEE?\x13M_\x00\xF8\xD9\xA6v\xA6\xBA\xFE(\xB9\x9Fa\xF0\xADf\x1E\x00?\xCD\xDDO\a@\xEE\xEE\x86\xD4\xAF\xA01}\x8Bg\xBB\x97AD\x8B\x8Ey>\xC6 P\x1A\xE0Dt\x14\xA0\x1F2Sd\xD0\xBC\x13\xFD\xAB\x90<\xC5\xC2\x8F\x03t \xB0\xEC'\xA2#\xCC\xFC}fy\x8AY\xC0\xCC\b, b\x88\x0403\x98\x05\x92\xFF\x88\x18B\x04f\x01\x11\x81\x88q\xDB]\xEF\xE85\xFF\xDE\x04h\v?\x9A\xC1\xDD\xF2\xF3,x\xABa\xDAz\xAD\x11f\xFA\xD3f\xF6\xAAh\xFAJS}\x91\xBA\xFE\x88\xBB\x053'w#u#r\x17u#O\x84b\x00p\a\xDC\x8A\x80\xD3\xE3\xA8\xC0\xDD\xAD\xEF%\xAC(\x88x\xE4u!Dz$&\xE4C[\x88\xD8\x88\bB\xECNdB\xEC\x14\xC9\x989\xD6\xC4\x9E\b!\xFF\x10X\xFE\x86\x99\xF71\xCB\x01\xCB\x82w7\xB0\b\xC4\xF3\x1A\xB8\x83Y\xE0\xC4\b\x00\x98\x05@\xFF\xB5\xE8M\x80\xB6\xF0\x93\x05HZ\xAF\xAAP\x8DP\x8DY\xF8\n\xD5\xB8\xC3\xCC.\x8D\x16_\x1B5\x9Em\xA6[\xCCl.\x9A\xD2\x80H\x06\xB7dE\xDC\r\xEA\x06\xC0\x91\x88\x90\x84\xBD\x94\x05\x18\xA7\xFCe\xECj\x81\xB1X\xE3G\x8D@\xDB\x02\xA4\xFFS&\x06\xB1\x10\x83\xD2\x9F\x10\x13\x98\x19\x94\xB58\xB0\x9C\xCE\xC6\xFF!\xB2\xBC\"H\xF8^\xE0\xF07fz\xB7Hx\xD4\xD8\x10\xCC\xE0\xE2\x10\t\x00\x1C\f\x87\x90 \x02-\x12\xF4\xC3T\x16\xA0-\xFC\xA4\xE1\x86\x18kD\x8B\xD0\x18\xA1\xA6\x9B\xA3\xC5w\xA8\xEA\xEE\xA8\xF5\xF3U\xE3V3\x93L\nD\xB5\xEC\x1E\"\x00G4\x05\xB9gw\xE2 w\x18\xBC\xD1~\xCF\xA4\x18Z\xE4u\xD6\xC6^\xEC\n\xA8\xB1\x0E\xC4\x04\x06\xC13\x11\x84\xD2\xF3\xC0\x02\x80\x108\x80\x88a\xC2$\x1263\xCBf\xD5\xB8-J\xF8\xF1 \xD5.q{ \xB0|\xCA9\x1C5\f\x14\xC3\xDD\x81\xAC\xF8\x85\x04}\xD1\xFB=\x8D\xCF\xF7\xA2\xF1\n\xD5\x1A\xAA\x8A\xA85T\xE3\vj\x8D\xEF\xD1\x18_\x13\xAD>KU%Y\x85\b\xD3$\xF4\x12\x1Fh\xB6&\xC9\x02h\xA3\xF5\xD6\xBA@\x1Fg\xFA\xD7\x99\xF0\x1B\xB4HP\bA\xA0\xE69g\x02D\"\x10\t\"'\xCDW\xAAA\xC4\xA8UPI\x05\x16F\xE0\xC0f\xB6\xCDL\x7F.h\xF5\\\v\xE1g*\xF1\x8F;|?\t\x008D\xAAt\xB2L\x02\x1D\x13\x8FL\xC2\x14.\xA0\t\xE8\xB2\x8F\xAFQ\xC7\b\xB5\x88\x18\xEB\vk\x8D\xEF\x89Z_\x10c\xDC\x16-\x92\xC5\x1AQ\x15\xB5\xD6\xADXAa\xD9rX#t\x03\xDC\xA1n\x03\xCD/>-[\x84\xE1y\xAC/\x12\x8CZ\x00\x065\x84 \f,\x81\x10\x03D`\xCA\xA6\x9F\x92\x1B`\t`\x16\x98)X\x05&\x86`\n\xB3\xC0&\xFEc\x01\xF6_\xDC\xFD\xC7+\xF7\xDB\x01\xEC-J\x92\xDC\x8B\x02\f\xB0\xF7O\xEA\xFA[\x80,DUE\x8CI\xF3[\xC2\x7F\x7F\xAC\x8F\x9F\x1FM7\xC7X\xA3\xD6\b\x8D5j\xAD\aqA\xAC\xA1\x96\xB2\x06\xB8#\xAA\xC2a0\xB7l\x01\x00\x8C\x98\xB9\xB6\xF0\xC7e\x02\xEB\t\xDE\"\x02\xB7\xB4\x9F\x88\x00M\x01!\x15\x02\x80\x11D\x00\"\x88*\x84\x19\x16\xAA\x86\bf\x15\xC4\x1D\xE2F\x80?\af\x17\x02\xD8bp\xCC\x05\xECe%\x00u>\x1BAI{\xCFw*\x02\x94\xE8>ZD\xD4\xBA-\xFC_\xAA5n\xAA\xB5F\xAC#j]\x18r\x0FQu\x90.jL\xDA\x9E\x03AC\xF6\xFDf\xF0B\x80\x96\xB0m\x89,`\xBD\x81Z\x01\xA0\x0E\x0E&ME\xD2v\xA7\x14\x1303\xA2%\xAB\xA0\x12Rzg\x96H!\x15\xDC\r\xE2\x86\xCA\xE6\x92r\x84\xB9M\x00^\x06lz\x7FDm\x00\xBE\xEC\x04 \xA6ldM\b`\xA6P\xAB\x93\xFF\x8F\x11\xAA\xF1\x85\xB5\xC6\xABc}\xFC\xFCZ\xE3\xA6\x85\xB8\x00\x8DI\xF81F\xD4\xB1NnBc\xB2\x1EZ\xE7\xBA\x805\xF5\x03\xCF\x04X\xCA\x02\f\x9D\x7F\x8ATg-\xC1\x18\x9F\x16\xE6,``\x01@ f\b\v\x94\x18l\x9A\xF2~\xA9\xA0&03H\xB6\x00)\x00\x9E\xC3B\xFA\xC8M\x00\xCE\a\xF0\xFBD\xF48\x81\xF6s \xA8\xD5\x8B\xB2\x91.\x98\x82\x00\xD6\xE4\xF9j\xFA\x9CZ\xE3UQ\xEB\x97G\xD3\xCD\xB5\xD6\xD0\x18\xB1\x10\x8F\xA3\xD6\x88X/ \xE6\xD4\xB0\xCE\x16 Z\x84kv\an)\xD7/\x96\x00\xD9\xFF\x8F\xA4\x7F\x00\x96$\xC4z\xC3\xB0\xC0\x13\x9A\xD4\x91(g\x04\xC9\xFF\x931\"E\b\xA5\x02\x0F\x89\xC0\xCC\x93\x05\xC8\xC1\xB0{\xD2jw\xC7\x1CPH\xB0\x19\xCC\x17\x10\xD1\x95D\xF4{d|\x9C\x95a\xB4\x06i`;\xCF\x8F\x16\xDF\xA11\xBE&\xC6\xB8-\xC6\x81\xD9O\xC2?\x8E:\x16\xC1'7Pb\x80R@RW\xB8\xB6\xB5\xBF\xB0\xBD\x14\x81\x86\xB5}\xB5s\xFC\x95\xC2h\xAD\x80\x98\a\xDA\xA9\xD4\xD4\x05\x18\x04\x92$8\xB2\x14\xF4QHY\x96\xB9!\xB8\xC1\xBD\x1A|N\xB6\"u\xCA\x1A\xB61\xF8uJ\xFC-f\xBD#\x1A\x834\xF6\x9E\xEB\x94Y\x80A5\xEET\xD5\xB7D\xAB\xCF\x8C\x16\xA9\xD6\x81\xD9\x8F\xF5\xC2\x90\xF0c\xCC\xB1B\x8E\xFCS\n\x99b\x89d\xEE\xD1\xB8\x81\x12\xE4\x8DM\xFF\x86\xE6\xB1\xBE\xC8\xD0\xD6x\x1D=\xAE\n\xCA\xA4\xF0\x96\xF97\x02`\x04e\x85\x88\xC0]\xA0n\b\x12\xE0^-q\x8D\xC9\x8A(\xD5\x14\x99\xCEb\x93\xB7\xB1\xC6\xCF\x13\xF1\x11\xA15\xC8\x02\xA25\xC5\x9F\xDF\x8DZ\xBF@U\xD9b\x9D\xA2{\xADQ\xC7$\xE8\"\xFC\x85\xFC\xBF\xA8Mu\x101W\x015\x17\x80\x1C\xC3\x95?\xB4\xD2\xBFQ\xAC7\xC1\x17\x94Y\x8D\xA6\x83\x9E\x0E\xE6WI@N\x04\xF2\x14\x14:\x11\xC4\x93\xCFw6\x88\x84\xEC\x16\x1D\x86a\xED'\x8AP\"(14U\x0F9r\xFD\x1F\x03\xCB\xA5fz\x83\xD9\x9AT\x02\rf\xBA3Z\xFCu\xD5xZ\xA9\xEC\xD5\xD9\xCC\xA7\xA8?6\x9A_\x84\x1Fm\xE0\x06\xA2f\xC1{\xAA\x03\xA0\xE5\xE7\xD2\xA2\xE5\x1C\xD7\x96\x16\xF6z\xE3A\x91\xF1\xB8i9\x97z\x805\x83\x131R\x13\xC7\xDCs\xFA\x98R^i\x05\xBA)\x95\xACS\x9C@\x84\x9AS\x8515\x8B\"\x98yk\x94\xF8z6\xFE\x8C\xBA\x1D\xEA;\xEF\xA9\xB2\x003{E\xD4x\xA6\x99Q\xB4l\xFAs\x84_g\xEDo\xA7~E\xF8\xAA)\xFDK\x82Ou\x80R\xED#\x1B\xF8\xFEf\xE1z\xFB\xFC\xB5\xCA\x10\x16\x9B\xDA\x13\x122\xFB\x04\x87\x83(\x91\xC4\x99\x92\xBB#\x82\xE6\xCA\xA0\xBA\xC3G\x94\x98\xA8\x06Q\xF2\xFB\xC8E\xA3\xC8\x02\xD6\x1A,\f\xB1\xC0Q\xE3\x8E\xC0\xE1Uf\xBA&\x04xN4\xFD53\xDD\x94*z\x83\xCA`\xC9\xF3c\xA3\xE9\xB1\xD5(\xCA\xB9\xBF)\x90\xCB\xBE0k\x16n \xEC\xA5\xCD\xFF\xFAA\xFF|\xBB\x98\b/\xD5:\xCD\xD7L\x00\x98\x01r\xE8H\x14\xCF`D-\xE5d\x06sZ[\x96\x94MUZA9BDN\x8B\xA6\xAF\x14\xD3\xCF\x008\xDAgZ\xD3\xB8\x80\xE7\xB9\xD9\x8BrW/\x15\x83\x9A\n_\xD6zK\xA6\xBF\xD5\x0E\x1E\x12\xBE\xB9\x01:\x88\xF8\x01\x1B\x11\xF8z\x16\xFE\x94pG\x92v&\x0F\x11\x00N\x87\xD5\x00\x02H\xD2\xD3\xF2o\xCD\x95D\xA3\xB4\xCE\xAC\x94\xEA\x06\xB1\x06\xB3\xA0\xD6\x1AA\x04f6g\xAA/\x8A\xA2?\x01\xE0@\x9FiM\xD3\x0E\xDE\x11-\x9E\x91Z\xBA\x03\xED/\xE5]3\x83k\xCA\xF1\xD55\xBB\x06M\x1D\xBDE\xC2o\v~\t\xA1\xAFkK\xD0\x01CA\xA1\x8F<\xD5\x16\x11r\xB6 \x809\xC1U\x01\x10\xC8\x19d\fV\x85\xB1 \xC6\x98+\x86\xC5\xCA\x1A\xD8\x14\xE2\xFA\xA3s\x8Es\xB1\xDA\x04P\xB7s\xDD\x8D\x90\vBI\xBB\x93`K\x83h\xD0(\xD2A{\xB7\x98\xFD\"|/ftD\xC0'\xBB\xC0G1z=\r!\xBC\xF5\xA0\x00I\"A\x0E\x8A\xD99eJ\xAA\x10\x92fM\x9D\a\xA5t\x97\xD04\xE7\xF2\xEE\xAB\x17\xF4\x9D^\xEF\xC4\xD1\xDD\x9Eo\xE6\\4\xBC\xB4\x87=[\x80\xB2\xA9#m\x14\xC9V!w\xFA`\xA5\xAF_\x82\xB5S\\\xF8\xE3\xB0\xE8\x1A\xDB\xB1O^\xA3\xDC\x1Dm\xFA.^\xAA\xA6im\xAD\xD4b\xDCSe5\xF5P\x04\xF0\xB3\xFBN\xA77\x01L\xED,w\ve\a\x0F\xCC\x92\xF9\xCF\xE5\xDCD\x02\xC05]\x10\xF9 \xC7\x1FX\xFB\xB6\xFF\xCF\xAF7\x82\xF0\v\x16]\xEF\xE0u\xA9\x01\x14\xCB\t8\\S\xB0\xACe\x17\x95\xA6\xF4\xB9h~\xEA\xAB\xB8\x98\xDAs\xFBN\xA5?\x01`g\xA8\x1BL=kx\xE9\xE8iK\xD0\xA5\xBC[\xA2{[\x1C\xE5\xB7\x17c\xA3b\xD1\xB5\xA7\xB5\xF1\xEC\"=\xAFaZ\xCBdeS\xB74\xB7\xCEm\xB0\x7F\"[\xDD3\xFAN\xA1\x7F\xED\xD0\xEC\fr\xA7b\x01<\avV\xF6\xF3\xB55>\x93\x03^\xF2|_\xAC\xFD3d\f\xD6fP\x13\x19\xACa\xD9\x17a\xF0f\xBD\xDD\a\x055r'r?\xA3\xEFY\xA7\xB0\x00~\xBA\xBA\xB17\x9D<o\x84NyG\x8F\xC1\x9A\t\x0F\x97xG\xAFyF\x84\xA5\xD6\xA0-\xF4\xA6S\xEA\x03\x97:P4\x94\xD8\x80\r~z\xDF\xD3\xF7'\x80yh\xB3q0Id_\x84\xD6V\xEE\xD1\xEB\xB4\xD1\x033\x00#kaC/\x9B8\xC0\x86\xD7\xB8\x89\xB9\xDCZ\x1Bk\xBCwV7\xCD7\x836\xB7\x03\xBB\xC1.\xD5\xC1\x06\xCE\xC6\x94\xCD\x84\xDC\x13\xAD\xFD\x0FC\xD9\x12\x06A\"\x06.t\xD0\x1Eo\x02\xC6\xCD}\xCF8\x05\x01|\x9B\xC1\x1990A\xD6\xF8q\xFD|4\xD3<\xC5\xAB|+\x89\xB1\x1D\xD0\xF28\x88\a\xD2\xC6\x99t\f\x00\x92L\xB0\xAD\xEF\xE9\xA6\xA8\x0387\xBE\x1F\xD9W\xB5\x98\xDA\xDE\xC4\xE9\x18\x17\x00\xCE0\x19y\xCD|`U\x17\xED\x8A\xCE1\x01\xD0r\xBD\xDE\x7F[\xF04\x04\xB0\xFC8\xE4\xEBG7q6\x19\xC0\xF8\x0F\xE9{\xDAS\x1F'\n\x06m\xD8\x15\xF8\xD0:\x0F\xC9\xA0w;t\x9A,\x00n\x8B\xB5\xFCd\xD9\xB5{2c\xE8\xABr#\xD6\xA1-\x93>X\xD6\xD7\xC3\x8BOZj\xA23\xAC\x1C\x16\xEF\x8E\x1E\x14\xDD\x96\x83)\t0\xDC\xC1\xB3%\xFC\xD4\f+\x8F\xC5k<\xA1\x9B:\x01\xBD\tPR\xC0I)\xDE\xCC%,\x1F\xA3\xDF\x8E^\n]e2\x0E\xD3|\xA1\xF4\x84\x930\x9C \xF8\x1B\x83\xCB/\xDB\x8D\x97_p\xFEJMc,\xBE\xF6\xD5\xAF\xE3\x9E{\xEF\x1F:v\xCE\xCE\x1D\xB8\xF1\xFAk;\xBD\xFF\a\xFF\xF64~\xE7\xCAkz\x9F\xB7\xCF\xB5}\xEB[\xFBq\xEBG\xEFX\xF2\xFF\xA3\xD5\xC0\x95\xC2\xF2\t\xB0\xCC\xC9\xBC\xFC\x82\xF3q\xF1[\xDE\xBC\xECiL\xC2(\x01\x0E\x1D<\x8C\x9F\xFF\xD9\x9F\xC5y\xE7\x9D\xDB\xE9\xFD?\xF8\xC1\xBF\xE1\xBA\xEB\xFF\xA8\xF3\xF9\xCE\xD9\xB9\x037\x7F\xF0F\x9C\xB9}{\xA7\xF1\xBF|\xE1\xAB;\x7Fv\x83\x15 \xC22\x83\xC0\x13\x9B\xF9\xC1\xFF\x97s\x96\xD5\xC3\xBB\xAF\xBC\xBA\xF3\xD8\xDF\xBA\xF4\xED\xBD>\xFB\xC6\xEB\xAF\xED,\xFC\a\xFE\xE2/\xB1o\xDF7\x86\x8E\r\x8A?\x93\xD6vy\x8B;5\x01\xD6\xABP\xFB`\xDF\xBEo\xE0\x81\xBF\xF8\xCBNc\xCF\xDC\xBE\x1D\x7F\xFC\xA1?\xEC4\xF6\x9C\x9D;\xF0\xC6\x8B.\xEA4\xF6\x89'\x9F\xC4M\x1F\xBA\xB5\xD3\xD8\xA5\xB0\x1CYLS\bZv\xEA\xB1\x9Ep\xD3\x87n\xC5\x13O>\xD9i\xECo]\xFAv\x9C\xB3s\xC7\xC4q7^\x7F-\xB6n\xDD\xD2\xE93o\xBF\xFD\x138t\xF0p\xA7\xB1'\xC2R)\xF9$l\xF8\x9F\x89;t\xF00n\xBF\xFD\x13\x9D\xC6\x9E\xB9}\xFB\xC4\xC0q\xD7\xAE\x97v\x8Ei\x1Ez\xF8a\xDCz\xDB\x9ENcW\v\x1B\x9E\x00\x00p\xEBm{\xF0\xC8#\xFB;\x8D}\xE3E\x17\x9D\xD0\n\xDC\xF0\xFE\xF7u\xFA\x9C\xF9\xF9c\xB8\xE6\xBA\x1B:\x8D]M\xAC!\x01\xD6\xB7\xDBx\xF7\x95Wc~\xFE\xD8\xC4q[\xB7nY\xD2\n\xEC\xDA\xF5R\\x\xE1\xAFt:\xDFg\x1F|pQ\xE07\xC0\xDA\xAD\xD5\xD4i\xE0ZW\xFD\x0E\x1F9\x82\xF9\xA3\xF3S\xBD\xF7\xB1\xEF>6q\xCC\xBE}\xDF\xC0g\x1F|\xB0\x93\xF9NV\xE0\xD6E\xBE\xFBO?y{\xA7\xF9<\xF1\xE4\x93\xD8}\xC9\xBB:\x8D\xED\x82\xE5\xC8b\xC5\nA\xAB\x8D[n\xF9\xE8\xA2\\~\xA5\xB1\xFB\x92w\xE1U\xAFz\xE5\xC4\xF4\xADX\x81\xB6\x10/\xBFlw\xE7\x9A\xC2\r\x1F\xB8iY\xF3\\I\xCCb\x80\x11t\x15\xCEh,p\xC5\xEFv\xD3\xE8\x87\x1E~x\xD5\x89\xDC\a3\x02\x8C\xE0\x9E{\xEF\xC7C\x0F?<q\\;\x16\xE8\xAA\xFD\xF3\xF3\xC7p\xF1\xDB~{\xD9s\\I\xCC\b0\x06\xD7\\wC\xA7\x80\xB0X\x81\xB7\xBF}w\xA7\xCF\xBD\xEF3\x0F\xACH\xCE\xBF\x92\x98\x11`\fJ@8\t[\xB7n\xC1\xDD{>\x8E\x97\xBC\xF8\xC5\x13\xC7\x1E>rd\xAA\x86\xD2jcF\x80%\xB0\xFB\x92wu\xAA\x10vM\xFBn\xB9\xE5\xA3\xCB\x9C\xD1\xEA`F\x80\x13`\xA5\xA2\xF5\xBD{\xBF\xB2\xAE\x02\xBF6N\x9A4\xF0}\xEF\xFB\x83\xCE\x916\x00|\xFE\v_\xEC\xD5\xBE\x1D\x87{\xEE\xBD\x1F\xBF\xF9\x9F\xDF\xD4Y\xCB\xC7a~\xFE\x18\xDEy\xC5U\xCB\x9A\xC7j\xE2\xA4!\xC0\x8E\xB3\xCF\xEE5\xFE\xFF\xFD\xE3?\xAE\xC8y\xDFy\xC5U\xF8\xFF\x7F\xFF\xF5\xCE\xCD\x9DQ\xEC\xB9\xE3\xCEu\x17\xF8\xB51s\x01\x13p\xE8\xE0a\xDC\xF7\x99\a\xA6z\xEF#\x8F\xEC_\xB6\x15Zm\xCC\b\xD0\x01\xBFs\xE558|\xE4H\xEF\xF7\xDDx\xF3\x87Wa6+\x8B\x19\x01:\xE2\xEE{\xEE\xED5\xFE\xA1\x87\x1F\xC6_\xFF\xAF/\xAC\xD2lV\x0E3\x02t\xC4\x1B\xDF\xF0\xBA^\xE3_x\xDE\v;m\x1Ey\xB61#@\a\\~\xD9\xEEN\xC5\x9E6\xB6n\xDD\x82\a\xFE\xFC\xBF\xAD\xD2\x8CV\x0E3\x02L@\xD9\xDD;\r^\xF2\xE2\x17\xE3\xF2\xCB\xBA\x95\x89\x9F-\x9C4i\xE0\xDE\xBD_\xC1\xF7\x1E\xFF^\xE7\xF1_\xFB\xEA\xD7W\xE4\xBC}v\xF7\x8E\xC3\xCD\x1F\xBCq\xDD\x16\x81\x80\x93\x88\x00\xFF\xE3\x7F\xFE\xF5\x9A/d\x9F\xFD}K\xE1\xCC\xED\xDBq\xFF}w\xAD\xE8\x06\x90\x95\xC4\xCC\x05\x9C\x00]w\xF8L\xC2\xC5oy3v\xEDz\xE9\x8A|\xD6JcF\x80%p\xED{\xAF\xE8\xD4\xE3\xFF\xDF\x9F\xFB|\xA7\xCF[)2\xAD4f\x04\x18\x83sv\xEE\xC0\a\xFE\xF0\xBA\x89\xE3\xE6\xE7\x8F\xE1\xBD\xEF\xFB\x00\xF6\xEE\xFD\xCA\xC4\xB1\xE7\x9Dw.\xAE}\xEF\x15+0\xBB\x95\xC5\x8C\x00cp\xDB-\x1F\xECT\xFB\xFF\xEC\x83\x0F\xE2\xD0\xC1\xC3\xB8\xF9\xC3\xB7t\xFA\xDC\xAB\xAF\xFE\xBDuW\x1B\x98\x9A\x00\xE3n\xA2|*\xE0M\xBF\xF1Z\xBC\xE1\xF5\x93\x8B>\xF3\xF3\xC7\x9A\xAFt\xED\xDB\xF7\x8DNV\xE0\xCC\xED\xDBq\xDB-\x1F\\\xEE\x14\x17a9\xB2XC\vpr\x18\x9B\x8F~\xA4[\xF3\xA6h\x7FAW+\xF0\x86\xD7\xBF\x0Eo\xFA\x8D\xD7N\x18\xB5vkurH\x05\xC0\xDDw\xED\x81\xD7OM\xFD\xD7\xA5 s\xE7'?\xD2\xA9\xED<\xEE\v\x9D]\xAD\x00\x00\xDCt\xC3\xFB;\x8D[\v\x9C4\x04Xm\x9C\xB3s\a.y\xEB\xC5\x9D\xC6\xFE\xF7O\xFF\xD9\xD8\x1E\xFF;\xAF\xB8\xAA\xD3f\xD2\xF3\xCE;\x17w~\xF2#}\xA7\xB8*\xE8\xFF\x131\x94\xEE_s\xAA\xE1\xEE=\x1F\xEF\x14\xF8=\xF1\xE4\x93K\xF6\xF8\x0F\x1D<\xDCi3)\x00\\\xF2\xD6\x8BW4 \xA4|7\xF2\xBE\x98Z\x92\xD3\xDC\xA7v\xBD\xE2\xF2\xCBvw\xDE\xF65i\x9F\xE0M\x1F\xBA\xB5\xF3w\f\xEF\xDE\xF3\xF1N\xE7\x9C\x84\xE5\xC8bY\xAA<\xEE>\xB9\xE3\xFF\xBF\x9C\xB3\xAC>\xBA6{\x1Eyd\xFF\xC4r\xF4\xA1\x83\x87\xB1\xE7\x8E;;}\xDE\x85\x17\xFE\xCA\x92\xB1IY\xB3\xC9k\xBB\xBC\xC5]\xBE-_\xEF\xD2\x9D\x80\xFB\xEF\xBB\xABs\xB3g\xCF\x1Dwu\x1Aw\xDD\xF5\x7F\xD4\xF9G'\xA6\xED4\x02X\x91\xB5_1g\xEE\xCD\r\x91\xA7\xF3E\xCF\x06v\xEDzi\xE7\x9Fr\xE9\xBB\xB5\xBB\xCF\x8FN\xDC\x7F\xDFdb\xB5\xD7\xD6Wp}\xFB\xFFDL\x16\xF4\xA4I\x94\xE2\xC4z&\xC3G\xFE\xF8\xE6\xCE\xBB}\xBB\xE6\xF9\x05}\x7Ftb\\\xB3\xA8\xAC\xDD\xA4BOW\x99\x8C\xC3\x94\xED`\x1AyL\x98\xA6\"\xB5R}\xFBI\xF8\xF6?\x1D\x1Cz}\xCE\xCE\x1D8x\xE8;8x\xE8;\x13\xDF\xFB\xD8w\x1F;\xC1\x8F9,\x8D\x1Bo\xFE0\xDEp\xD1k:\x8D}\xD9K~\x11\xFB\xBE\xFA\xD0\xC4qe\x8Dy\x91\f\xA6S4\xEA\xFB\xC3B\xAF\xF8\xD5K\xE7\x17\x8E\x1F\xDF\xF2\xC3\xFA\x18\xEA\x85\x05\x1C\xAF\x9F\xC1\xC2\xC23x&.@\xEB\x05,\xC4:\xDD9\xBC\xAE\xA1\x16\xE1\x16\xE1\xF9\xFE\x81\xE9^\x81\xB3\x9F\x8D_\x12D(\xB7\x10%\"\x90\b\x88\x03\x84\x03BU\xA1\x92\ns\xA1\x82Ts\xD8\x1C\xE607\xB7\x19\x9B\xAA\xCD\xA8\xE6\xE6pZ\xB5\x05s\x9B6\x1D\xFB\xBB/\x7Fzk\x9FSN\xF1\xFB\xF2\xE9\xFE\xF5\x8D\x89\a\xA5\x9B\x1A\x9F\x04&\xFFd\xC7\x90K\xA0t\xFB\xF9\xF2\xBA-\x93>\x98\xA6\x10\xD4\xBC\x87\x98\xDA\xC7\x87\xA2R\xE2\x13\x04\x833\x92,\xC6\t\xD2=b\x1E\x1AGC\xEBL\xED\x94p\xF5o\x18ADF\x04p\x9E\x14\x11\x81F>f\xD4:8g\xD36\xC3dd7\xE0<F\xCB\xDB\x82oe[\xA9:\x9Bd\xD3\xF7t\xD3\xA4\x81O3\xD2\x89\x888\xB9\xAC\xCC\xC2v\x99x,\xA1g\x9A?\x01m\x01\xA7\x9BJ\x03\xEDek\xAD3SZ{bd:\x18@O\xF7=\xE3\x14\x04\xA0g\x9C\x06\x1A\xDD\x8EF\v[\x87\x05\xCD\x83\xE3y\xDC\f\xDD\xD1\xAC5\xB5\xAC*J\xCDe@\x88\x9C\x02>\xD3\xF7\xF3\xFB\xFB\f\xA6HD\x10bHn@\xA4\xC7\xE4\x16\x88Jl0\x9C\x97\xA6\xA7\xC3\xBEl\x86\x8CQ\x85\x19\xB34\xC9\xCA\x0E\xD6\x98[$h\x9E3\xC5\xBE\xA7\x9E&\v8*\xC4FY\xE8%\xF8+,lW\xAC\xDA\f\x1D\x8B\x19\tN\x1C\xFC\xB5\xD6\x90\x91\x14\xAE\xACqYs\xCAn@\x88\x8DAG\xFB\x9E~\x9AJ\xE0SN\xE4\xD4LF\xC0\xC4\xE9\x0F\x8B\x85^\x1E\x9B@\xB0\xE5>fhc\xB06M\x00\x983\x00j\t]\xCAZ\x13\x83Hr\x1B\x98\xE1D\x0E\xE6\xA7\xFA\x9E\xB57\x01\x84\xE4)!\x06q6\xFD%\x00\x04'\xF3\xC4iB\f\x02K\xF6\xFF$\xAD8`\xE4\x94\x1B\xD9\n,\xBA\xF6\x1C\xF4\xE5\x00\x90@-s? \x02s*\x14\t\xA75g\xC9\xC4\xC0\x1A\x10\x80\x85\x1F'\"\x95\x1C\xF13\v\x98\xB2\xB0\x89 ,\xC9,I\x8AN\x9D\x06\x16a\xF8z[/6\x1A\tFj&CA\x1E\r\xCC\x7F\t\x00I\x92\xBB\x95\"xb\b3\x90\x95-\xFFE\x16\xFE~\xDF\xA9L\x93\x05\x1Caf\x053\x02\a\bQb!\r|T\n\x10\x05\xCC\xDCLz\xA8\x1E@2\xB8\xF0%\x17\xE5\x14\xC5\xA2kl[F\x02\x98Se\x95\xD2\xDA1\xA7\xB5\x94,hai\xAC\xAC\x105\xFFc&#\xE2G\xFBNg\x8A,\x80\x0F\x14\xCD/\xECc\tY\xD0\x82\xC0\xD2\xFCO\xA4\b\x9F\x9BX!]\xFF(\t\xC6\x10\xE1T!\xC4\x92\xD7\xD3\x8A\x89H\xD2s)\x96R\x1A\xCB)\x92H\xC0\xDCz$\x06KZg\x16)\x96\xC0\x85\xF8\xDB}\xA7\xD7\xBB\x1BHD\xFB\x85\xE4_\x02\xCBV\x13F\xADi\"\xC2\x8C \x02u\x06\x89 \x98\xC2]\xE0l\x00\x1C\xEA\x0E%I\xD7\xAA\n\xF76\tl\xE4\xB6w\xED\xFB\xA7\x9F\x02$h0\xEA\xF6xp\\\x92\xD6#+\x8AHR\xA6F\xFBe`Q\xA5!D:\x16X<px\x8A\x88\xFE\xB9\xEF\x8Cz\x13 \xB0<\xA6\"\xDFd\xE3\xE72\xCB\\\xE0\x80\xC8\x11\xCC\x01\"\x06QE`\x83\xB3\x80\xDD \x12\xD2].\xB3\xAC\xD5\x92\xDC\xDD\rd\xA51(\x00\x15\xA1[Z\x90S\xADcHmS\x0F\x142$\x1E\xE4\xB2.I2\xFB\x12\x92RIH\x02\x0EU\xEA\bJ\x95\b\x10*\x04\x16\x04\x0E\xD9\xE2\xF2\x021\x7F\x93\x99\xBB\x7F\x7F>\xA37\x01\x98\xE5h`\xF9Rd\xF9U\x910'!\"X\x80\x05\x83YD\b\xA1\xB9\xB3\xB5\xC3\xE1\x0EHs/\xC1t:s\x02\xBB&\xA1\xBB\x03\x96\x84\xDE\x90\xA1Y\x9F\xBE$X\xAB\x1B-\xF4\xF5\x9C\xA3\x05\xB1\x94\x16\x13\xDA9}1\xED\x01\"\x92M\xBF d2\x04I\xE4\b\xC5\xF4\xB3\x80\xA5\xB1\x04\xC7\x03\xCB\xFFe\x96\xDE\xA5\xE0)\\\x00\x83\x99\xFF6H\xF8m\xD5\xF8\x9F\x02\a61\x98),T\x107\x98\a\x98\x1B\xD4\x03B\xD1\xE4\x00\xA8*\x88\x00W\x059\r\xEE8N\x9AW\xA5uCj\x00'jm\x8C7\x102\xEE\xE0\x9A\xE0D\x9E\xCA\xB9]\xC6-\r4\xA0\xF4\xFD\xB9\x04\xCFY\xB8\xC9\xFCW\b\"I\xEBEPI\x85J\x92\x15\b,\xA8d\x0E\x81\x03\x98\xD9\x83\x84\xC7\x99\xF9\xCB\xCC\xD2\xDBlN\xE3\x02`,\x87\x98\xE5s\"\xE1\xA7\xCCl[0E\xB4\x80\xCA-\xDD\xCE\xDC\xCB\xDD\xC5\x86\xE7\xC3`h\x0E~\xDC\x1Dj\nv\x87\x83\x87n?OE\x93i\xF1\xF5x3f}b\\\xD5\x93F\xCC\x7F\x93\x16\xE74\xB9\xE4\xF5\xA11\xFBY\xE3C\x85\x10\xB2\xE9\x97\x00i\x91!\b\xE7c\xE1\x87\x81\xC3\xFFa\x96\x7Fb\xEE\x9F\xD4M\xE1\x02\x92\xD9\t,\x9F6\t\xBFn\xA6?o\x16\xB8\xCA\xB7\x93\x13w\xB8+\xDC\xABE\x8B\x105_\xBCs\xB6\x06\x04\xC0aj\x00\xA5[\x9F\xA4\xDB\xA2Jc\x05FIT\x96r\xBD\xDD\x93x\xE2\xF6\xED<s/\xE5]\x1EdD\xCC)\xE8+\xA9s(\x9A\x9E\x85\x9F\x04\x1EP\x85*\x91 T\xE0PAD,Hu\x80\x99\xEF\x14I\xF1@_L\x13\x03@\xC4\xE0\x1E\x8E\x04\xB3?7\xB6\xE7\x99\xF8\xF3\xC4\x8D*\x9B\x1B+\x18\"\x82R\xAAl\x19)\xC8Rn\xAB\xAEp5\x18'k\xC1\xEE@#x\xC0\xCD\x86T\xBD}o\x9C\xF5j\x01\x80\xC5{#\a\xC2\x06\xDA-]\xCEE\x1E\xC9%\xDD\x90\x03\xBE\xC6\rd\xE1W! Ts\b!\xA0\x92\xB9\xE4\n8x\xE0\xEA\t\x11y@$\x1C\xE4\\\x1B\xE8\x8B\xDE\x04\x10\tp7\x18\x1BD\xE4S\xE2\xE1\x85\xE2\xFA\xE6\xCA\xAB\xE7\xB8;\xAA\x91[\x9A6\x17K1Y\x01S\xB0*\xCC\x14\xEC\f\xCF\xC2on\x8El\x03W`-\x97\xE6\xEE\x10\xAC?\xCD\x1F\xC5\xB8/l4\x84\xA0\xB2u\xAB\x94us\x85\xAF\xD4UDr\xB4\x9F\xCC\xBCHH\xD6\xA0JB\xAFd\x0E\xA1\n\b\xC95<-!|!p\xB87[d\x88\xF4\xDF\xE3;\x9D\v\x10A0\x83s8^\x89\x7F\xD2\xDD\x7F\x82\xDC/\x04\xB0\xB9=\xB6&\x02QL\x05.\xE2\xDC/\x880\x16DS\x84\x1C\a\xB8YJ\x15\xDD\xE1\f\x00\x83\xF8aT\xE0\xB6\xCEo?\xC7#\x19\xC20!\x9A\x9D;\x8D\x1B\x90\\4\xE3\\\xD7/\xA9^\x95}~\x95\xE3\x80J\xE6 !$w\xC0\xF2L\x90\xEAk\x95\x84O\b\xCB\xD3!\x17\x84\xD6(\x06\x10\xB0;\x98\rA\x1C\x0E\xDF/n\x7F\x02\xCC\x9D\x06\xE0\x97\x00l*\x17\x9CL\x7Fb\xBDR\ra\x81\xAA \xAA\"\xB0B\xDD \x1E`\x99\x00\xE4\x0E3\xCB\xE9\xE3\xF0\xEEa[\"&Xo\x18\xBB\x97\xBF\x15\xF41s\x13\a0\x0F\xF6S\x94jjI\xF5J\xF4/R5\x9A\x9F3\x81\xE3\xA1\xDA\xF4\xF5J\xC2\xED\"\xE1[\x12B\n\x069\xB9\x8E\xBE\xE8\xEF\x02X\x92\x10B\x05\xC0a\xEE\xA8\xC4\xBF\x8C\x14\xE2^\x0F\xE0e\x006\xD5\xB9\x95Y\xD3\x02\x88\x18\x91\x05\x1C#\x84\x19\"\x065M)\xA3\x1A\\\f\x96\xEF}\x9B\xE4;l\x01\f\xDE$x\xB4\xCE\t\xE0#\xA6\x7FI\v\x90-b\x10Im\xDE\\\xE1\x93\x1C\x03\xA4T/\x05|\x95d\xB3\xCF\xF2L\x16\xFE\x87C\xA8\xF6V\x92\nD\xA5`$k\x12\x04fs\xE5\xCE\x10\x19\x8A\xF4\xF7\xA6\a\xBA\xDA\x89. \xA2mJ\x11D\x80q\x00k\x8D\xC8\f\xB3\x001\x85iL\x9A/\xD9\xFF{*\vjI%\x01x1\xF7\x99\x04m\xAC7K0\x9A\x05\x94\xAD\xDB\x00\x9AM\xB3\xA5\x85^\x9A=\x89\b\xB9\x99V\xD2\xBF\\\xE4I\x91\xBF\x80C\x95\x02\xBE\x10\x9E\x0ER}\xB5\x92\xF0\xB1\x10\xAA\xBDI\xF0\x92\xAA\x84\xA5l\xBCfY@*\xEF\x8D[\x84\xBDJ\xF1{Dt\x95\x92\xBC62?\x97Y\xB8\xE6\x1A,\x8C\x10\x03\xA2E\x98)\\\x02\xD4==\xB7\x92:\x162\f\xB4\x7Fl:\xB8\xCE\x84\xDF\xA0E\x82v\xFA\xD7\xB8\x85\xA1\xD6\xB8\xA4\x80\x90\x05\xA5\xB5\x9ER\xB9\x90\xD6*k\xB6\x88h\xE0\xEA\xFB\x12\xC2\x17+\t\x1F\x13\t\a\xAA\x96{\xE0V_`m\xB2\x00\"8K\xAA\xBA\x8E\x90\x80\x8C@\xA0\xFDD\xF4\xFBJ|\x80\x8D\xFFk\xE4\xB8\x93\x99\xB7\x9A\x19+GT\x16\x10\xD5\xE0n\x88\x16\xE1nP7\x90\xA7\x86\x91{\x8E\x05\xE0\x03K\xE0\xA9\xA1\xD4\xC6z\xB7\x00@k\x87t\xFE\xD2F\xD3\xE1\xCB\xBD\xFE\x94\xB7\x13\x02\x87\x94\x06\xE6\xE2Nn\xF2D\x91p,H\xF5\xA8\x88\xDC\x1F8|JX\x9E\x91\x90\xBF)\x14\xAA\\?\bM\x1A)S4\xCE\xA6\xB2\x00\x01@\x04\x86H@D@\xAC\xC1\x81@\xC6O3\xEB\xED\xAC\xFCEfy\xA7Ixu\xD4\xF8<\x11\xD9df\x9B\xD8\x94\xCC\x14\x95%+\x90,\x805d(1@\x11r1\xFF\xA3\xFE\x7F\x1C\aV\xFB\x9E\xC6\xE3\xBE}3\xBA\xEE%\x0Eh\x7F[\xAA\xC4\x00\xA5\xAFOy7U\xEA\xF7\xA7\xCD\x1D\x81\xC5\x99y\x81Y\x8E\x05\tG\x02\x87\xCF3\xF3\x9F\x89\x84\x7Fn\xA7z\xD92d\xEB\x91{\x06\xD9\x12\xF4\xC54\xED\xE04Y\f\x93\x80\xC8\x00\"\x98E\xB02\xA21\x88\xF8Q6}\x8F\x99\xDE\x138\xEC\x8A\xA6\xAF6\xD5_\x10\xD73\xDC\x8D\xCC,\xB8;\xAB\x1BQ~L\x82\xB7\x94\f:\x1A+\x80%\xB2\x80d\x1D\x9E=\x8C\x9A\xDD\x81%\xC8\xC2\xE7\xC1N(\"\xB6\x1C\xF5\xBB\x13\xA9\x10;\x11;39\x11G!\xF9W\x16\xF9f`\xF9\x123\xFF-\xB3|\xA7\xE9\b\xE6T/E\xFB<\xB4\xEF\xA2\b\x7F\x9A\xAF\xE5M\xD5\f\x12\xA4\x06G\x00R\x9Ag\x04#\x03\x11\xC1\x88`$ \x8D\x10b\x98\t\xA2\xE9\x01w; \xA6\x7F\x15E\xCF\n\xEEg\x9B\xD9\xB9\x80?\xDF\xD4\xCER\xD73\xC8\xFDG\xD4m\xAB;\x02\xE0\xA7\xB9\xFB\xE9\x00\xC8\xDD})\v\x00<\xFB\xAE`\xDC\xA2\xB7-\x00\xE5z7\x11\x1D\x05\xE8\x87\xCC\x14\x194\xEFDO\t\xC9\xBF\xB0\xF0\x13\x00\x1D\x0E,\xDF&\xA2G\x99\xF9\xBB\xCCr\xB4\xD5\xEBo\xE2\x83\xE2\xEFK\xBAX\xCC~\x11\xFE4\x16\xA0\xF7\xB7\x83g8\xB5p\xEA\xFD\xDC\xD7\f\xBD0#\xC0\x06\xC7\x8C\x00\x1B\x1C3\x02lp\xCC\b\xB0\xC11#\xC0\x06\xC7\x8C\x00\x1B\x1C3\x02lp\xCC\b\xB0\xC11#\xC0\x06\xC7\x8C\x00\x1B\x1C\xFF\x0EG\xDA\x93J\xF3V \xC3\x00\x00\x00\x00IEND\xAEB`\x82"

files.write("csgo/materials/panorama/images/icons/extension/shared_icon.png", anonteam_0_3, true)

local anonteam_0_4 = table.insert
local anonteam_0_5 = table.remove
local anonteam_0_6 = bit.band
local anonteam_0_7 = bit.lshift
local anonteam_0_8 = math.pi
local anonteam_0_9 = math.sin
local anonteam_0_10 = math.cos
local anonteam_0_11 = math.abs
local anonteam_0_12 = math.floor
local anonteam_0_13 = math.random
local anonteam_0_14 = math.atan2
local anonteam_0_15 = bit.bor
local anonteam_0_16 = ffi.cast
local anonteam_0_17 = math.pow
local anonteam_0_18 = math.sqrt
local anonteam_0_19 = math.clamp
local anonteam_0_20 = unpack
local anonteam_0_21 = utils.trace_line
local anonteam_0_22 = utils.trace_hull
local anonteam_0_23 = entity.get_local_player
local anonteam_0_24 = entity.get_players
local anonteam_0_25 = render.text
local anonteam_0_26 = render.gradient
local anonteam_0_27 = render.measure_text
local anonteam_0_28 = render.shadow
local anonteam_0_29 = render.poly
local anonteam_0_30 = ui.get_icon
local anonteam_0_31 = {}
local anonteam_0_32 = {}
local anonteam_0_33 = {}
local anonteam_0_34 = {}

function anonteam_0_33.get_config_list()
	-- function 3
	local anonteam_3_0 = {
		"Default"
	}

	for iter_3_0 = 1, #anonteam_0_0.configs do
		anonteam_3_0[#anonteam_3_0 + 1] = anonteam_0_0.configs[iter_3_0].name
	end

	return anonteam_3_0
end

anonteam_0_0.configs.Default = json.parse("{\"author\":\"Misnik\",\"data\":{\"antiaim\":{\"base_compensate\":false,\"base_pitch\":\"Down\",\"base_yaw\":\"At Target\",\"breaklc_always\":[\"Standing\",\"Slow Walking\",\"Crouching\",\"In Air\"],\"breaklc_extra\":[],\"breaklc_ping\":[],\"def_onetapspeed1\":10.0,\"def_onetapspeed2\":10.0,\"def_onetapspeed3\":10.0,\"def_onetapspeed4\":10.0,\"def_onetapspeed51\":10.0,\"def_onetapspeed52\":10.0,\"def_onetapspeed61\":10.0,\"def_onetapspeed62\":10.0,\"def_pitch1\":\"Disabled\",\"def_pitch2\":\"Disabled\",\"def_pitch3\":\"Disabled\",\"def_pitch4\":\"Disabled\",\"def_pitch51\":\"Disabled\",\"def_pitch52\":\"Disabled\",\"def_pitch61\":\"Disabled\",\"def_pitch62\":\"Disabled\",\"def_switch1\":false,\"def_switch2\":false,\"def_switch3\":false,\"def_switch4\":false,\"def_switch51\":false,\"def_switch52\":false,\"def_switch61\":false,\"def_switch62\":false,\"def_yaw1\":\"Default\",\"def_yaw2\":\"Default\",\"def_yaw3\":\"Default\",\"def_yaw4\":\"Default\",\"def_yaw51\":\"Default\",\"def_yaw52\":\"Default\",\"def_yaw61\":\"Default\",\"def_yaw62\":\"Default\",\"def_yaw_deg1\":0.0,\"def_yaw_deg2\":0.0,\"def_yaw_deg3\":0.0,\"def_yaw_deg4\":0.0,\"def_yaw_deg51\":0.0,\"def_yaw_deg52\":0.0,\"def_yaw_deg61\":0.0,\"def_yaw_deg62\":0.0,\"desync_freestand1\":\"Disabled\",\"desync_freestand2\":\"Disabled\",\"desync_freestand3\":\"Disabled\",\"desync_freestand4\":\"Disabled\",\"desync_freestand51\":\"Disabled\",\"desync_freestand52\":\"Disabled\",\"desync_freestand61\":\"Disabled\",\"desync_freestand62\":\"Disabled\",\"desync_l1\":60.0,\"desync_l2\":60.0,\"desync_l3\":60.0,\"desync_l4\":60.0,\"desync_l51\":60.0,\"desync_l52\":60.0,\"desync_l61\":60.0,\"desync_l62\":60.0,\"desync_mod1\":[],\"desync_mod2\":[],\"desync_mod3\":[],\"desync_mod4\":[],\"desync_mod51\":[],\"desync_mod52\":[],\"desync_mod61\":[],\"desync_mod62\":[],\"desync_r1\":60.0,\"desync_r2\":60.0,\"desync_r3\":60.0,\"desync_r4\":60.0,\"desync_r51\":60.0,\"desync_r52\":60.0,\"desync_r61\":60.0,\"desync_r62\":60.0,\"desync_switch1\":false,\"desync_switch2\":false,\"desync_switch3\":false,\"desync_switch4\":false,\"desync_switch51\":false,\"desync_switch52\":false,\"desync_switch61\":false,\"desync_switch62\":false,\"flick_delay1\":3.0,\"flick_delay2\":3.0,\"flick_delay3\":3.0,\"flick_delay4\":3.0,\"flick_delay51\":3.0,\"flick_delay52\":3.0,\"flick_delay61\":3.0,\"flick_delay62\":3.0,\"flick_yaw1\":0.0,\"flick_yaw2\":0.0,\"flick_yaw3\":0.0,\"flick_yaw4\":0.0,\"flick_yaw51\":0.0,\"flick_yaw52\":0.0,\"flick_yaw61\":0.0,\"flick_yaw62\":0.0,\"frees_dis_def\":true,\"frees_disable\":[],\"frees_pitch\":\"Disabled\",\"frees_pitch_custom\":0.0,\"frees_yaw\":\"Reversed\",\"frees_yaw_onetap\":0.0,\"legitaa_custom\":0.0,\"legitaa_desync\":true,\"legitaa_freestand\":\"Peek Fake\",\"legitaa_mod\":[\"Jitter\"],\"legitaa_pitch\":\"Camera Based\",\"legitaa_switch\":true,\"list\":2.0,\"manual_type\":\"Toggle\",\"manual_view\":\"Local View\",\"over_cond2\":true,\"over_cond3\":true,\"over_cond4\":true,\"over_cond51\":true,\"over_cond52\":true,\"over_cond61\":true,\"over_cond62\":true,\"pitch_custom1\":0.0,\"pitch_custom2\":0.0,\"pitch_custom3\":0.0,\"pitch_custom4\":0.0,\"pitch_custom51\":0.0,\"pitch_custom52\":0.0,\"pitch_custom61\":0.0,\"pitch_custom62\":0.0,\"pitch_deg1\":0.0,\"pitch_deg2\":0.0,\"pitch_deg3\":0.0,\"pitch_deg4\":0.0,\"pitch_deg51\":0.0,\"pitch_deg52\":0.0,\"pitch_deg61\":0.0,\"pitch_deg62\":0.0,\"predict_switch\":true,\"preset_list\":2.0,\"roll_def_deg1\":0.0,\"roll_def_deg2\":0.0,\"roll_def_deg3\":0.0,\"roll_def_deg4\":0.0,\"roll_def_deg51\":0.0,\"roll_def_deg52\":0.0,\"roll_def_deg61\":0.0,\"roll_def_deg62\":0.0,\"roll_ext_deg1\":0.0,\"roll_ext_deg2\":0.0,\"roll_ext_deg3\":0.0,\"roll_ext_deg4\":0.0,\"roll_ext_deg51\":0.0,\"roll_ext_deg52\":0.0,\"roll_ext_deg61\":0.0,\"roll_ext_deg62\":0.0,\"roll_ext_pit1\":0.0,\"roll_ext_pit2\":0.0,\"roll_ext_pit3\":0.0,\"roll_ext_pit4\":0.0,\"roll_ext_pit51\":0.0,\"roll_ext_pit52\":0.0,\"roll_ext_pit61\":0.0,\"roll_ext_pit62\":0.0,\"roll_switch1\":false,\"roll_switch2\":false,\"roll_switch3\":false,\"roll_switch4\":false,\"roll_switch51\":false,\"roll_switch52\":false,\"roll_switch61\":false,\"roll_switch62\":false,\"roll_type1\":\"Default\",\"roll_type2\":\"Default\",\"roll_type3\":\"Default\",\"roll_type4\":\"Default\",\"roll_type51\":\"Default\",\"roll_type52\":\"Default\",\"roll_type61\":\"Default\",\"roll_type62\":\"Default\",\"safe_def\":true,\"safe_switch\":true,\"xway_counter1\":3.0,\"xway_counter2\":3.0,\"xway_counter3\":3.0,\"xway_counter4\":3.0,\"xway_counter51\":3.0,\"xway_counter52\":3.0,\"xway_counter61\":3.0,\"xway_counter62\":3.0,\"xway_shuffle1\":false,\"xway_shuffle2\":false,\"xway_shuffle3\":false,\"xway_shuffle4\":false,\"xway_shuffle51\":false,\"xway_shuffle52\":false,\"xway_shuffle61\":false,\"xway_shuffle62\":false,\"xway_switch1\":false,\"xway_switch2\":false,\"xway_switch3\":false,\"xway_switch4\":false,\"xway_switch51\":false,\"xway_switch52\":false,\"xway_switch61\":false,\"xway_switch62\":false,\"xway_sync1\":false,\"xway_sync2\":false,\"xway_sync3\":false,\"xway_sync4\":false,\"xway_sync51\":false,\"xway_sync52\":false,\"xway_sync61\":false,\"xway_sync62\":false,\"xwayn_11\":0.0,\"xwayn_12\":0.0,\"xwayn_13\":0.0,\"xwayn_14\":0.0,\"xwayn_15\":0.0,\"xwayn_16\":0.0,\"xwayn_17\":0.0,\"xwayn_21\":0.0,\"xwayn_22\":0.0,\"xwayn_23\":0.0,\"xwayn_24\":0.0,\"xwayn_25\":0.0,\"xwayn_26\":0.0,\"xwayn_27\":0.0,\"xwayn_31\":0.0,\"xwayn_32\":0.0,\"xwayn_33\":0.0,\"xwayn_34\":0.0,\"xwayn_35\":0.0,\"xwayn_36\":0.0,\"xwayn_37\":0.0,\"xwayn_41\":0.0,\"xwayn_42\":0.0,\"xwayn_43\":0.0,\"xwayn_44\":0.0,\"xwayn_45\":0.0,\"xwayn_46\":0.0,\"xwayn_47\":0.0,\"xwayn_511\":0.0,\"xwayn_512\":0.0,\"xwayn_513\":0.0,\"xwayn_514\":0.0,\"xwayn_515\":0.0,\"xwayn_516\":0.0,\"xwayn_517\":0.0,\"xwayn_521\":0.0,\"xwayn_522\":0.0,\"xwayn_523\":0.0,\"xwayn_524\":0.0,\"xwayn_525\":0.0,\"xwayn_526\":0.0,\"xwayn_527\":0.0,\"xwayn_611\":0.0,\"xwayn_612\":0.0,\"xwayn_613\":0.0,\"xwayn_614\":0.0,\"xwayn_615\":0.0,\"xwayn_616\":0.0,\"xwayn_617\":0.0,\"xwayn_621\":0.0,\"xwayn_622\":0.0,\"xwayn_623\":0.0,\"xwayn_624\":0.0,\"xwayn_625\":0.0,\"xwayn_626\":0.0,\"xwayn_627\":0.0,\"yaw_deg1\":0.0,\"yaw_deg2\":0.0,\"yaw_deg3\":0.0,\"yaw_deg4\":0.0,\"yaw_deg51\":0.0,\"yaw_deg52\":0.0,\"yaw_deg61\":0.0,\"yaw_deg62\":0.0,\"yaw_delay1\":0.0,\"yaw_delay2\":0.0,\"yaw_delay3\":0.0,\"yaw_delay4\":0.0,\"yaw_delay51\":0.0,\"yaw_delay52\":0.0,\"yaw_delay61\":0.0,\"yaw_delay62\":0.0,\"yaw_l1\":0.0,\"yaw_l2\":0.0,\"yaw_l3\":0.0,\"yaw_l4\":0.0,\"yaw_l51\":0.0,\"yaw_l52\":0.0,\"yaw_l61\":0.0,\"yaw_l62\":0.0,\"yaw_mod_combo1\":\"Disabled\",\"yaw_mod_combo2\":\"Disabled\",\"yaw_mod_combo3\":\"Disabled\",\"yaw_mod_combo4\":\"Disabled\",\"yaw_mod_combo51\":\"Disabled\",\"yaw_mod_combo52\":\"Disabled\",\"yaw_mod_combo61\":\"Disabled\",\"yaw_mod_combo62\":\"Disabled\",\"yaw_o1\":0.0,\"yaw_o2\":0.0,\"yaw_o3\":0.0,\"yaw_o4\":0.0,\"yaw_o51\":0.0,\"yaw_o52\":0.0,\"yaw_o61\":0.0,\"yaw_o62\":0.0,\"yaw_r1\":0.0,\"yaw_r2\":0.0,\"yaw_r3\":0.0,\"yaw_r4\":0.0,\"yaw_r51\":0.0,\"yaw_r52\":0.0,\"yaw_r61\":0.0,\"yaw_r62\":0.0,\"yaw_randl1\":0.0,\"yaw_randl2\":0.0,\"yaw_randl3\":0.0,\"yaw_randl4\":0.0,\"yaw_randl51\":0.0,\"yaw_randl52\":0.0,\"yaw_randl61\":0.0,\"yaw_randl62\":0.0,\"yaw_rando1\":0.0,\"yaw_rando2\":0.0,\"yaw_rando3\":0.0,\"yaw_rando4\":0.0,\"yaw_rando51\":0.0,\"yaw_rando52\":0.0,\"yaw_rando61\":0.0,\"yaw_rando62\":0.0,\"yaw_randr1\":0.0,\"yaw_randr2\":0.0,\"yaw_randr3\":0.0,\"yaw_randr4\":0.0,\"yaw_randr51\":0.0,\"yaw_randr52\":0.0,\"yaw_randr61\":0.0,\"yaw_randr62\":0.0,\"yaw_switch1\":false,\"yaw_switch2\":false,\"yaw_switch3\":false,\"yaw_switch4\":false,\"yaw_switch51\":false,\"yaw_switch52\":false,\"yaw_switch61\":false,\"yaw_switch62\":false},\"misc\":{\"avoid_disable\":[],\"avoid_dist\":5.0,\"avoid_switch\":false,\"clantag_switch\":true,\"fall_switch\":true,\"fastladder_switch\":true,\"ping_slider\":200.0,\"ping_switch\":false,\"shared_switch\":true,\"trash_type\":[\"On Kill\",\"On Death\",\"Revenge\"],\"trashtalk_switch\":true},\"ragebot\":{\"aipeek_delay\":2.0,\"aipeek_dist\":30.0,\"aipeek_dt\":true,\"aipeek_keys\":true,\"aipeek_switch\":false,\"aipeek_vis\":false,\"air_1\":55.0,\"air_2\":-1.0,\"air_3\":-1.0,\"air_4\":-1.0,\"air_5\":-1.0,\"air_6\":-1.0,\"air_7\":-1.0,\"air_exploit\":false,\"airstop_cond\":[1.0,2.0],\"airstop_switch\":true,\"antidef_switch\":false,\"discharge_combo\":[],\"discharge_delay\":3.0,\"discharge_mode\":\"Default\",\"discharge_switch\":false,\"dormant_dmg\":5.0,\"dormant_dmgswitch\":true,\"dormant_switch\":true,\"grenade_damage\":100.0,\"grenade_switch\":false,\"jumpscout\":true,\"noscope_1\":-1.0,\"noscope_2\":50.0,\"noscope_3\":50.0,\"noscope_4\":-1.0,\"noscope_5\":-1.0,\"noscope_6\":-1.0,\"noscope_7\":-1.0,\"noscope_dist1\":0.0,\"noscope_dist2\":15.0,\"noscope_dist3\":30.0,\"noscope_dist4\":0.0,\"noscope_dist5\":0.0,\"noscope_dist6\":0.0,\"noscope_dist7\":0.0,\"roll_deg\":50.0,\"roll_pitch_deg\":89.0,\"roll_pitch_switch\":false,\"roll_resolver\":false,\"toss_switch\":false},\"visuals\":{\"anim_gym\":true,\"anim_speed\":10.0,\"anim_switch\":true,\"breaker_lean_value\":0.0,\"breaker_list\":[1.0,4.0,5.0],\"breaker_switch\":true,\"color_use_theme\":true,\"console_color\":{\"a\":255.0,\"b\":152.0,\"g\":114.0,\"r\":124.0},\"console_switch\":true,\"damage_font\":\"Pixel\",\"damage_is_active\":false,\"damage_switch\":true,\"dpi_scale\":\"Auto\",\"glow_alpha\":75.0,\"glow_thick\":25.0,\"hitlog_color_mode\":\"Per Reason\",\"hitlog_death\":{\"a\":255.0,\"b\":41.0,\"g\":41.0,\"r\":165.0},\"hitlog_duration\":30.0,\"hitlog_extra\":[\"Icons\",\"Glow\"],\"hitlog_hit\":{\"a\":255.0,\"b\":255.0,\"g\":129.0,\"r\":138.0},\"hitlog_miss\":{\"a\":255.0,\"b\":62.0,\"g\":62.0,\"r\":254.0},\"hitlog_pred\":{\"a\":255.0,\"b\":119.0,\"g\":66.0,\"r\":255.0},\"hitlog_resolver\":{\"a\":255.0,\"b\":62.0,\"g\":62.0,\"r\":254.0},\"hitlog_spread\":{\"a\":255.0,\"b\":57.0,\"g\":193.0,\"r\":255.0},\"hitlog_switch\":true,\"hitlog_theme_hit\":true,\"hitlog_vis_type\":[1.0,2.0,3.0],\"hitmarker_color_hitlog\":true,\"hitmarker_duration\":30.0,\"hitmarker_glow\":true,\"hitmarker_hit\":{\"a\":255.0,\"b\":255.0,\"g\":129.0,\"r\":138.0},\"hitmarker_lastshot\":true,\"hitmarker_miss\":{\"a\":255.0,\"b\":62.0,\"g\":62.0,\"r\":254.0},\"hitmarker_switch\":true,\"hitmarker_theme_hit\":true,\"indicator_glow\":true,\"indicator_style\":\"Old\",\"indicator_switch\":true,\"main_color\":{\"a\":255.0,\"b\":255.0,\"g\":129.0,\"r\":138.0},\"manual_switch\":false,\"molotov_switch\":false,\"nade_molotov\":true,\"nade_molotov_c\":{\"a\":150.0,\"b\":122.0,\"g\":122.0,\"r\":255.0},\"nade_molotov_cf\":{\"a\":0.0,\"b\":0.0,\"g\":0.0,\"r\":0.0},\"nade_smoke\":true,\"nade_smoke_c\":{\"a\":131.0,\"b\":131.0,\"g\":131.0,\"r\":131.0},\"nade_style\":\"Solid\",\"nade_switch\":true,\"scope_gap\":6.0,\"scope_size\":200.0,\"scope_switch\":false,\"scope_type\":[],\"second_color\":{\"a\":255.0,\"b\":255.0,\"g\":129.0,\"r\":138.0},\"spoofer_list\":1.0,\"spoofer_switch\":false,\"transparency_alpha\":100.0,\"transparency_keep\":false,\"transparency_nade\":50.0,\"transparency_scope\":50.0,\"transparency_switch\":false,\"widgets_list\":[]}},\"is_locked\":false,\"name\":\"2024 Default config\"}")

local anonteam_0_35 = {
	chams_color = ui.find("Visuals", "Players", "Self", "Chams", "Model", "Color"),
	chams_material = ui.find("Visuals", "Players", "Self", "Chams", "Model", "Style"),
	edge_jump = ui.find("Miscellaneous", "Main", "Movement", "Edge Jump"),
	autostop = ui.find("Aimbot", "Ragebot", "Accuracy", "SSG-08", "Auto Stop", "Options"),
	airstrafe = ui.find("Miscellaneous", "Main", "Movement", "Air Strafe"),
	double_tap_fl = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Fake Lag Limit"),
	ragebot = ui.find("Aimbot", "Ragebot", "Main", "Enabled"),
	double_tap = ui.find("Aimbot", "Ragebot", "Main", "Double Tap"),
	defensive = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Lag Options"),
	hidden_yaw = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Hidden"),
	hide_shots = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots"),
	hide_shots_defensive = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots", "Options"),
	hitchance = ui.find("Aimbot", "Ragebot", "Selection", "Hit Chance"),
	no_scope = ui.find("Aimbot", "Ragebot", "Accuracy", "Auto Scope"),
	dmg = ui.find("Aimbot", "Ragebot", "Selection", "Min. Damage"),
	hitboxes = ui.find("Aimbot", "Ragebot", "Selection", "Hitboxes"),
	legs_movement = ui.find("Aimbot", "Anti Aim", "Misc", "Leg Movement"),
	fakeduck = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck"),
	slowwalk = ui.find("Aimbot", "Anti Aim", "Misc", "Slow Walk"),
	pitch = ui.find("Aimbot", "Anti Aim", "Angles", "Pitch"),
	peek_assist_return = ui.find("Aimbot", "Ragebot", "Main", "Peek Assist", "Retreat Mode"),
	yaw_base = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw"),
	yaw_offset = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Offset"),
	yaw_at_targets = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Base"),
	yaw_modifier = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier"),
	yaw_modifier_offset = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier", "Offset"),
	desync = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw"),
	inverter = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Inverter"),
	left_limit = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Left Limit"),
	right_limit = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Right Limit"),
	fake_opt = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Options"),
	desync_freestand = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Freestanding"),
	exales = ui.find("Aimbot", "Anti Aim", "Angles", "Extended Angles"),
	exales_pitch = ui.find("Aimbot", "Anti Aim", "Angles", "Extended Angles", "Extended Pitch"),
	exales_roll = ui.find("Aimbot", "Anti Aim", "Angles", "Extended Angles", "Extended Roll"),
	auto_peek = ui.find("Aimbot", "Ragebot", "Main", "Peek Assist"),
	auto_peek_color = ui.find("Aimbot", "Ragebot", "Main", "Peek Assist", "Style"),
	freestand = ui.find("Aimbot", "Anti Aim", "Angles", "Freestanding"),
	freestand_off_yaw_modifiers = ui.find("Aimbot", "Anti Aim", "Angles", "Freestanding", "Disable Yaw Modifiers"),
	world_hitmarker = ui.find("Visuals", "World", "Other", "Hit Marker"),
	strafe_smooth = ui.find("Miscellaneous", "Main", "Movement", "Air Strafe", "Smoothing"),
	body_rage = ui.find("Aimbot", "Ragebot", "Safety", "Body Aim"),
	safe_points = ui.find("Aimbot", "Ragebot", "Safety", "Safe Points"),
	third_person = ui.find("Visuals", "World", "Main", "Force Thirdperson"),
	clantag = ui.find("Miscellaneous", "Main", "In-Game", "Clan Tag"),
	shared_esp = ui.find("Visuals", "Players", "Enemies", "ESP", "Shared ESP"),
	fakelag_slider = ui.find("Aimbot", "Anti Aim", "Fake Lag", "Limit"),
	retreat_mode = ui.find("Aimbot", "Ragebot", "Main", "Peek Assist", "Retreat Mode"),
	peek_assist = ui.find("Aimbot", "Ragebot", "Main", "Peek Assist"),
	ping = ui.find("Miscellaneous", "Main", "Other", "Fake Latency")
}
local anonteam_0_36 = {}
local anonteam_0_37 = {}

for iter_0_0, iter_0_1 in pairs(anonteam_0_35) do
	local anonteam_0_38 = {
		ref = iter_0_1
	}

	iter_0_1:set_callback(function(arg_4_0)
		-- function 4
		local anonteam_4_0 = arg_4_0:get()

		anonteam_0_36[iter_0_0] = anonteam_4_0
		anonteam_0_38.value = anonteam_4_0
		anonteam_0_38.override_value = arg_4_0:get_override()
	end, true)

	function anonteam_0_38.set(arg_5_0, arg_5_1)
		-- function 5
		if arg_5_0.value ~= arg_5_1 then
			arg_5_0.value = arg_5_1

			arg_5_0.ref:set(arg_5_1)
		end
	end

	function anonteam_0_38.override(arg_6_0, arg_6_1)
		-- function 6
		if arg_6_0.override_value ~= arg_6_1 then
			arg_6_0.override_value = arg_6_1

			arg_6_0.ref:override(arg_6_1)
		end
	end

	anonteam_0_37[iter_0_0] = anonteam_0_38
end

anonteam_0_32.flags = {
	IN_ATTACK = anonteam_0_7(1, 0),
	IN_JUMP = anonteam_0_7(1, 1),
	IN_DUCK = anonteam_0_7(1, 2),
	IN_FORWARD = anonteam_0_7(1, 3),
	IN_BACK = anonteam_0_7(1, 4),
	IN_USE = anonteam_0_7(1, 5),
	IN_CANCEL = anonteam_0_7(1, 6),
	IN_LEFT = anonteam_0_7(1, 7),
	IN_RIGHT = anonteam_0_7(1, 8),
	IN_MOVELEFT = anonteam_0_7(1, 9),
	IN_MOVERIGHT = anonteam_0_7(1, 10),
	IN_ATTACK2 = anonteam_0_7(1, 11),
	IN_RUN = anonteam_0_7(1, 12),
	IN_RELOAD = anonteam_0_7(1, 13),
	IN_ALT1 = anonteam_0_7(1, 14),
	IN_ALT2 = anonteam_0_7(1, 15),
	IN_SCORE = anonteam_0_7(1, 16),
	IN_SPEED = anonteam_0_7(1, 17),
	IN_WALK = anonteam_0_7(1, 18),
	IN_ZOOM = anonteam_0_7(1, 19),
	IN_WEAPON1 = anonteam_0_7(1, 20),
	IN_WEAPON2 = anonteam_0_7(1, 21),
	IN_BULLRUSH = anonteam_0_7(1, 22),
	FL_ONGROUND = anonteam_0_7(1, 0),
	FL_DUCKING = anonteam_0_7(1, 1),
	FL_WATERJUMP = anonteam_0_7(1, 3),
	FL_ONTRAIN = anonteam_0_7(1, 4),
	FL_INRAIN = anonteam_0_7(1, 5),
	FL_FROZEN = anonteam_0_7(1, 6),
	FL_ATCONTROLS = anonteam_0_7(1, 7),
	FL_CLIENT = anonteam_0_7(1, 8),
	FL_FAKECLIENT = anonteam_0_7(1, 9),
	FL_INWATER = anonteam_0_7(1, 10)
}

local function anonteam_0_39(arg_7_0, arg_7_1)
	-- function 7
	return anonteam_0_12(arg_7_0 / arg_7_1) * arg_7_1
end

local function anonteam_0_40(arg_8_0)
	-- function 8
	arg_8_0 = tonumber(arg_8_0)

	local anonteam_8_0 = anonteam_0_12(arg_8_0)

	if arg_8_0 < 0 and arg_8_0 - anonteam_8_0 ~= 0 then
		arg_8_0 = anonteam_8_0 + 1
	else
		arg_8_0 = anonteam_8_0
	end

	return arg_8_0
end

local anonteam_0_41 = {}

anonteam_0_41.hp = 0
anonteam_0_41.ref = anonteam_0_23()
anonteam_0_41.on_ground = true
anonteam_0_41.crouching = true
anonteam_0_41.velocity = 0
anonteam_0_41.ground_tickcount = 0
anonteam_0_41.eye_pos = vector(0, 0, 0)

function anonteam_0_41.update()
	-- function 9
	local anonteam_9_0 = anonteam_0_23()
	local anonteam_9_1 = anonteam_9_0.m_fFlags
	local anonteam_9_2 = anonteam_9_0.m_hGroundEntity

	anonteam_0_41.on_ground = anonteam_9_2
	anonteam_0_41.ref = anonteam_9_0
	anonteam_0_41.crouching = anonteam_0_6(anonteam_9_1, anonteam_0_32.flags.FL_DUCKING) ~= 0 or anonteam_0_36.fakeduck
	anonteam_0_41.velocity = anonteam_9_0.m_vecVelocity:length2d()
	anonteam_0_41.ground_tickcount = anonteam_9_2 and anonteam_0_19(anonteam_0_41.ground_tickcount + 1, 0, 51) or 0
	anonteam_0_41.eye_pos = anonteam_9_0:get_eye_position()
end

events.createmove:set(anonteam_0_41.update)

local function anonteam_0_42(arg_10_0, arg_10_1)
	-- function 10
	local anonteam_10_0 = vector(arg_10_1.x - arg_10_0.x, arg_10_1.y - arg_10_0.y, arg_10_1.z - arg_10_0.z)

	return (vector(anonteam_0_14(-anonteam_10_0.z, anonteam_10_0:length2d()) * 180 / anonteam_0_8, anonteam_0_14(anonteam_10_0.y, anonteam_10_0.x) * 180 / anonteam_0_8, 0))
end

local function anonteam_0_43(arg_11_0, arg_11_1, arg_11_2, arg_11_3, arg_11_4, arg_11_5, arg_11_6)
	-- function 11
	local anonteam_11_0 = arg_11_0:get_origin()

	if arg_11_5 then
		anonteam_11_0 = arg_11_5
	end

	if arg_11_3 then
		anonteam_11_0 = arg_11_0:get_hitbox_position(arg_11_3)
	end

	if arg_11_4 then
		anonteam_11_0 = arg_11_0:get_eye_position()
	end

	local anonteam_11_1 = arg_11_0.m_vecVelocity
	local anonteam_11_2 = anonteam_11_1:length()
	local anonteam_11_3 = {}

	if anonteam_11_2 < 5 then
		for iter_11_0 = 1, arg_11_1 do
			anonteam_11_3[iter_11_0] = anonteam_11_0
		end

		return anonteam_11_0, anonteam_11_3
	end

	if anonteam_11_2 < 30 then
		anonteam_11_1.x = anonteam_11_1.x * 2
		anonteam_11_1.y = anonteam_11_1.y * 2
	end

	local anonteam_11_4 = globals.tickinterval
	local anonteam_11_5 = cvar.sv_gravity:float() * anonteam_11_4
	local anonteam_11_6 = cvar.sv_jump_impulse:float() * anonteam_11_4
	local anonteam_11_7 = anonteam_0_6(arg_11_0.m_fFlags, anonteam_0_32.flags.FL_ONGROUND) ~= 0 and 0 or anonteam_11_5 - anonteam_11_6

	if arg_11_2 then
		for iter_11_1 = 0, arg_11_1 do
			anonteam_11_1.z = anonteam_11_1.z - anonteam_11_7

			if anonteam_0_21(anonteam_11_0, anonteam_11_0 + anonteam_11_1 * anonteam_11_4, arg_11_0, 1174421507).fraction ~= 1 and arg_11_6 then
				break
			end

			anonteam_11_0 = anonteam_11_0 + anonteam_11_1 * anonteam_11_4

			anonteam_0_4(anonteam_11_3, anonteam_11_0)
		end
	else
		anonteam_11_1.x = anonteam_11_1.x * arg_11_1
		anonteam_11_1.y = anonteam_11_1.y * arg_11_1
		anonteam_11_1.z = anonteam_11_1.z * arg_11_1 - anonteam_11_7 * arg_11_1

		local anonteam_11_8 = anonteam_0_21(anonteam_11_0, anonteam_11_0 + anonteam_11_1 * anonteam_11_4, arg_11_0, 1174421507, 3)

		anonteam_11_0 = arg_11_6 and anonteam_11_8.end_pos or anonteam_11_0 + anonteam_11_1 * anonteam_11_4
	end

	return anonteam_11_0, anonteam_11_3
end

ffi.cdef("\n            typedef struct \n            {\n                int x;\n                int y;\n                int z;\n            } vector_t;\n\n            typedef void*(__thiscall* c_entity_list_get_client_entity_t)(void*, int);\n\n            typedef struct {\n\n                char  pad_0000[20];\n                int m_nOrder;\n                int m_nSequence; \n                float m_flPrevCycle; \n                float m_flWeight; \n                float m_flWeightDeltaRate; \n                float m_flPlaybackRate; \n                float m_flCycle; \n                void *m_pOwner; \n                char  pad_0038[4];\n            } CAnimationLayer_t;\n        ")

local anonteam_0_44 = {
	bind_argument = function(arg_12_0, arg_12_1)
		-- function 12
		return function(...)
			-- function 13
			return arg_12_0(arg_12_1, ...)
		end
	end,
	interface_type = ffi.typeof("uintptr_t**")
}

anonteam_0_44.i_client_entity_list = anonteam_0_16(anonteam_0_44.interface_type, utils.create_interface("client.dll", "VClientEntityList003"))
anonteam_0_44.get_client_entity = anonteam_0_44.bind_argument(anonteam_0_16("c_entity_list_get_client_entity_t", anonteam_0_44.i_client_entity_list[0][3]), anonteam_0_44.i_client_entity_list)
anonteam_0_44.get_client_entity_from_handle = anonteam_0_44.bind_argument(anonteam_0_16("c_entity_list_get_client_entity_t", anonteam_0_44.i_client_entity_list[0][4]), anonteam_0_44.i_client_entity_list)
anonteam_0_44.vgui_system = anonteam_0_16(anonteam_0_44.interface_type, utils.create_interface("vgui2.dll", "VGUI_System010"))
anonteam_0_44.shell_execute = anonteam_0_44.bind_argument(anonteam_0_16("void(__thiscall*)(void*, const char*, const char*)", anonteam_0_44.vgui_system[0][3]), anonteam_0_44.vgui_system)
anonteam_0_44.get_clipboard_text_count = anonteam_0_44.bind_argument(anonteam_0_16("int(__thiscall*)(void*)", anonteam_0_44.vgui_system[0][7]), anonteam_0_44.vgui_system)
anonteam_0_44.set_clipboard_text = anonteam_0_44.bind_argument(anonteam_0_16("void(__thiscall*)(void*, const char*, int)", anonteam_0_44.vgui_system[0][9]), anonteam_0_44.vgui_system)
anonteam_0_44.get_clipboard_text_fn = anonteam_0_44.bind_argument(anonteam_0_16("void(__thiscall*)(void*, int, const char*, int)", anonteam_0_44.vgui_system[0][11]), anonteam_0_44.vgui_system)

function anonteam_0_44.get_clipboard_text()
	-- function 14
	local anonteam_14_0 = anonteam_0_44.get_clipboard_text_count()

	if anonteam_14_0 > 0 then
		local anonteam_14_1 = ffi.new("char[?]", anonteam_14_0)
		local anonteam_14_2 = anonteam_14_0 * ffi.sizeof("char[?]", anonteam_14_0)

		anonteam_0_44.get_clipboard_text_fn(0, anonteam_14_1, anonteam_14_2)

		return ffi.string(anonteam_14_1, anonteam_14_0 - 1)
	end

	return ""
end

anonteam_0_44.m_eye_angle = utils.get_vfunc(170, "vector_t*(__thiscall*)(void*)")
anonteam_0_44.EngineClient = utils.create_interface("engine.dll", "VEngineClient014")
anonteam_0_44.EngineClient_class = anonteam_0_16("void***", anonteam_0_44.EngineClient)
anonteam_0_44.console_status = anonteam_0_16("bool(__thiscall*)(void*)", anonteam_0_44.EngineClient_class[0][11])
anonteam_0_44.vgui_system = anonteam_0_16(anonteam_0_44.interface_type, utils.create_interface("vgui2.dll", "VGUI_System010"))
anonteam_0_44.shell_execute = anonteam_0_44.bind_argument(anonteam_0_16("void(__thiscall*)(void*, const char*, const char*)", anonteam_0_44.vgui_system[0][3]), anonteam_0_44.vgui_system)

local anonteam_0_45 = {}

anonteam_0_45.default_alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
anonteam_0_45.custom_alphabet = "ulJkLANdgIcnwO79yRz6VBS8ZXQKfPv3HYejMFtmoWpb0s2xq1GEhC5aTri4U=+/"

function anonteam_0_45.encode(arg_15_0)
	-- function 15
	local anonteam_15_0 = anonteam_0_45.custom_alphabet

	return (arg_15_0:gsub(".", function(arg_16_0)
		-- function 16
		local anonteam_16_0 = ""
		local anonteam_16_1 = arg_16_0:byte()

		for iter_16_0 = 8, 1, -1 do
			anonteam_16_0 = anonteam_16_0 .. (anonteam_16_1 % 2^iter_16_0 - anonteam_16_1 % 2^(iter_16_0 - 1) > 0 and "1" or "0")
		end

		return anonteam_16_0
	end) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(arg_17_0)
		-- function 17
		if #arg_17_0 < 6 then
			return ""
		end

		local anonteam_17_0 = 0

		for iter_17_0 = 1, 6 do
			anonteam_17_0 = anonteam_17_0 + (arg_17_0:sub(iter_17_0, iter_17_0) == "1" and 2^(6 - iter_17_0) or 0)
		end

		return anonteam_15_0:sub(anonteam_17_0 + 1, anonteam_17_0 + 1)
	end) .. ({
		"",
		"DD",
		"D"
	})[#arg_15_0 % 3 + 1]
end

function anonteam_0_45.decode(arg_18_0)
	-- function 18
	local anonteam_18_0 = anonteam_0_45.custom_alphabet

	arg_18_0 = string.gsub(arg_18_0, "[^" .. anonteam_18_0 .. "D]", "")

	return (arg_18_0:gsub(".", function(arg_19_0)
		-- function 19
		if arg_19_0 == "D" then
			return ""
		end

		local anonteam_19_0 = ""
		local anonteam_19_1 = anonteam_18_0:find(arg_19_0) - 1

		for iter_19_0 = 6, 1, -1 do
			anonteam_19_0 = anonteam_19_0 .. (anonteam_19_1 % 2^iter_19_0 - anonteam_19_1 % 2^(iter_19_0 - 1) > 0 and "1" or "0")
		end

		return anonteam_19_0
	end):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(arg_20_0)
		-- function 20
		if #arg_20_0 ~= 8 then
			return ""
		end

		local anonteam_20_0 = 0

		for iter_20_0 = 1, 8 do
			anonteam_20_0 = anonteam_20_0 + (arg_20_0:sub(iter_20_0, iter_20_0) == "1" and 2^(8 - iter_20_0) or 0)
		end

		return string.char(anonteam_20_0)
	end))
end

function anonteam_0_45.pcall_func(arg_21_0)
	-- function 21
	return pcall(function()
		-- function 22
		return json.parse(anonteam_0_45.decode(arg_21_0))
	end)
end

local anonteam_0_46 = {}
local anonteam_0_47 = {
	values = {},
	ui_tables = {}
}

anonteam_0_47.active_tab = nil
anonteam_0_47.is_loaded = false
anonteam_0_47.types = {
	"switch",
	"slider",
	"combo",
	"selectable",
	"color_picker",
	"button",
	"hotkey",
	"text_box",
	"list",
	"listable",
	"label"
}

function anonteam_0_47.get_default_ui_el_table(arg_23_0, arg_23_1, arg_23_2, arg_23_3, arg_23_4)
	-- function 23
	local anonteam_23_0 = {
		ref = arg_23_3
	}

	if not anonteam_0_47.values[arg_23_1] then
		anonteam_0_47.values[arg_23_1] = {}
	end

	if not anonteam_0_47.ui_tables[arg_23_1] then
		anonteam_0_47.ui_tables[arg_23_1] = {}
	end

	anonteam_23_0.value_for_ref = arg_23_3:get()
	anonteam_23_0.value = nil
	anonteam_23_0._vis_func = arg_23_4
	anonteam_23_0._dis_func = nil
	anonteam_23_0.group_table = arg_23_0

	function anonteam_23_0.visible(arg_24_0, arg_24_1)
		-- function 24
		if arg_24_1 ~= nil and anonteam_23_0._vis_state ~= arg_24_1 then
			arg_24_0.ref:visibility(arg_24_1)

			anonteam_23_0._vis_state = arg_24_1
		end

		return anonteam_23_0._vis_state
	end

	anonteam_23_0._disabled = false

	function anonteam_23_0.disabled(arg_25_0, arg_25_1)
		-- function 25
		if arg_25_1 == nil then
			return arg_25_0.ref:disabled()
		end

		if anonteam_23_0._disabled ~= arg_25_1 then
			anonteam_23_0._disabled = arg_25_1

			arg_25_0.ref:disabled(arg_25_1)
		end
	end

	anonteam_23_0._callbacks_list = {}

	function anonteam_23_0._callback_func(arg_26_0)
		-- function 26
		local anonteam_26_0 = arg_23_3:get()

		anonteam_23_0.value = anonteam_26_0
		anonteam_23_0.value_for_ref = anonteam_26_0
		anonteam_0_47.values[arg_23_1][arg_23_2] = anonteam_26_0

		local anonteam_26_1 = anonteam_23_0._vis_func()

		if anonteam_23_0.group_table._vis_func then
			anonteam_26_1 = anonteam_26_1 and anonteam_23_0.group_table._vis_func()
		end

		if arg_26_0 then
			for iter_26_0 = 1, #anonteam_23_0._callbacks_list do
				anonteam_23_0._callbacks_list[iter_26_0]()
			end
		end

		if arg_26_0 and anonteam_0_47.is_loaded then
			anonteam_23_0.group_table:update()
		end

		if anonteam_23_0._vis_state ~= anonteam_26_1 then
			anonteam_23_0._vis_state = anonteam_26_1

			anonteam_23_0.ref:visibility(anonteam_23_0._vis_state)
		end

		local anonteam_26_2 = anonteam_23_0._dis_func and anonteam_23_0._dis_func() or nil

		if anonteam_23_0.group_table._dis_func then
			anonteam_26_2 = anonteam_26_2 and anonteam_23_0.group_table._dis_func()
		end

		if anonteam_26_2 ~= nil and anonteam_23_0._disabled ~= anonteam_26_2 then
			anonteam_23_0._disabled = anonteam_26_2

			anonteam_23_0.ref:disabled(anonteam_26_2)
		end
	end

	anonteam_23_0.ref:set_callback(anonteam_23_0._callback_func, true)

	function anonteam_23_0.set_callback(arg_27_0, arg_27_1, arg_27_2)
		-- function 27
		arg_27_0._callbacks_list[#arg_27_0._callbacks_list + 1] = arg_27_1

		if arg_27_2 then
			arg_27_1()
		end

		return arg_27_1
	end

	function anonteam_23_0.unset_callback(arg_28_0, arg_28_1)
		-- function 28
		for iter_28_0 = 1, #arg_28_0._callbacks_list do
			if arg_28_0._callbacks_list[iter_28_0] == arg_28_1 then
				table.remove(arg_28_0._callbacks_list, iter_28_0)

				break
			end
		end
	end

	function anonteam_23_0.set_disable_function(arg_29_0, arg_29_1, arg_29_2)
		-- function 29
		arg_29_0._dis_func = arg_29_1

		if arg_29_2 then
			arg_29_1()
		end
	end

	function anonteam_23_0.tooltip(arg_30_0, arg_30_1)
		-- function 30
		if not arg_30_1 then
			return arg_30_0.ref:tooltip()
		end

		arg_30_0.ref:tooltip(arg_30_1)
	end

	function anonteam_23_0.name(arg_31_0, arg_31_1)
		-- function 31
		if not arg_31_1 then
			return arg_31_0.ref:name()
		end

		arg_31_0.ref:name(arg_31_1)
	end

	if arg_23_3:type() == "color_picker" then
		return anonteam_23_0
	end

	anonteam_23_0.gear_ref = nil

	function anonteam_23_0.switch(arg_32_0, arg_32_1, arg_32_2, arg_32_3, arg_32_4, arg_32_5, arg_32_6, arg_32_7)
		-- function 32
		if not arg_32_0.gear_ref then
			arg_32_0.gear_ref = arg_32_0.ref:create()
		end

		local anonteam_32_0 = arg_32_0.gear_ref:switch(arg_32_2, arg_32_3)
		local anonteam_32_1 = arg_32_4 and arg_32_4 or function()
			-- function 33
			return true
		end
		local anonteam_32_2 = anonteam_0_47.get_default_gear_table(anonteam_23_0, arg_23_1, arg_32_1, arg_32_5, anonteam_32_0, anonteam_32_1, arg_32_0.group_table)

		anonteam_32_2.type = 1
		anonteam_32_2.def_value = arg_32_3
		anonteam_32_2.disabled_icon = arg_32_6 == nil and "" or arg_32_6
		anonteam_32_2.enabled_icon = arg_32_7 == nil and "" or arg_32_7
		anonteam_32_2.enabled_text = anonteam_32_2.enabled_icon .. arg_32_2
		anonteam_32_2.disabled_text = anonteam_32_2.disabled_icon .. arg_32_2

		anonteam_32_2:set_callback(function()
			-- function 34
			anonteam_32_0:name(anonteam_32_2.value and anonteam_32_2.enabled_text or anonteam_32_2.disabled_text)
		end, true)

		anonteam_32_2 = setmetatable(anonteam_32_2, {
			__call = function(arg_35_0)
				-- function 35
				return arg_35_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_23_1][arg_32_1] = anonteam_32_2
		arg_23_0.elements[#arg_23_0.elements + 1] = anonteam_32_2

		return anonteam_32_2
	end

	function anonteam_23_0.slider(arg_36_0, arg_36_1, arg_36_2, arg_36_3, arg_36_4, arg_36_5, arg_36_6, arg_36_7, arg_36_8, arg_36_9)
		-- function 36
		if not arg_36_0.gear_ref then
			arg_36_0.gear_ref = arg_36_0.ref:create()
		end

		local anonteam_36_0 = arg_36_0.gear_ref:slider(arg_36_2, arg_36_3, arg_36_4, arg_36_5, arg_36_6, arg_36_7)
		local anonteam_36_1 = arg_36_8 and arg_36_8 or function()
			-- function 37
			return true
		end
		local anonteam_36_2 = anonteam_0_47.get_default_gear_table(anonteam_23_0, arg_23_1, arg_36_1, arg_36_9, anonteam_36_0, anonteam_36_1, arg_36_0.group_table)

		anonteam_36_2.type = 2
		anonteam_36_2.def_value = arg_36_5

		local anonteam_36_3 = setmetatable(anonteam_36_2, {
			__call = function(arg_38_0)
				-- function 38
				return arg_38_0.ref
			end
		})

		anonteam_0_47.ui_tables[arg_23_1][arg_36_1] = anonteam_36_3
		arg_23_0.elements[#arg_23_0.elements + 1] = anonteam_36_3

		return anonteam_36_3
	end

	function anonteam_23_0.combo(arg_39_0, arg_39_1, arg_39_2, arg_39_3, arg_39_4, arg_39_5, arg_39_6)
		-- function 39
		if not arg_39_0.gear_ref then
			arg_39_0.gear_ref = arg_39_0.ref:create()
		end

		local anonteam_39_0 = arg_39_0.gear_ref:combo(arg_39_2, arg_39_3)
		local anonteam_39_1 = arg_39_5 and arg_39_5 or function()
			-- function 40
			return true
		end
		local anonteam_39_2 = anonteam_0_47.get_default_gear_table(anonteam_23_0, arg_23_1, arg_39_1, arg_39_6, anonteam_39_0, anonteam_39_1, arg_39_0.group_table)

		anonteam_39_2.type = 3
		anonteam_39_2.def_value = arg_39_4
		anonteam_39_2.elements_array = arg_39_3
		anonteam_39_2.list_by_name = {}

		for iter_39_0 = 1, #arg_39_3 do
			anonteam_39_2.list_by_name[arg_39_3[iter_39_0]] = iter_39_0
		end

		anonteam_39_2.str_value = anonteam_39_0:get()
		anonteam_39_2.value = anonteam_39_2.list_by_name[anonteam_39_2.str_value]

		anonteam_39_2.ref:unset_callback(anonteam_39_2._callback_func)

		function anonteam_39_2._callback_func(arg_41_0)
			-- function 41
			local anonteam_41_0 = anonteam_39_2.ref:get()

			anonteam_39_2.value = anonteam_39_2.list_by_name[anonteam_41_0]
			anonteam_39_2.str_value = anonteam_41_0
			anonteam_39_2.value_for_ref = anonteam_41_0
			anonteam_0_47.values[arg_23_1][arg_39_1] = anonteam_41_0

			local anonteam_41_1 = anonteam_39_2._vis_func()

			if anonteam_39_2.group_table._vis_func then
				anonteam_41_1 = anonteam_41_1 and anonteam_39_2.group_table._vis_func()
			end

			anonteam_41_1 = (arg_39_6 or anonteam_39_2.parent_table.value) and anonteam_41_1

			if arg_41_0 then
				for iter_41_0 = 1, #anonteam_39_2._callbacks_list do
					anonteam_39_2._callbacks_list[iter_41_0]()
				end
			end

			if arg_41_0 and anonteam_0_47.is_loaded then
				anonteam_39_2.group_table:update()
			end

			local anonteam_41_2 = anonteam_39_2._dis_func and anonteam_39_2._dis_func() or nil

			if anonteam_39_2.group_table._dis_func then
				anonteam_41_2 = anonteam_41_2 or anonteam_39_2.group_table._dis_func()
			end

			if anonteam_41_2 ~= nil and anonteam_39_2._disabled ~= anonteam_41_2 then
				anonteam_39_2._disabled = anonteam_41_2

				anonteam_39_2.ref:disabled(anonteam_41_2)
			end

			if anonteam_39_2._vis_state ~= anonteam_41_1 then
				anonteam_39_2._vis_state = anonteam_41_1

				anonteam_39_2.ref:visibility(anonteam_39_2._vis_state)
			end
		end

		anonteam_39_2.ref:set_callback(anonteam_39_2._callback_func, true)

		anonteam_39_2 = setmetatable(anonteam_39_2, {
			__call = function(arg_42_0)
				-- function 42
				return arg_42_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_23_1][arg_39_1] = anonteam_39_2
		arg_23_0.elements[#arg_23_0.elements + 1] = anonteam_39_2

		return anonteam_39_2
	end

	function anonteam_23_0.selectable(arg_43_0, arg_43_1, arg_43_2, arg_43_3, arg_43_4, arg_43_5, arg_43_6)
		-- function 43
		if not arg_43_0.gear_ref then
			arg_43_0.gear_ref = arg_43_0.ref:create()
		end

		local anonteam_43_0 = arg_43_0.gear_ref:selectable(arg_43_2, arg_43_3)
		local anonteam_43_1 = arg_43_5 and arg_43_5 or function()
			-- function 44
			return true
		end
		local anonteam_43_2 = anonteam_0_47.get_default_gear_table(anonteam_23_0, arg_23_1, arg_43_1, arg_43_6, anonteam_43_0, anonteam_43_1, arg_43_0.group_table)

		anonteam_43_2.type = 4
		anonteam_43_2.def_value = arg_43_4
		anonteam_43_2.elements_array = arg_43_3
		anonteam_43_2.list_by_name = {}

		for iter_43_0 = 1, #arg_43_3 do
			anonteam_43_2.list_by_name[arg_43_3[iter_43_0]] = iter_43_0
		end

		anonteam_43_2.str_value = anonteam_43_0:get()
		anonteam_43_2.value = anonteam_43_0:get()
		anonteam_43_2.value_by_name = {}

		for iter_43_1 = 1, #anonteam_43_2.value do
			anonteam_43_2.value_by_name[anonteam_43_2.value[iter_43_1]] = true
		end

		anonteam_43_2.ref:unset_callback(anonteam_43_2._callback_func)

		function anonteam_43_2._callback_func(arg_45_0)
			-- function 45
			local anonteam_45_0 = anonteam_43_2.ref:get()

			anonteam_43_2.value = anonteam_45_0
			anonteam_43_2.str_value = anonteam_45_0
			anonteam_43_2.value_for_ref = anonteam_45_0
			anonteam_43_2.value_by_name = {}

			for iter_45_0 = 1, #anonteam_43_2.value do
				anonteam_43_2.value_by_name[anonteam_43_2.value[iter_45_0]] = true
			end

			anonteam_0_47.values[arg_23_1][arg_43_1] = anonteam_45_0

			local anonteam_45_1 = anonteam_43_2._vis_func()

			if anonteam_43_2.group_table._vis_func then
				anonteam_45_1 = anonteam_45_1 and anonteam_43_2.group_table._vis_func()
			end

			anonteam_45_1 = (arg_43_6 or anonteam_43_2.parent_table.value) and anonteam_45_1

			if arg_45_0 then
				for iter_45_1 = 1, #anonteam_43_2._callbacks_list do
					anonteam_43_2._callbacks_list[iter_45_1]()
				end
			end

			if arg_45_0 and anonteam_0_47.is_loaded then
				anonteam_43_2.group_table:update()
			end

			local anonteam_45_2 = anonteam_43_2._dis_func and anonteam_43_2._dis_func() or nil

			if anonteam_43_2.group_table._dis_func then
				anonteam_45_2 = anonteam_45_2 or anonteam_43_2.group_table._dis_func()
			end

			if anonteam_45_2 ~= nil and anonteam_43_2._disabled ~= anonteam_45_2 then
				anonteam_43_2._disabled = anonteam_45_2

				anonteam_43_2.ref:disabled(anonteam_45_2)
			end

			if anonteam_43_2._vis_state ~= anonteam_45_1 then
				anonteam_43_2._vis_state = anonteam_45_1

				anonteam_43_2.ref:visibility(anonteam_43_2._vis_state)
			end
		end

		anonteam_43_2.ref:set_callback(anonteam_43_2._callback_func, true)

		anonteam_43_2 = setmetatable(anonteam_43_2, {
			__call = function(arg_46_0)
				-- function 46
				return arg_46_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_23_1][arg_43_1] = anonteam_43_2
		arg_23_0.elements[#arg_23_0.elements + 1] = anonteam_43_2

		return anonteam_43_2
	end

	function anonteam_23_0.color_picker(arg_47_0, arg_47_1, arg_47_2, arg_47_3, arg_47_4, arg_47_5)
		-- function 47
		if not arg_47_0.gear_ref and arg_47_2 then
			arg_47_0.gear_ref = arg_47_0.ref:create()
		end

		local anonteam_47_0 = arg_47_0.gear_ref and arg_47_0.gear_ref:color_picker(arg_47_2, arg_47_3) or arg_47_0.ref:color_picker(arg_47_3)
		local anonteam_47_1 = arg_47_4 and arg_47_4 or function()
			-- function 48
			return true
		end
		local anonteam_47_2 = anonteam_0_47.get_default_gear_table(anonteam_23_0, arg_23_1, arg_47_1, arg_47_5, anonteam_47_0, anonteam_47_1, arg_47_0.group_table)

		anonteam_47_2.type = 5
		anonteam_47_2.def_value = arg_47_3

		local anonteam_47_3 = setmetatable(anonteam_47_2, {
			__call = function(arg_49_0)
				-- function 49
				return arg_49_0.ref
			end
		})

		anonteam_0_47.ui_tables[arg_23_1][arg_47_1] = anonteam_47_3
		arg_23_0.elements[#arg_23_0.elements + 1] = anonteam_47_3

		return anonteam_47_3
	end

	function anonteam_23_0.button(arg_50_0, arg_50_1, arg_50_2, arg_50_3, arg_50_4, arg_50_5, arg_50_6)
		-- function 50
		if not arg_50_0.gear_ref then
			arg_50_0.gear_ref = arg_50_0.ref:create()
		end

		local anonteam_50_0 = arg_50_0.gear_ref:button(arg_50_2, arg_50_3, arg_50_4 and arg_50_4 or false)
		local anonteam_50_1 = arg_50_5 and arg_50_5 or function()
			-- function 51
			return true
		end
		local anonteam_50_2 = anonteam_0_47.get_default_gear_table(anonteam_23_0, arg_23_1, arg_50_1, arg_50_6, anonteam_50_0, anonteam_50_1, arg_50_0.group_table)

		anonteam_50_2.type = 6
		anonteam_50_2.def_value = nil

		local anonteam_50_3 = setmetatable(anonteam_50_2, {
			__call = function(arg_52_0)
				-- function 52
				return arg_52_0.ref
			end
		})

		anonteam_0_47.ui_tables[arg_23_1][arg_50_1] = anonteam_50_3
		arg_23_0.elements[#arg_23_0.elements + 1] = anonteam_50_3

		return anonteam_50_3
	end

	function anonteam_23_0.hotkey(arg_53_0, arg_53_1, arg_53_2, arg_53_3, arg_53_4, arg_53_5, arg_53_6)
		-- function 53
		if not arg_53_0.gear_ref then
			arg_53_0.gear_ref = arg_53_0.ref:create()
		end

		local anonteam_53_0 = arg_53_0.gear_ref:hotkey(arg_53_2, arg_53_3)
		local anonteam_53_1 = arg_53_5 and arg_53_5 or function()
			-- function 54
			return true
		end
		local anonteam_53_2 = anonteam_0_47.get_default_gear_table(anonteam_23_0, arg_23_1, arg_53_1, arg_53_6, anonteam_53_0, anonteam_53_1, arg_53_0.group_table)

		anonteam_53_2.type = 7
		anonteam_53_2.def_value = arg_53_3

		function anonteam_53_2.key(arg_55_0, arg_55_1)
			-- function 55
			if not arg_55_1 then
				return arg_55_0.ref:key()
			end

			arg_55_0.ref:key(arg_55_1)
		end

		anonteam_53_2.ref:unset_callback(anonteam_53_2._callback_func)

		anonteam_53_2._holding = false
		anonteam_53_2.mode = arg_53_4

		if arg_53_4 == 1 then
			function anonteam_53_2._createmove_func()
				-- function 56
				anonteam_53_2._holding = anonteam_53_2.ref:get()
				anonteam_53_2.value = anonteam_53_2._holding

				if anonteam_53_2._holding then
					local anonteam_56_0 = anonteam_53_2.callbacks_funcs

					for iter_56_0 = 1, #anonteam_56_0 do
						anonteam_56_0[iter_56_0]()
					end
				end
			end
		else
			anonteam_53_2._prev_state = false

			function anonteam_53_2._createmove_func()
				-- function 57
				anonteam_53_2._holding = anonteam_53_2.ref:get()

				if not anonteam_53_2._holding and anonteam_53_2._prev_state then
					anonteam_53_2.value = not anonteam_53_2.value

					local anonteam_57_0 = anonteam_53_2.callbacks_funcs

					for iter_57_0 = 1, #anonteam_57_0 do
						anonteam_57_0[iter_57_0]()
					end
				end

				anonteam_53_2._prev_state = anonteam_53_2._holding
			end
		end

		events.createmove:set(anonteam_53_2._createmove_func)

		anonteam_53_2.callbacks_funcs = {}

		function anonteam_53_2.set_callback(arg_58_0, arg_58_1, arg_58_2)
			-- function 58
			arg_58_0.callbacks_funcs[#arg_58_0.callbacks_funcs + 1] = arg_58_1

			if arg_58_2 then
				arg_58_1()
			end
		end

		function anonteam_53_2.unset_callback(arg_59_0, arg_59_1)
			-- function 59
			for iter_59_0 = 1, #arg_59_0.callbacks_funcs do
				if arg_59_0.callbacks_funcs[iter_59_0] == arg_59_1 then
					table.remove(arg_59_0.callbacks_funcs, iter_59_0)

					break
				end
			end
		end

		anonteam_53_2 = setmetatable(anonteam_53_2, {
			__call = function(arg_60_0)
				-- function 60
				return arg_60_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_23_1][arg_53_1] = anonteam_53_2
		arg_23_0.elements[#arg_23_0.elements + 1] = anonteam_53_2

		return anonteam_53_2
	end

	function anonteam_23_0.text_box(arg_61_0, arg_61_1, arg_61_2, arg_61_3, arg_61_4, arg_61_5)
		-- function 61
		if not arg_61_0.gear_ref then
			arg_61_0.gear_ref = arg_61_0.ref:create()
		end

		local anonteam_61_0 = arg_61_0.gear_ref:input(arg_61_2, arg_61_3)
		local anonteam_61_1 = arg_61_4 and arg_61_4 or function()
			-- function 62
			return true
		end
		local anonteam_61_2 = anonteam_0_47.get_default_gear_table(anonteam_23_0, arg_23_1, arg_61_1, arg_61_5, anonteam_61_0, anonteam_61_1, arg_61_0.group_table)

		anonteam_61_2.type = 8
		anonteam_61_2.def_value = arg_61_3

		local anonteam_61_3 = setmetatable(anonteam_61_2, {
			__call = function(arg_63_0)
				-- function 63
				return arg_63_0.ref
			end
		})

		anonteam_0_47.ui_tables[arg_23_1][arg_61_1] = anonteam_61_3
		arg_23_0.elements[#arg_23_0.elements + 1] = anonteam_61_3

		return anonteam_61_3
	end

	function anonteam_23_0.list(arg_64_0, arg_64_1, arg_64_2, arg_64_3, arg_64_4, arg_64_5, arg_64_6)
		-- function 64
		if not arg_64_0.gear_ref then
			arg_64_0.gear_ref = arg_64_0.ref:create()
		end

		local anonteam_64_0 = arg_64_0.gear_ref:list(arg_64_2, arg_64_3)
		local anonteam_64_1 = arg_64_5 and arg_64_5 or function()
			-- function 65
			return true
		end
		local anonteam_64_2 = anonteam_0_47.get_default_gear_table(anonteam_23_0, arg_23_1, arg_64_1, arg_64_6, anonteam_64_0, anonteam_64_1, arg_64_0.group_table)

		anonteam_64_2.type = 9
		anonteam_64_2.def_value = arg_64_4
		anonteam_64_2.elements_array = arg_64_3
		anonteam_64_2.list_by_name = {}

		for iter_64_0 = 1, #arg_64_3 do
			anonteam_64_2.list_by_name[arg_64_3[iter_64_0]] = iter_64_0
		end

		anonteam_64_2.str_value = anonteam_64_0:get()
		anonteam_64_2.value = anonteam_64_2.list_by_name[anonteam_64_2.str_value]

		anonteam_64_2.ref:unset_callback(anonteam_64_2._callback_func)

		function anonteam_64_2._callback_func(arg_66_0)
			-- function 66
			local anonteam_66_0 = anonteam_64_2.ref:get()

			anonteam_64_2.value = anonteam_66_0
			anonteam_64_2.str_value = anonteam_64_2.elements_array[anonteam_66_0]
			anonteam_64_2.value_for_ref = anonteam_66_0
			anonteam_0_47.values[arg_23_1][arg_64_1] = anonteam_66_0

			local anonteam_66_1 = anonteam_64_2._vis_func()

			if anonteam_64_2.group_table._vis_func then
				anonteam_66_1 = anonteam_66_1 and anonteam_64_2.group_table._vis_func()
			end

			anonteam_66_1 = (arg_64_6 or anonteam_64_2.parent_table.value) and anonteam_66_1

			if arg_66_0 then
				for iter_66_0 = 1, #anonteam_64_2._callbacks_list do
					anonteam_64_2._callbacks_list[iter_66_0]()
				end
			end

			if arg_66_0 and anonteam_0_47.is_loaded then
				anonteam_64_2.group_table:update()
			end

			local anonteam_66_2 = anonteam_64_2._dis_func and anonteam_64_2._dis_func() or nil

			if anonteam_64_2.group_table._dis_func then
				anonteam_66_2 = anonteam_66_2 or anonteam_64_2.group_table._dis_func()
			end

			if anonteam_66_2 ~= nil and anonteam_64_2._disabled ~= anonteam_66_2 then
				anonteam_64_2._disabled = anonteam_66_2

				anonteam_64_2.ref:disabled(anonteam_66_2)
			end

			if anonteam_64_2._vis_state ~= anonteam_66_1 then
				anonteam_64_2._vis_state = anonteam_66_1

				anonteam_64_2.ref:visibility(anonteam_64_2._vis_state)
			end
		end

		anonteam_64_2.ref:set_callback(anonteam_64_2._callback_func, true)

		anonteam_64_2 = setmetatable(anonteam_64_2, {
			__call = function(arg_67_0)
				-- function 67
				return arg_67_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_23_1][arg_64_1] = anonteam_64_2
		arg_23_0.elements[#arg_23_0.elements + 1] = anonteam_64_2

		return anonteam_64_2
	end

	function anonteam_23_0.listable(arg_68_0, arg_68_1, arg_68_2, arg_68_3, arg_68_4, arg_68_5, arg_68_6)
		-- function 68
		if not arg_68_0.gear_ref then
			arg_68_0.gear_ref = arg_68_0.ref:create()
		end

		local anonteam_68_0 = arg_68_0.gear_ref:listable(arg_68_2, arg_68_3)
		local anonteam_68_1 = arg_68_5 and arg_68_5 or function()
			-- function 69
			return true
		end
		local anonteam_68_2 = anonteam_0_47.get_default_gear_table(anonteam_23_0, arg_23_1, arg_68_1, arg_68_6, anonteam_68_0, anonteam_68_1, arg_68_0.group_table)

		anonteam_68_2.type = 10
		anonteam_68_2.def_value = arg_68_4
		anonteam_68_2.elements_array = arg_68_3
		anonteam_68_2.list_by_name = {}

		for iter_68_0 = 1, #arg_68_3 do
			anonteam_68_2.list_by_name[arg_68_3[iter_68_0]] = iter_68_0
		end

		anonteam_68_2.str_value = anonteam_68_0:get()
		anonteam_68_2.value = anonteam_68_0:get()
		anonteam_68_2.value_by_name = {}

		for iter_68_1 = 1, #anonteam_68_2.value do
			anonteam_68_2.value_by_name[anonteam_68_2.value[iter_68_1]] = true
		end

		anonteam_68_2.ref:unset_callback(anonteam_68_2._callback_func)

		function anonteam_68_2._callback_func(arg_70_0)
			-- function 70
			local anonteam_70_0 = anonteam_68_2.ref:get()

			anonteam_68_2.value = anonteam_70_0
			anonteam_68_2.str_value = anonteam_70_0
			anonteam_68_2.value_for_ref = anonteam_70_0
			anonteam_68_2.value_by_name = {}

			for iter_70_0 = 1, #anonteam_68_2.value do
				anonteam_68_2.value_by_name[anonteam_68_2.value[iter_70_0]] = true
			end

			anonteam_0_47.values[arg_23_1][arg_68_1] = anonteam_70_0

			local anonteam_70_1 = anonteam_68_2._vis_func()

			if anonteam_68_2.group_table._vis_func then
				anonteam_70_1 = anonteam_70_1 and anonteam_68_2.group_table._vis_func()
			end

			anonteam_70_1 = (arg_68_6 or anonteam_68_2.parent_table.value) and anonteam_70_1

			if arg_70_0 then
				for iter_70_1 = 1, #anonteam_68_2._callbacks_list do
					anonteam_68_2._callbacks_list[iter_70_1]()
				end
			end

			if arg_70_0 and anonteam_0_47.is_loaded then
				anonteam_68_2.group_table:update()
			end

			local anonteam_70_2 = anonteam_68_2._dis_func and anonteam_68_2._dis_func() or nil

			if anonteam_68_2.group_table._dis_func then
				anonteam_70_2 = anonteam_70_2 or anonteam_68_2.group_table._dis_func()
			end

			if anonteam_70_2 ~= nil and anonteam_68_2._disabled ~= anonteam_70_2 then
				anonteam_68_2._disabled = anonteam_70_2

				anonteam_68_2.ref:disabled(anonteam_70_2)
			end

			if anonteam_68_2._vis_state ~= anonteam_70_1 then
				anonteam_68_2._vis_state = anonteam_70_1

				anonteam_68_2.ref:visibility(anonteam_68_2._vis_state)
			end
		end

		anonteam_68_2.ref:set_callback(anonteam_68_2._callback_func, true)

		anonteam_68_2 = setmetatable(anonteam_68_2, {
			__call = function(arg_71_0)
				-- function 71
				return arg_71_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_23_1][arg_68_1] = anonteam_68_2
		arg_23_0.elements[#arg_23_0.elements + 1] = anonteam_68_2

		return anonteam_68_2
	end

	function anonteam_23_0.label(arg_72_0, arg_72_1, arg_72_2, arg_72_3, arg_72_4, arg_72_5)
		-- function 72
		if not arg_72_0.gear_ref then
			arg_72_0.gear_ref = arg_72_0.ref:create()
		end

		local anonteam_72_0 = arg_72_0.gear_ref:label(arg_72_2)
		local anonteam_72_1 = arg_72_4 and arg_72_4 or function()
			-- function 73
			return true
		end
		local anonteam_72_2 = anonteam_0_47.get_default_gear_table(anonteam_23_0, "label", arg_72_1, arg_72_5, anonteam_72_0, anonteam_72_1, arg_72_0.group_table)

		anonteam_72_2.type = 11
		anonteam_72_2.def_value = arg_72_3

		local anonteam_72_3 = setmetatable(anonteam_72_2, {
			__call = function(arg_74_0)
				-- function 74
				return arg_74_0.ref
			end
		})

		anonteam_0_47.ui_tables.label[arg_72_1] = anonteam_72_3
		arg_23_0.elements[#arg_23_0.elements + 1] = anonteam_72_3

		return anonteam_72_3
	end

	return anonteam_23_0
end

function anonteam_0_47.get_default_gear_table(arg_75_0, arg_75_1, arg_75_2, arg_75_3, arg_75_4, arg_75_5, arg_75_6)
	-- function 75
	if not anonteam_0_47.values[arg_75_1] then
		anonteam_0_47.values[arg_75_1] = {}
	end

	if not anonteam_0_47.ui_tables[arg_75_1] then
		anonteam_0_47.ui_tables[arg_75_1] = {}
	end

	local anonteam_75_0 = {
		ref = arg_75_4,
		value_for_ref = arg_75_4:get()
	}

	anonteam_75_0.value = nil
	anonteam_75_0._vis_func = arg_75_5
	anonteam_75_0._vis_state = anonteam_75_0._vis_func()
	anonteam_75_0._dis_func = nil
	anonteam_75_0.group_table = arg_75_6
	anonteam_75_0.parent_table = arg_75_0
	anonteam_75_0._callbacks_list = {}

	function anonteam_75_0.visible(arg_76_0, arg_76_1)
		-- function 76
		if arg_76_1 ~= nil and arg_76_0._vis_state ~= arg_76_1 then
			arg_76_0.ref:visibility(arg_76_1)

			arg_76_0._vis_state = arg_76_1
		end

		return arg_76_0._vis_state
	end

	anonteam_75_0._disabled = false

	function anonteam_75_0.disabled(arg_77_0, arg_77_1)
		-- function 77
		if arg_77_1 == nil then
			return arg_77_0.ref:disabled()
		end

		if anonteam_75_0._disabled ~= arg_77_1 then
			anonteam_75_0._disabled = arg_77_1

			arg_77_0.ref:disabled(arg_77_1)
		end
	end

	function anonteam_75_0._callback_func(arg_78_0)
		-- function 78
		local anonteam_78_0 = anonteam_75_0.ref:get()

		anonteam_75_0.value = anonteam_78_0
		anonteam_75_0.value_for_ref = anonteam_78_0
		anonteam_0_47.values[arg_75_1][arg_75_2] = anonteam_78_0

		local anonteam_78_1 = anonteam_75_0._vis_func()

		anonteam_78_1 = (arg_75_3 or anonteam_75_0.parent_table.value) and anonteam_78_1

		if arg_78_0 then
			for iter_78_0 = 1, #anonteam_75_0._callbacks_list do
				anonteam_75_0._callbacks_list[iter_78_0]()
			end
		end

		if arg_78_0 and anonteam_0_47.is_loaded then
			anonteam_75_0.group_table:update()
		end

		if anonteam_75_0._vis_state ~= anonteam_78_1 then
			anonteam_75_0._vis_state = anonteam_78_1

			anonteam_75_0.ref:visibility(anonteam_75_0._vis_state)
		end

		local anonteam_78_2

		if anonteam_75_0._dis_func then
			anonteam_78_2 = anonteam_75_0._dis_func()
		end

		if anonteam_75_0.group_table._dis_func then
			anonteam_78_2 = anonteam_78_2 or anonteam_75_0.group_table._dis_func()
		end

		if anonteam_78_2 ~= nil and anonteam_75_0._disabled ~= anonteam_78_2 then
			anonteam_75_0._disabled = anonteam_78_2

			anonteam_75_0.ref:disabled(anonteam_78_2)
		end
	end

	anonteam_75_0.ref:set_callback(anonteam_75_0._callback_func, true)

	function anonteam_75_0.set_callback(arg_79_0, arg_79_1, arg_79_2)
		-- function 79
		arg_79_0._callbacks_list[#arg_79_0._callbacks_list + 1] = arg_79_1

		if arg_79_2 then
			arg_79_1()
		end

		return arg_79_1
	end

	function anonteam_75_0.unset_callback(arg_80_0, arg_80_1)
		-- function 80
		for iter_80_0 = 1, #arg_80_0._callbacks_list do
			if arg_80_0._callbacks_list[iter_80_0] == arg_80_1 then
				table.remove(arg_80_0._callbacks_list, iter_80_0)

				break
			end
		end
	end

	function anonteam_75_0.set_disable_function(arg_81_0, arg_81_1)
		-- function 81
		arg_81_0._dis_func = arg_81_1
	end

	function anonteam_75_0.tooltip(arg_82_0, arg_82_1)
		-- function 82
		if not arg_82_1 then
			return arg_82_0.ref:tooltip()
		end

		arg_82_0.ref:tooltip(arg_82_1)
	end

	function anonteam_75_0.name(arg_83_0, arg_83_1)
		-- function 83
		if not arg_83_1 then
			return arg_83_0.ref:name()
		end

		arg_83_0.ref:name(arg_83_1)
	end

	function anonteam_75_0.visible_condition(arg_84_0, ...)
		-- function 84
		local anonteam_84_0 = {
			...
		}

		function arg_84_0._vis_func()
			-- function 85
			local anonteam_85_0 = true

			if not anonteam_84_0[1].type then
				local anonteam_85_1 = anonteam_84_0[1]

				for iter_85_0 = 1, #anonteam_85_1 do
					local anonteam_85_2 = anonteam_85_1[iter_85_0]
					local anonteam_85_3 = anonteam_85_2[1].type

					if anonteam_85_3 == 3 or anonteam_85_3 == 4 or anonteam_85_3 == 9 or anonteam_85_3 == 10 then
						if type(anonteam_85_2[2]) == "string" then
							if anonteam_85_2[1].str_value ~= anonteam_85_2[2] then
								anonteam_85_0 = false

								break
							end
						elseif anonteam_85_2[1].value ~= anonteam_85_2[2] then
							anonteam_85_0 = false

							break
						end
					elseif anonteam_85_2[1].value ~= anonteam_85_2[2] then
						anonteam_85_0 = false

						break
					end
				end
			else
				local anonteam_85_4 = anonteam_84_0
				local anonteam_85_5 = anonteam_85_4[1].type

				if anonteam_85_5 == 3 or anonteam_85_5 == 4 or anonteam_85_5 == 9 or anonteam_85_5 == 10 then
					if type(anonteam_85_4[2]) == "string" then
						if anonteam_85_4[1].str_value ~= anonteam_85_4[2] then
							anonteam_85_0 = false
						end
					elseif anonteam_85_4[1].value ~= anonteam_85_4[2] then
						anonteam_85_0 = false
					end
				elseif anonteam_85_4[1].value ~= anonteam_85_4[2] then
					anonteam_85_0 = false
				end
			end

			anonteam_75_0:visible(anonteam_85_0)
		end
	end

	function anonteam_75_0.color_picker(arg_86_0, arg_86_1, arg_86_2, arg_86_3, arg_86_4)
		-- function 86
		local anonteam_86_0 = arg_86_0.ref:color_picker(arg_86_2)
		local anonteam_86_1 = arg_86_3 and arg_86_3 or function()
			-- function 87
			return true
		end
		local anonteam_86_2 = anonteam_0_47.get_default_gear_table(anonteam_75_0, arg_75_1, arg_86_1, arg_86_4, anonteam_86_0, anonteam_86_1, arg_86_0.group_table)

		anonteam_86_2.type = 5
		anonteam_86_2.def_value = arg_86_2

		local anonteam_86_3 = setmetatable(anonteam_86_2, {
			__call = function(arg_88_0)
				-- function 88
				return arg_88_0.ref
			end
		})

		anonteam_0_47.ui_tables[arg_75_1][arg_86_1] = anonteam_86_3
		arg_75_6.elements[#arg_75_6.elements + 1] = anonteam_86_3

		return anonteam_86_3
	end

	return anonteam_75_0
end

function anonteam_0_47.create_group(arg_89_0, arg_89_1)
	-- function 89
	local anonteam_89_0 = {
		tab_name = anonteam_0_47.active_tab,
		elements = {},
		ref = ui.create(anonteam_0_47.active_tab, arg_89_0, arg_89_1)
	}

	anonteam_89_0._vis_func = nil
	anonteam_89_0._dis_func = nil

	function anonteam_89_0.update(arg_90_0)
		-- function 90
		local anonteam_90_0 = arg_90_0.elements
		local anonteam_90_1
		local anonteam_90_2

		if arg_90_0._vis_func then
			anonteam_90_1 = arg_90_0._vis_func()
		end

		if arg_90_0._dis_func then
			anonteam_90_2 = arg_90_0._dis_func()
		end

		for iter_90_0 = 1, #anonteam_90_0 do
			local anonteam_90_3 = anonteam_90_0[iter_90_0]

			if anonteam_90_1 ~= nil then
				anonteam_90_3:visible(anonteam_90_1)
			end

			if anonteam_90_2 ~= nil then
				anonteam_90_3:disabled(anonteam_90_2)
			end

			anonteam_90_3._callback_func()
		end

		local anonteam_90_4 = arg_90_0.callbacks_funcs

		for iter_90_1 = 1, #anonteam_90_4 do
			anonteam_90_4[iter_90_1]()
		end
	end

	function anonteam_89_0.visible_condition(arg_91_0, arg_91_1)
		-- function 91
		arg_91_0._vis_func = arg_91_1

		return arg_91_1
	end

	function anonteam_89_0.disabled_condition(arg_92_0, arg_92_1)
		-- function 92
		arg_92_0._dis_func = arg_92_1

		return arg_92_1
	end

	anonteam_89_0.callbacks_funcs = {}

	function anonteam_89_0.set_callback(arg_93_0, arg_93_1, arg_93_2)
		-- function 93
		arg_93_0.callbacks_funcs[#arg_93_0.callbacks_funcs + 1] = arg_93_1

		if arg_93_2 then
			arg_93_1()
		end
	end

	function anonteam_89_0.unset_callback(arg_94_0, arg_94_1)
		-- function 94
		for iter_94_0 = 1, #arg_94_0.callbacks_funcs do
			if arg_94_0.callbacks_funcs[iter_94_0] == arg_94_1 then
				table.remove(arg_94_0.callbacks_funcs, iter_94_0)

				break
			end
		end
	end

	function anonteam_89_0.switch(arg_95_0, arg_95_1, arg_95_2, arg_95_3, arg_95_4, arg_95_5, arg_95_6, arg_95_7)
		-- function 95
		local anonteam_95_0 = arg_95_0.ref:switch(arg_95_3, arg_95_4)
		local anonteam_95_1 = arg_95_5 and arg_95_5 or function()
			-- function 96
			return true
		end
		local anonteam_95_2 = anonteam_0_47.get_default_ui_el_table(anonteam_89_0, arg_95_1, arg_95_2, anonteam_95_0, anonteam_95_1)

		anonteam_95_2.value = anonteam_95_0:get()
		anonteam_95_2.type = 1
		anonteam_95_2.def_value = arg_95_4
		anonteam_95_2.def_name = arg_95_3
		anonteam_95_2.disabled_icon = arg_95_6 == nil and "" or arg_95_6
		anonteam_95_2.enabled_icon = arg_95_7 == nil and "" or arg_95_7
		anonteam_95_2.enabled_text = anonteam_95_2.enabled_icon .. arg_95_3
		anonteam_95_2.disabled_text = anonteam_95_2.disabled_icon .. arg_95_3

		anonteam_95_2:set_callback(function()
			-- function 97
			anonteam_95_0:name(anonteam_95_2.value and anonteam_95_2.enabled_text or anonteam_95_2.disabled_text)
		end, true)

		anonteam_95_2 = setmetatable(anonteam_95_2, {
			__call = function(arg_98_0)
				-- function 98
				return arg_98_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_95_1][arg_95_2] = anonteam_95_2
		anonteam_89_0.elements[#anonteam_89_0.elements + 1] = anonteam_95_2

		return anonteam_95_2
	end

	function anonteam_89_0.slider(arg_99_0, arg_99_1, arg_99_2, arg_99_3, arg_99_4, arg_99_5, arg_99_6, arg_99_7, arg_99_8, arg_99_9)
		-- function 99
		local anonteam_99_0 = arg_99_0.ref:slider(arg_99_3, arg_99_4, arg_99_5, arg_99_6, arg_99_7, arg_99_8)
		local anonteam_99_1 = arg_99_9 and arg_99_9 or function()
			-- function 100
			return true
		end
		local anonteam_99_2 = anonteam_0_47.get_default_ui_el_table(anonteam_89_0, arg_99_1, arg_99_2, anonteam_99_0, anonteam_99_1)

		anonteam_99_2.type = 2
		anonteam_99_2.def_value = arg_99_6

		local anonteam_99_3 = setmetatable(anonteam_99_2, {
			__call = function(arg_101_0)
				-- function 101
				return arg_101_0.ref
			end
		})

		anonteam_0_47.ui_tables[arg_99_1][arg_99_2] = anonteam_99_3
		anonteam_89_0.elements[#anonteam_89_0.elements + 1] = anonteam_99_3

		return anonteam_99_3
	end

	function anonteam_89_0.combo(arg_102_0, arg_102_1, arg_102_2, arg_102_3, arg_102_4, arg_102_5, arg_102_6)
		-- function 102
		local anonteam_102_0 = arg_102_0.ref:combo(arg_102_3, arg_102_4)
		local anonteam_102_1 = arg_102_6 and arg_102_6 or function()
			-- function 103
			return true
		end
		local anonteam_102_2 = anonteam_0_47.get_default_ui_el_table(anonteam_89_0, arg_102_1, arg_102_2, anonteam_102_0, anonteam_102_1)

		anonteam_102_2.type = 3
		anonteam_102_2.def_value = arg_102_5
		anonteam_102_2.elements_array = arg_102_4
		anonteam_102_2.list_by_name = {}

		for iter_102_0 = 1, #arg_102_4 do
			anonteam_102_2.list_by_name[arg_102_4[iter_102_0]] = iter_102_0
		end

		anonteam_102_2.str_value = anonteam_102_0:get()
		anonteam_102_2.value = anonteam_102_2.list_by_name[anonteam_102_2.str_value]

		anonteam_102_2.ref:unset_callback(anonteam_102_2._callback_func)

		function anonteam_102_2._callback_func(arg_104_0)
			-- function 104
			local anonteam_104_0 = anonteam_102_2.ref:get()

			anonteam_102_2.value = anonteam_102_2.list_by_name[anonteam_104_0]
			anonteam_102_2.str_value = anonteam_104_0
			anonteam_102_2.value_for_ref = anonteam_104_0
			anonteam_0_47.values[arg_102_1][arg_102_2] = anonteam_104_0

			local anonteam_104_1 = anonteam_102_2._vis_func()

			if anonteam_102_2.group_table._vis_func then
				anonteam_104_1 = anonteam_104_1 and anonteam_102_2.group_table._vis_func()
			end

			if arg_104_0 then
				for iter_104_0 = 1, #anonteam_102_2._callbacks_list do
					anonteam_102_2._callbacks_list[iter_104_0]()
				end
			end

			if arg_104_0 and anonteam_0_47.is_loaded then
				anonteam_102_2.group_table:update()
			end

			local anonteam_104_2 = anonteam_102_2._dis_func and anonteam_102_2._dis_func() or nil

			if anonteam_102_2.group_table._dis_func then
				anonteam_104_2 = anonteam_104_2 and anonteam_102_2.group_table._dis_func()
			end

			if anonteam_104_2 ~= nil and anonteam_102_2._disabled ~= anonteam_104_2 then
				anonteam_102_2._disabled = anonteam_104_2

				anonteam_102_2.ref:disabled(anonteam_104_2)
			end

			if anonteam_102_2._vis_state ~= anonteam_104_1 then
				anonteam_102_2._vis_state = anonteam_104_1

				anonteam_102_2.ref:visibility(anonteam_102_2._vis_state)
			end
		end

		anonteam_102_2.ref:set_callback(anonteam_102_2._callback_func)

		anonteam_102_2 = setmetatable(anonteam_102_2, {
			__call = function(arg_105_0)
				-- function 105
				return arg_105_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_102_1][arg_102_2] = anonteam_102_2
		anonteam_89_0.elements[#anonteam_89_0.elements + 1] = anonteam_102_2

		return anonteam_102_2
	end

	function anonteam_89_0.selectable(arg_106_0, arg_106_1, arg_106_2, arg_106_3, arg_106_4, arg_106_5, arg_106_6)
		-- function 106
		local anonteam_106_0 = arg_106_0.ref:selectable(arg_106_3, arg_106_4)
		local anonteam_106_1 = arg_106_6 and arg_106_6 or function()
			-- function 107
			return true
		end
		local anonteam_106_2 = anonteam_0_47.get_default_ui_el_table(anonteam_89_0, arg_106_1, arg_106_2, anonteam_106_0, anonteam_106_1)

		anonteam_106_2.type = 4
		anonteam_106_2.def_value = arg_106_5
		anonteam_106_2.elements_array = arg_106_4
		anonteam_106_2.list_by_name = {}

		for iter_106_0 = 1, #arg_106_4 do
			anonteam_106_2.list_by_name[arg_106_4[iter_106_0]] = iter_106_0
		end

		anonteam_106_2.value = anonteam_106_0:get()
		anonteam_106_2.value_by_name = {}

		for iter_106_1 = 1, #anonteam_106_2.value do
			anonteam_106_2.value_by_name[anonteam_106_2.value[iter_106_1]] = true
		end

		anonteam_106_2.ref:unset_callback(anonteam_106_2._callback_func)

		function anonteam_106_2._callback_func(arg_108_0)
			-- function 108
			local anonteam_108_0 = anonteam_106_2.ref:get()

			anonteam_106_2.value = anonteam_108_0
			anonteam_106_2.value_for_ref = anonteam_108_0
			anonteam_106_2.value_by_name = {}

			for iter_108_0 = 1, #anonteam_108_0 do
				anonteam_106_2.value_by_name[anonteam_108_0[iter_108_0]] = true
			end

			anonteam_0_47.values[arg_106_1][arg_106_2] = anonteam_108_0

			local anonteam_108_1 = anonteam_106_2._vis_func()

			if anonteam_106_2.group_table._vis_func then
				anonteam_108_1 = anonteam_108_1 and anonteam_106_2.group_table._vis_func()
			end

			if arg_108_0 then
				for iter_108_1 = 1, #anonteam_106_2._callbacks_list do
					anonteam_106_2._callbacks_list[iter_108_1]()
				end
			end

			if arg_108_0 and anonteam_0_47.is_loaded then
				anonteam_106_2.group_table:update()
			end

			if anonteam_106_2._vis_state ~= anonteam_108_1 then
				anonteam_106_2._vis_state = anonteam_108_1

				anonteam_106_2.ref:visibility(anonteam_106_2._vis_state)
			end
		end

		anonteam_106_2.ref:set_callback(anonteam_106_2._callback_func)

		anonteam_106_2 = setmetatable(anonteam_106_2, {
			__call = function(arg_109_0, arg_109_1)
				-- function 109
				if arg_109_1 then
					return arg_109_0.value_by_name[arg_109_1] and true or false
				end

				return arg_109_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_106_1][arg_106_2] = anonteam_106_2
		anonteam_89_0.elements[#anonteam_89_0.elements + 1] = anonteam_106_2

		return anonteam_106_2
	end

	function anonteam_89_0.color_picker(arg_110_0, arg_110_1, arg_110_2, arg_110_3, arg_110_4, arg_110_5)
		-- function 110
		local anonteam_110_0 = arg_110_0.ref:color_picker(arg_110_3, arg_110_4)
		local anonteam_110_1 = arg_110_5 and arg_110_5 or function()
			-- function 111
			return true
		end
		local anonteam_110_2 = anonteam_0_47.get_default_ui_el_table(anonteam_89_0, arg_110_1, arg_110_2, anonteam_110_0, anonteam_110_1)

		anonteam_110_2.type = 5
		anonteam_110_2.def_value = arg_110_4
		anonteam_110_2.value = anonteam_110_0:get()

		local anonteam_110_3 = setmetatable(anonteam_110_2, {
			__call = function(arg_112_0, arg_112_1)
				-- function 112
				if arg_112_1 then
					return arg_112_0.ref
				end

				return arg_112_0.ref
			end
		})

		anonteam_0_47.ui_tables[arg_110_1][arg_110_2] = anonteam_110_3
		anonteam_89_0.elements[#anonteam_89_0.elements + 1] = anonteam_110_3

		return anonteam_110_3
	end

	function anonteam_89_0.button(arg_113_0, arg_113_1, arg_113_2, arg_113_3, arg_113_4, arg_113_5, arg_113_6)
		-- function 113
		local anonteam_113_0 = arg_113_0.ref:button(arg_113_3, arg_113_4 and arg_113_4 or function()
			-- function 114
			return
		end, arg_113_5 and arg_113_5 or false)
		local anonteam_113_1 = arg_113_6 and arg_113_6 or function()
			-- function 115
			return true
		end
		local anonteam_113_2 = anonteam_0_47.get_default_ui_el_table(anonteam_89_0, arg_113_1, arg_113_2, anonteam_113_0, anonteam_113_1)

		anonteam_113_2.type = 6

		local anonteam_113_3 = setmetatable(anonteam_113_2, {
			__call = function(arg_116_0, arg_116_1)
				-- function 116
				if arg_116_1 then
					return arg_116_0.ref
				end

				return arg_116_0.ref
			end
		})

		anonteam_0_47.ui_tables[arg_113_1][arg_113_2] = anonteam_113_3
		anonteam_89_0.elements[#anonteam_89_0.elements + 1] = anonteam_113_3

		return anonteam_113_3
	end

	function anonteam_89_0.hotkey(arg_117_0, arg_117_1, arg_117_2, arg_117_3, arg_117_4, arg_117_5, arg_117_6)
		-- function 117
		local anonteam_117_0 = arg_117_0.ref:hotkey(arg_117_3, arg_117_4)
		local anonteam_117_1 = arg_117_6 and arg_117_6 or function()
			-- function 118
			return true
		end
		local anonteam_117_2 = anonteam_0_47.get_default_ui_el_table(anonteam_89_0, arg_117_1, arg_117_2, anonteam_117_0, anonteam_117_1)

		anonteam_117_2.type = 7
		anonteam_117_2.def_value = arg_117_4

		function anonteam_117_2.key(arg_119_0, arg_119_1)
			-- function 119
			if not arg_119_1 then
				return arg_119_0.ref:key()
			end

			arg_119_0.ref:key(arg_119_1)
		end

		anonteam_117_2.ref:unset_callback(anonteam_117_2._callback_func)

		anonteam_117_2._holding = false
		anonteam_117_2.mode = arg_117_5

		if arg_117_5 == 1 then
			function anonteam_117_2._createmove_func()
				-- function 120
				anonteam_117_2._holding = anonteam_117_2.ref:get()
				anonteam_117_2.value = anonteam_117_2._holding

				if anonteam_117_2._holding then
					local anonteam_120_0 = anonteam_117_2.callbacks_funcs

					for iter_120_0 = 1, #anonteam_120_0 do
						anonteam_120_0[iter_120_0]()
					end
				end
			end
		else
			anonteam_117_2._prev_state = false

			function anonteam_117_2._createmove_func()
				-- function 121
				anonteam_117_2._holding = anonteam_117_2.ref:get()

				if not anonteam_117_2._holding and anonteam_117_2._prev_state then
					anonteam_117_2.value = not anonteam_117_2.value

					local anonteam_121_0 = anonteam_117_2.callbacks_funcs

					for iter_121_0 = 1, #anonteam_121_0 do
						anonteam_121_0[iter_121_0]()
					end
				end

				anonteam_117_2._prev_state = anonteam_117_2._holding
			end
		end

		events.createmove:set(anonteam_117_2._createmove_func)

		anonteam_117_2.callbacks_funcs = {}

		function anonteam_117_2.set_callback(arg_122_0, arg_122_1, arg_122_2)
			-- function 122
			arg_122_0.callbacks_funcs[#arg_122_0.callbacks_funcs + 1] = arg_122_1

			if arg_122_2 then
				arg_122_1()
			end
		end

		function anonteam_117_2.unset_callback(arg_123_0, arg_123_1)
			-- function 123
			for iter_123_0 = 1, #arg_123_0.callbacks_funcs do
				if arg_123_0.callbacks_funcs[iter_123_0] == arg_123_1 then
					table.remove(arg_123_0.callbacks_funcs, iter_123_0)

					break
				end
			end
		end

		anonteam_117_2 = setmetatable(anonteam_117_2, {
			__call = function(arg_124_0, arg_124_1)
				-- function 124
				if arg_124_1 then
					return arg_124_0.ref
				end

				return arg_124_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_117_1][arg_117_2] = anonteam_117_2
		anonteam_89_0.elements[#anonteam_89_0.elements + 1] = anonteam_117_2

		return anonteam_117_2
	end

	function anonteam_89_0.text_box(arg_125_0, arg_125_1, arg_125_2, arg_125_3, arg_125_4, arg_125_5)
		-- function 125
		local anonteam_125_0 = arg_125_0.ref:input(arg_125_3, arg_125_4)
		local anonteam_125_1 = arg_125_5 and arg_125_5 or function()
			-- function 126
			return true
		end
		local anonteam_125_2 = anonteam_0_47.get_default_ui_el_table(anonteam_89_0, arg_125_1, arg_125_2, anonteam_125_0, anonteam_125_1)

		anonteam_125_2.type = 8
		anonteam_125_2.def_value = arg_125_4
		anonteam_125_2.value = anonteam_125_0:get()

		local anonteam_125_3 = setmetatable(anonteam_125_2, {
			__call = function(arg_127_0, arg_127_1)
				-- function 127
				if arg_127_1 then
					return arg_127_0.ref
				end

				return arg_127_0.ref
			end
		})

		anonteam_0_47.ui_tables[arg_125_1][arg_125_2] = anonteam_125_3
		anonteam_89_0.elements[#anonteam_89_0.elements + 1] = anonteam_125_3

		return anonteam_125_3
	end

	function anonteam_89_0.list(arg_128_0, arg_128_1, arg_128_2, arg_128_3, arg_128_4, arg_128_5, arg_128_6)
		-- function 128
		local anonteam_128_0 = arg_128_0.ref:list(arg_128_3, arg_128_4)
		local anonteam_128_1 = arg_128_6 and arg_128_6 or function()
			-- function 129
			return true
		end
		local anonteam_128_2 = anonteam_0_47.get_default_ui_el_table(anonteam_89_0, arg_128_1, arg_128_2, anonteam_128_0, anonteam_128_1)

		anonteam_128_2.type = 9
		anonteam_128_2.def_value = arg_128_5
		anonteam_128_2.elements_array = arg_128_4
		anonteam_128_2.list_by_name = {}

		for iter_128_0 = 1, #arg_128_4 do
			anonteam_128_2.list_by_name[arg_128_4[iter_128_0]] = iter_128_0
		end

		anonteam_128_2.value = anonteam_128_0:get()
		anonteam_128_2.str_value = anonteam_128_2.elements_array[anonteam_128_2.value]

		anonteam_128_2.ref:unset_callback(anonteam_128_2._callback_func)

		function anonteam_128_2._callback_func(arg_130_0)
			-- function 130
			local anonteam_130_0 = anonteam_128_2.ref:get()

			anonteam_128_2.value = anonteam_130_0
			anonteam_128_2.str_value = anonteam_128_2.elements_array[anonteam_130_0]
			anonteam_128_2.value_for_ref = anonteam_130_0
			anonteam_0_47.values[arg_128_1][arg_128_2] = anonteam_130_0

			local anonteam_130_1 = anonteam_128_2._vis_func()

			if anonteam_128_2.group_table._vis_func then
				anonteam_130_1 = anonteam_130_1 and anonteam_128_2.group_table._vis_func()
			end

			if arg_130_0 then
				for iter_130_0 = 1, #anonteam_128_2._callbacks_list do
					anonteam_128_2._callbacks_list[iter_130_0]()
				end
			end

			if arg_130_0 and anonteam_0_47.is_loaded then
				anonteam_128_2.group_table:update()
			end

			if anonteam_128_2._vis_state ~= anonteam_130_1 then
				anonteam_128_2.ref:visibility(anonteam_128_2._vis_state)
			end
		end

		anonteam_128_2.ref:set_callback(anonteam_128_2._callback_func)

		function anonteam_128_2.change_default_callback_function(arg_131_0, arg_131_1)
			-- function 131
			arg_131_0.ref:unset_callback(anonteam_128_2._callback_func)
			arg_131_0.ref:set_callback(arg_131_1, true)

			return arg_131_1
		end

		function anonteam_128_2.update(arg_132_0, arg_132_1)
			-- function 132
			arg_132_0.elements_array = arg_132_1

			arg_132_0.ref:update(arg_132_1)
		end

		function anonteam_128_2.visualize_update(arg_133_0)
			-- function 133
			if arg_133_0.func_visualize then
				arg_133_0.func_visualize()
			end
		end

		anonteam_128_2 = setmetatable(anonteam_128_2, {
			__call = function(arg_134_0)
				-- function 134
				return arg_134_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_128_1][arg_128_2] = anonteam_128_2
		anonteam_89_0.elements[#anonteam_89_0.elements + 1] = anonteam_128_2

		return anonteam_128_2
	end

	function anonteam_89_0.listable(arg_135_0, arg_135_1, arg_135_2, arg_135_3, arg_135_4, arg_135_5, arg_135_6)
		-- function 135
		local anonteam_135_0 = arg_135_0.ref:listable(arg_135_3, arg_135_4)
		local anonteam_135_1 = arg_135_6 and arg_135_6 or function()
			-- function 136
			return true
		end
		local anonteam_135_2 = anonteam_0_47.get_default_ui_el_table(anonteam_89_0, arg_135_1, arg_135_2, anonteam_135_0, anonteam_135_1)

		anonteam_135_2.type = 4
		anonteam_135_2.def_value = arg_135_5
		anonteam_135_2.elements_array = arg_135_4
		anonteam_135_2.list_by_name = {}

		for iter_135_0 = 1, #arg_135_4 do
			anonteam_135_2.list_by_name[arg_135_4[iter_135_0]] = iter_135_0
		end

		anonteam_135_2.value = anonteam_135_0:get()
		anonteam_135_2.value_by_name = {}

		for iter_135_1 = 1, #anonteam_135_2.value do
			anonteam_135_2.value_by_name[anonteam_135_2.value[iter_135_1]] = true
		end

		anonteam_135_2.ref:unset_callback(anonteam_135_2._callback_func)

		function anonteam_135_2._callback_func(arg_137_0)
			-- function 137
			local anonteam_137_0 = anonteam_135_2.ref:get()

			anonteam_135_2.value = anonteam_137_0
			anonteam_135_2.value_for_ref = anonteam_137_0
			anonteam_135_2.value_by_name = {}

			for iter_137_0 = 1, #anonteam_137_0 do
				anonteam_135_2.value_by_name[anonteam_137_0[iter_137_0]] = true
			end

			anonteam_0_47.values[arg_135_1][arg_135_2] = anonteam_137_0

			local anonteam_137_1 = anonteam_135_2._vis_func()

			if anonteam_135_2._vis_state ~= anonteam_137_1 then
				anonteam_135_2.ref:visibility(anonteam_135_2._vis_state)
			end

			if arg_137_0 and anonteam_0_47.is_loaded then
				anonteam_135_2.group_table:update()
			end
		end

		anonteam_135_2.ref:set_callback(anonteam_135_2._callback_func)

		anonteam_135_2 = setmetatable(anonteam_135_2, {
			__call = function(arg_138_0, arg_138_1)
				-- function 138
				if arg_138_1 then
					return arg_138_0.value_by_name[arg_138_1] and true or false
				end

				return arg_138_0.ref
			end
		})
		anonteam_0_47.ui_tables[arg_135_1][arg_135_2] = anonteam_135_2
		anonteam_89_0.elements[#anonteam_89_0.elements + 1] = anonteam_135_2

		return anonteam_135_2
	end

	function anonteam_89_0.label(arg_139_0, arg_139_1, arg_139_2, arg_139_3, arg_139_4)
		-- function 139
		local anonteam_139_0 = arg_139_0.ref:label(arg_139_3)
		local anonteam_139_1 = arg_139_4 and arg_139_4 or function()
			-- function 140
			return true
		end
		local anonteam_139_2 = anonteam_0_47.get_default_ui_el_table(anonteam_89_0, arg_139_1, arg_139_2, anonteam_139_0, anonteam_139_1)

		anonteam_139_2.type = 6

		anonteam_139_2.ref:unset_callback(anonteam_139_2._callback_func)

		local anonteam_139_3 = setmetatable(anonteam_139_2, {
			__call = function(arg_141_0, arg_141_1)
				-- function 141
				if arg_141_1 then
					return arg_141_0.ref
				end

				return arg_141_0.ref
			end
		})

		anonteam_0_47.ui_tables[arg_139_1][arg_139_2] = anonteam_139_3
		anonteam_89_0.elements[#anonteam_89_0.elements + 1] = anonteam_139_3

		return anonteam_139_3
	end

	anonteam_0_46[#anonteam_0_46 + 1] = anonteam_89_0

	return anonteam_89_0
end

function anonteam_0_47.update_all_groups()
	-- function 142
	for iter_142_0 = 1, #anonteam_0_46 do
		anonteam_0_46[iter_142_0]:update()
	end
end

anonteam_0_47.active_tab = "\a{Link Active}\xEF\x9E\x8A\aDEFAULT Home"

local anonteam_0_48 = {
	information = anonteam_0_47.create_group("Discord", 2)
}

anonteam_0_48.information:button("config", "discord_join", "          \a{Link Active}\xEF\x8E\x92 \aDEFAULTServer           ", nil, true):set_callback(function()
	-- function 143
	anonteam_0_44.shell_execute("open", "https://discord.gg/wA9ukZTyZz")
end)
anonteam_0_48.information:button("config", "discord_code", "          \a{Link Active}\xEF\x8A\xBB \aDEFAULTCode            ", nil, true):set_callback(function()
	-- function 144
	local anonteam_144_0 = common.get_username()
	local anonteam_144_1 = ""
	local anonteam_144_2 = "extensioncheck"
	local anonteam_144_3 = 1
	local anonteam_144_4 = 0
	local anonteam_144_5 = "ulJkLANdgIcnwO79yRz6VBS8ZXQKfPv3HYejMFtmoWpb0s2xq1GEhC5aTri4U=+/!@#$%^&*(){}~. "

	for iter_144_0 = 1, #anonteam_144_2 do
		local anonteam_144_6 = anonteam_144_0:sub(iter_144_0, iter_144_0)

		anonteam_144_1 = anonteam_144_1 .. anonteam_144_6

		local anonteam_144_7

		for iter_144_1 = 1, #anonteam_144_5 do
			if anonteam_144_5:sub(iter_144_1, iter_144_1) == anonteam_144_6 then
				anonteam_144_7 = iter_144_1

				break
			end
		end

		anonteam_144_4 = iter_144_0 <= #anonteam_144_0 and anonteam_144_7 and anonteam_144_4 + anonteam_144_7 or anonteam_144_4

		local anonteam_144_8 = anonteam_144_2:sub(iter_144_0, iter_144_0)

		anonteam_144_1 = anonteam_144_1 .. anonteam_144_8

		local anonteam_144_9 = anonteam_144_5:find(anonteam_144_8)

		anonteam_144_4 = anonteam_144_9 and anonteam_144_4 + anonteam_144_9 or anonteam_144_4
	end

	anonteam_0_2("1.Create ticket in discord server")
	anonteam_0_2("2.Paste text below in ticket")
	anonteam_0_2("!verify " .. anonteam_0_45.encode(anonteam_144_1 .. "|" .. anonteam_144_4))
	common.add_notify("Extension", "Check instructions in console for discord verification")
end)
anonteam_0_47.ui_tables.config.discord_code:set_disable_function(function()
	-- function 145
	return anonteam_0_1
end)

anonteam_0_48.our_products = anonteam_0_47.create_group("Our Products", 2)

anonteam_0_48.our_products:label("products", "", "\a{Link Active}\xEE\x84\xA3\t\aDEFAULTDeveloper Config")
anonteam_0_48.our_products:button("products", "misnik_config", "     \xEF\x83\x81     ", nil):set_callback(function()
	-- function 146
	anonteam_0_44.shell_execute("open", "https://en.neverlose.cc/market/item?id=4jLkyO")
end)
anonteam_0_48.our_products:label("products", "", "\a{Link Active} \xEF\x83\xA7\t\aDEFAULTDacota Config")
anonteam_0_48.our_products:button("products", "dacota_config", "     \xEF\x83\x81     ", nil):set_callback(function()
	-- function 147
	anonteam_0_44.shell_execute("open", "https://neverlose.cc/market/item?id=hkSeFK")
end)

if anonteam_0_1 then
	anonteam_0_48.our_products:label("products", "", "\a{Link Active}\xEE\x84\xA3\t\aDEFAULTExtension lua")
	anonteam_0_48.our_products:button("products", "misnik_config", "     \xEF\x83\x81     ", nil):set_callback(function()
		-- function 148
		anonteam_0_44.shell_execute("open", "https://en.neverlose.cc/market/item?id=bkRCJa")
	end)
end

anonteam_0_48.create_config = anonteam_0_47.create_group(" Configs \a{Switch}\xEF\x83\x9A \a{Link Active}Create", 1)

anonteam_0_48.create_config:disabled_condition(function()
	-- function 149
	return anonteam_0_1 and anonteam_0_0.trial_cache_1 - common.get_unixtime() < 0
end)
anonteam_0_48.create_config:button("config", "create", "       \xEF\x91\xB7       ", nil)
anonteam_0_47.ui_tables.config.create:tooltip("Create new config")

anonteam_0_47.ui_tables.config.create.is_creating = false

function anonteam_0_47.ui_tables.config.create.restore_to_default()
	-- function 150
	anonteam_0_47.ui_tables.config.create:name("       \xEF\x91\xB7       ")
	anonteam_0_47.ui_tables.config.create:tooltip("Create new Config")
end

anonteam_0_48.create_config:button("config", "create_empty", "  \xEF\x85\x9C  ", nil, true)
anonteam_0_47.ui_tables.config.create_empty:tooltip("  \xEF\x85\x9C - Creates config and saving current lua settings in new file.\n\n  \xEF\x85\x9B - Creates empty config.")
anonteam_0_47.ui_tables.config.create_empty:set_callback(function()
	-- function 151
	anonteam_0_47.ui_tables.config.create_empty.is_empty = not anonteam_0_47.ui_tables.config.create_empty.is_empty

	anonteam_0_47.ui_tables.config.create_empty:name(anonteam_0_47.ui_tables.config.create_empty.is_empty and "  \xEF\x85\x9B  " or "  \xEF\x85\x9C  ")
end)
anonteam_0_47.ui_tables.config.create_empty:disabled(true)
anonteam_0_48.create_config:button("config", "config_from_clipboard", " \xEF\x95\xAF  ", nil, true):tooltip("Paste config from clipboard.")
anonteam_0_48.create_config:label("config", "text_box_name", "Enter Config Name", function()
	-- function 152
	return anonteam_0_47.ui_tables.config.create.is_creating
end)
anonteam_0_48.create_config:text_box("config", "new_config_name", "", "", function()
	-- function 153
	return anonteam_0_47.ui_tables.config.create.is_creating
end):tooltip("Config name can`t be empty.")
anonteam_0_48.create_config:text_box("config", "active_config", "", "", function()
	-- function 154
	return false
end)
anonteam_0_48.create_config:text_box("config", "activeaa_config", "", "", function()
	-- function 155
	return false
end)
anonteam_0_48.create_config:text_box("config", "antiaim_owner", "", "", function()
	-- function 156
	return false
end)

function anonteam_0_47.ui_tables.config.config_from_clipboard.restore_to_default()
	-- function 157
	anonteam_0_47.ui_tables.config.config_from_clipboard:name(" \xEF\x95\xAF  ")
	anonteam_0_47.ui_tables.config.config_from_clipboard:tooltip("Paste config from clipboard.")
end

anonteam_0_48.config = anonteam_0_47.create_group(" Configs \a{Switch}\xEF\x83\x9A \a{Link Active}List", 1)

anonteam_0_48.config:list("config", "list", "", anonteam_0_33.get_config_list())
anonteam_0_48.config:button("config", "load", "       \xEF\x8D\x82       ", nil):tooltip("Load config")
anonteam_0_48.config:button("config", "load_aa", "  \xEF\x84\xB2  ", nil, true):tooltip("Load only Anti Aim settings")
anonteam_0_48.config:button("config", "lock", "  \a68e35bFF\xEF\x8F\x81  ", nil, true):tooltip("\adb6361FF  \xEF\x8C\x8D\aDEFAULT - Anti Aim settings is hidden for other users but you can change it.\n\n\adb6361FF  \xEF\x80\xA3\aDEFAULT - Anti Aim settings is hidden for you. You can`t save Anti Aim in other config. \n\n\a68e35bFF  \xEF\x8F\x82\aDEFAULT - Anti Aim settings is not hidden for other users but you can change it.\n\n\a68e35bFF  \xEF\x8F\x81\aDEFAULT - Anti Aim settings is not hidden for you.")
anonteam_0_48.config:button("config", "save", "  \xEF\x83\x87  ", nil, true):tooltip("Save config")
anonteam_0_48.config:button("config", "share", "  \xEF\x95\xAE ", nil, true):tooltip("Copy config to clipboard")
anonteam_0_48.config:button("config", "delete", "  \adb6361FF\xEF\x87\xB8  ", nil, true):tooltip("Delete config")

if common.get_username() == "Misnik" then
	anonteam_0_48.config:button("config", "make_preset", "       \xEF\x91\xB7       ", nil, true):tooltip("Make Preset")
	anonteam_0_48.config:button("config", "get_config_deobf", "       \xEF\x95\x82       ", nil, true):tooltip("Get Config deobf")
end

function anonteam_0_47.ui_tables.config.load_aa.restore_to_default()
	-- function 158
	anonteam_0_47.ui_tables.config.load_aa:name("  \xEF\x84\xB2  ")
	anonteam_0_47.ui_tables.config.load_aa:tooltip("Load only Anti Aim settings")
end

function anonteam_0_47.ui_tables.config.load.restore_to_default()
	-- function 159
	anonteam_0_47.ui_tables.config.load:name("       \xEF\x8D\x82       ")
	anonteam_0_47.ui_tables.config.load:tooltip("Load config")
end

function anonteam_0_47.ui_tables.config.save.restore_to_default()
	-- function 160
	anonteam_0_47.ui_tables.config.save:name("  \xEF\x83\x87  ")
	anonteam_0_47.ui_tables.config.save:tooltip("Save config")
end

function anonteam_0_47.ui_tables.config.delete.restore_to_default()
	-- function 161
	anonteam_0_47.ui_tables.config.delete:name("  \adb6361FF\xEF\x87\xB8  ")
	anonteam_0_47.ui_tables.config.delete:tooltip("Delete config")
end

function anonteam_0_47.ui_tables.config.share.restore_to_default()
	-- function 162
	anonteam_0_47.ui_tables.config.share:name("  \xEF\x95\xAE ")
	anonteam_0_47.ui_tables.config.share:tooltip("Copy config to clipboard")
end

function anonteam_0_47.ui_tables.config.list.update_active_config()
	-- function 163
	local anonteam_163_0 = anonteam_0_47.ui_tables.config.list
	local anonteam_163_1 = {}

	for iter_163_0 = 1, #anonteam_163_0.elements_array do
		local anonteam_163_2 = "     \a4f4f4fFF" .. anonteam_163_0.elements_array[iter_163_0]

		if iter_163_0 == anonteam_163_0.value then
			anonteam_163_2 = "     \a919191FF" .. anonteam_163_0.elements_array[iter_163_0]
		end

		if anonteam_0_47.ui_tables.config.active_config.ref:get() == anonteam_163_0.elements_array[iter_163_0] then
			anonteam_163_2 = "\a{Link Active}\xE2\x80\xA2   \aDEFAULT" .. anonteam_163_0.elements_array[iter_163_0]
		end

		if anonteam_0_47.ui_tables.config.activeaa_config.ref:get() == anonteam_163_0.elements_array[iter_163_0] then
			anonteam_163_2 = "\aFBCEB1FF\xE2\x80\xA2   \aDEFAULT" .. anonteam_163_0.elements_array[iter_163_0]
		end

		anonteam_163_1[#anonteam_163_1 + 1] = anonteam_163_2
	end

	anonteam_163_0.ref:update(anonteam_163_1)
end

anonteam_0_47.ui_tables.config.list:set_callback(function()
	-- function 164
	anonteam_0_47.ui_tables.config.list.update_active_config()

	local anonteam_164_0 = anonteam_0_47.ui_tables.config.list.str_value == "Default"

	if anonteam_0_0.configs[anonteam_0_47.ui_tables.config.list.value - 1] then
		local anonteam_164_1 = anonteam_0_0.configs[anonteam_0_47.ui_tables.config.list.value - 1].author == common.get_username()
		local anonteam_164_2 = anonteam_164_1 and "  \adb6361FF\xEF\x8C\x8D  " or "  \adb6361FF\xEF\x80\xA3  "
		local anonteam_164_3 = anonteam_164_1 and "  \a68e35bFF\xEF\x8F\x82 " or "  \a68e35bFF\xEF\x8F\x81 "

		anonteam_0_47.ui_tables.config.lock:name(anonteam_0_0.configs[anonteam_0_47.ui_tables.config.list.value - 1].is_locked and anonteam_164_2 or anonteam_164_3)
		anonteam_0_47.ui_tables.config.lock:tooltip("\adb6361FF  \xEF\x8C\x8D\aDEFAULT - Anti Aim settings is hidden for other users but you can change it.\n\n\adb6361FF  \xEF\x80\xA3\aDEFAULT - Anti Aim settings is hidden for you. You can`t save Anti Aim in other config. \n\n\a68e35bFF  \xEF\x8F\x82\aDEFAULT - Anti Aim settings is not hidden for other users but you can change it.\n\n\a68e35bFF  \xEF\x8F\x81\aDEFAULT - Anti Aim settings is not hidden for you." .. "\n\n Config Author - " .. anonteam_0_0.configs[anonteam_0_47.ui_tables.config.list.value - 1].author)
	else
		anonteam_0_47.ui_tables.config.lock:name("  \a68e35bFF\xEF\x8F\x81 ")
	end

	anonteam_0_47.ui_tables.config.lock:disabled(anonteam_164_0)
	anonteam_0_47.ui_tables.config.save:disabled(anonteam_164_0)
	anonteam_0_47.ui_tables.config.share:disabled(anonteam_164_0)
	anonteam_0_47.ui_tables.config.delete:disabled(anonteam_164_0)
end, true)
anonteam_0_47.ui_tables.config.lock:set_callback(function()
	-- function 165
	local anonteam_165_0 = anonteam_0_47.ui_tables.config.list.value

	if anonteam_165_0 ~= 1 and anonteam_0_0.configs[anonteam_0_47.ui_tables.config.list.value - 1].author == common.get_username() then
		anonteam_0_0.configs[anonteam_165_0 - 1].is_locked = not anonteam_0_0.configs[anonteam_165_0 - 1].is_locked

		anonteam_0_47.ui_tables.config.lock:name(anonteam_0_0.configs[anonteam_165_0 - 1].is_locked and "  \adb6361FF\xEF\x8C\x8D  " or "  \a68e35bFF\xEF\x8F\x82 ")

		db.escape_from_samara_extension = anonteam_0_0
	end
end)
anonteam_0_47.ui_tables.config.load:set_callback(function()
	-- function 166
	if anonteam_0_47.ui_tables.config.load:name() == "       \a82ff88FF\xEE\x96\xA0     " or anonteam_0_47.ui_tables.config.load:name() == "       \adb6361FF\xEE\x96\xA0     " then
		return
	end

	anonteam_0_47.ui_tables.config.active_config.ref:set(anonteam_0_47.ui_tables.config.list.str_value)
	anonteam_0_47.ui_tables.config.activeaa_config.ref:set("")
	anonteam_0_47.ui_tables.config.list.update_active_config()
end)

function anonteam_0_33.add_config()
	-- function 167
	local anonteam_167_0 = anonteam_0_47.ui_tables.config.new_config_name.ref:get()

	if #anonteam_167_0 == 0 or anonteam_167_0 == "Default" then
		return false, "Config name must be filled."
	end

	for iter_167_0 = 1, #anonteam_0_0.configs do
		if anonteam_0_0.configs[iter_167_0].name == anonteam_167_0 then
			return false, "Config name is already used."
		end
	end

	local anonteam_167_1 = false

	if anonteam_0_47.ui_tables.config.antiaim_owner.value ~= "" then
		anonteam_167_1 = not anonteam_0_47.ui_tables.config.create_empty.is_empty
	end

	table.insert(anonteam_0_0.configs, 1, {
		name = anonteam_167_0,
		author = common.get_username(),
		is_locked = anonteam_167_1,
		data = anonteam_0_47.ui_tables.config.create_empty.is_empty and {} or anonteam_0_33.parse_data()
	})

	db.escape_from_samara_extension = anonteam_0_0

	return true
end

anonteam_0_47.ui_tables.config.create:set_callback(function()
	-- function 168
	if anonteam_0_47.ui_tables.config.create:name() == "       \a82ff88FF\xEE\x96\xA0     " or anonteam_0_47.ui_tables.config.create:name() == "       \affb0b0FF\xEF\x8C\x9A       " then
		return
	end

	anonteam_0_47.ui_tables.config.create.is_creating = not anonteam_0_47.ui_tables.config.create.is_creating

	local anonteam_168_0 = anonteam_0_47.ui_tables.config.create.is_creating

	anonteam_0_47.ui_tables.config.create:name(anonteam_168_0 and "       \xEF\x8C\x9C     " or "       \xEF\x91\xB7       ")
	anonteam_0_47.ui_tables.config.create_empty:disabled(not anonteam_168_0)

	if not anonteam_168_0 then
		local anonteam_168_1, anonteam_168_2 = anonteam_0_33.add_config()

		if anonteam_168_1 then
			anonteam_0_47.ui_tables.config.create:name("       \a82ff88FF\xEE\x96\xA0     ")
			anonteam_0_47.ui_tables.config.create:tooltip("\a82ff88FFConfig Successfully created.")
			utils.execute_after(2, function()
				-- function 169
				anonteam_0_47.ui_tables.config.create.restore_to_default()
			end)
			anonteam_0_47.ui_tables.config.list:update(anonteam_0_33.get_config_list())
			anonteam_0_47.ui_tables.config.list.update_active_config()
			anonteam_0_47.ui_tables.config.list._callback_func(anonteam_0_47.ui_tables.config.list.ref)
		else
			anonteam_0_47.ui_tables.config.create:name("       \affb0b0FF\xEF\x8C\x9A       ")
			anonteam_0_47.ui_tables.config.create:tooltip("\affb0b0FF" .. anonteam_168_2)
			utils.execute_after(2, function()
				-- function 170
				anonteam_0_47.ui_tables.config.create.restore_to_default()
			end)
		end

		anonteam_0_47.ui_tables.config.new_config_name.ref:set("")
	end

	anonteam_0_47.ui_tables.config.config_from_clipboard:disabled(anonteam_168_0)
end)

function anonteam_0_33.remove_config()
	-- function 171
	local anonteam_171_0 = anonteam_0_47.ui_tables.config.list.ref:get()

	if anonteam_171_0 == 1 then
		return false
	end

	if anonteam_0_47.ui_tables.config.active_config.ref:get() == anonteam_0_0.configs[anonteam_171_0 - 1].name then
		anonteam_0_47.ui_tables.config.active_config.ref:set("")
	end

	if anonteam_0_47.ui_tables.config.activeaa_config.ref:get() == anonteam_0_0.configs[anonteam_171_0 - 1].name then
		anonteam_0_47.ui_tables.config.activeaa_config.ref:set("")
	end

	table.remove(anonteam_0_0.configs, anonteam_171_0 - 1)

	db.escape_from_samara_extension = anonteam_0_0

	return true
end

function anonteam_0_33.parse_data(arg_172_0)
	-- function 172
	local anonteam_172_0 = {}
	local anonteam_172_1 = false

	if anonteam_0_47.ui_tables.config.antiaim_owner.value == "" or anonteam_0_47.ui_tables.config.antiaim_owner.value == common.get_username() then
		anonteam_172_1 = true
	end

	local anonteam_172_2 = {
		ragebot = true,
		visuals = true,
		misc = true,
		antiaim = anonteam_172_1
	}
	local anonteam_172_3 = {
		nil,
		nil,
		nil,
		nil,
		nil,
		true,
		true,
		true,
		[11] = true
	}

	for iter_172_0, iter_172_1 in pairs(anonteam_0_47.ui_tables) do
		if anonteam_172_2[iter_172_0] then
			local anonteam_172_4 = {}

			for iter_172_2, iter_172_3 in pairs(iter_172_1) do
				if not anonteam_172_3[iter_172_3.type] then
					if iter_172_3.type == 5 then
						if type(iter_172_3.value_for_ref) ~= "string" then
							local anonteam_172_5 = {
								iter_172_3.value_for_ref:unpack()
							}

							anonteam_172_4[iter_172_2] = {
								r = anonteam_172_5[1],
								g = anonteam_172_5[2],
								b = anonteam_172_5[3],
								a = anonteam_172_5[4]
							}
						else
							anonteam_172_4[iter_172_2] = value
						end
					elseif arg_172_0 then
						if iter_172_2:find("def_pitch") then
							anonteam_172_4[iter_172_2] = iter_172_3.str_value
						else
							anonteam_172_4[iter_172_2] = iter_172_3.value
						end
					else
						anonteam_172_4[iter_172_2] = iter_172_3.value_for_ref
					end
				end
			end

			anonteam_172_0[iter_172_0] = anonteam_172_4
		end
	end

	return anonteam_172_0
end

anonteam_0_47.ui_tables.config.load:set_callback(function()
	-- function 173
	if anonteam_0_47.ui_tables.config.load:name() == "       \a82ff88FF\xEE\x96\xA0     " or anonteam_0_47.ui_tables.config.load:name() == "       \adb6361FF\xEE\x96\xA0     " then
		return
	end

	local anonteam_173_0 = anonteam_0_47.ui_tables.config.list.value
	local anonteam_173_1 = anonteam_173_0 == 1 and anonteam_0_0.configs.Default or anonteam_0_0.configs[anonteam_173_0 - 1]

	if not anonteam_173_1 or not anonteam_173_1.data then
		anonteam_0_47.ui_tables.config.load:name("       \adb6361FF\xEF\x8C\x9A     ")
		anonteam_0_47.ui_tables.config.load:tooltip("\adb6361FFConfig loading failed.")
		utils.execute_after(2, function()
			-- function 174
			anonteam_0_47.ui_tables.config.load.restore_to_default()
		end)

		return
	end

	local anonteam_173_2 = {
		"ragebot",
		"visuals",
		"misc",
		"antiaim"
	}
	local anonteam_173_3 = 0

	for iter_173_0, iter_173_1 in pairs(anonteam_173_1.data) do
		anonteam_173_3 = anonteam_173_3 + 1
	end

	if anonteam_173_3 ~= 0 then
		for iter_173_2, iter_173_3 in pairs(anonteam_173_1.data) do
			for iter_173_4, iter_173_5 in pairs(iter_173_3) do
				if anonteam_0_47.ui_tables[iter_173_2][iter_173_4] then
					if anonteam_0_47.ui_tables[iter_173_2][iter_173_4].type == 5 then
						if type(iter_173_5) ~= "string" then
							anonteam_0_47.ui_tables[iter_173_2][iter_173_4].ref:set(color(iter_173_5.r, iter_173_5.g, iter_173_5.b, iter_173_5.a))
						else
							anonteam_0_47.ui_tables[iter_173_2][iter_173_4].ref:set(iter_173_5)
						end
					else
						anonteam_0_47.ui_tables[iter_173_2][iter_173_4].ref:set(iter_173_5)
					end
				end
			end
		end

		if not anonteam_173_1.data.antiaim then
			for iter_173_6, iter_173_7 in pairs(anonteam_0_47.ui_tables.antiaim) do
				iter_173_7.ref:reset()
				iter_173_7._callback_func()
			end
		end
	else
		for iter_173_8 = 1, #anonteam_173_2 do
			local anonteam_173_4 = anonteam_173_2[iter_173_8]

			for iter_173_9, iter_173_10 in pairs(anonteam_0_47.ui_tables[anonteam_173_4]) do
				iter_173_10.ref:reset()
				iter_173_10._callback_func()
			end
		end
	end

	anonteam_0_47.ui_tables.config.load:name("       \a82ff88FF\xEE\x96\xA0     ")
	anonteam_0_47.ui_tables.config.load:tooltip("\a82ff88FFConfig Successfully loaded.")

	if anonteam_173_1.is_locked then
		anonteam_0_47.ui_tables.config.antiaim_owner.ref:set(anonteam_173_1.author)
	else
		anonteam_0_47.ui_tables.config.antiaim_owner.ref:set("")
	end

	anonteam_0_47.update_all_groups()
	utils.execute_after(2, function()
		-- function 175
		anonteam_0_47.ui_tables.config.load.restore_to_default()
	end)
end)
anonteam_0_47.ui_tables.config.load_aa:set_callback(function()
	-- function 176
	if anonteam_0_47.ui_tables.config.load:name() == "  \adb6361FF\xEE\x89\x8C  " or anonteam_0_47.ui_tables.config.load:name() == "  \a82ff88FF\xEF\x8B\xB7  " then
		return
	end

	local anonteam_176_0 = anonteam_0_47.ui_tables.config.list.value
	local anonteam_176_1 = anonteam_176_0 == 1 and anonteam_0_0.configs.Default or anonteam_0_0.configs[anonteam_176_0 - 1]

	if not anonteam_176_1 or not anonteam_176_1.data then
		anonteam_0_47.ui_tables.config.load_aa:name("  \adb6361FF\xEE\x89\x8C  ")
		anonteam_0_47.ui_tables.config.load_aa:tooltip("\adb6361FFConfig Antiaim loading failed.")
		utils.execute_after(2, function()
			-- function 177
			anonteam_0_47.ui_tables.config.load_aa.restore_to_default()
		end)

		return
	end

	if anonteam_176_1.data.antiaim then
		for iter_176_0, iter_176_1 in pairs(anonteam_176_1.data.antiaim) do
			if anonteam_0_47.ui_tables.antiaim[iter_176_0] then
				if anonteam_0_47.ui_tables.antiaim[iter_176_0].type == 5 then
					if type(iter_176_1) ~= "string" then
						anonteam_0_47.ui_tables.antiaim[iter_176_0].ref:set(color(iter_176_1.r, iter_176_1.g, iter_176_1.b, iter_176_1.a))
					else
						anonteam_0_47.ui_tables.antiaim[iter_176_0].ref:set(iter_176_1)
					end
				else
					anonteam_0_47.ui_tables.antiaim[iter_176_0].ref:set(iter_176_1)
				end
			end
		end
	else
		for iter_176_2, iter_176_3 in pairs(anonteam_0_47.ui_tables.antiaim) do
			iter_176_3.ref:reset()
			iter_176_3._callback_func()
		end
	end

	anonteam_0_47.ui_tables.config.load_aa:name("  \a82ff88FF\xEF\x8B\xB7  ")
	anonteam_0_47.ui_tables.config.load_aa:tooltip("\a82ff88FFConfig Antiaim loading successfully.")

	if anonteam_0_47.ui_tables.config.active_config.ref:get() ~= anonteam_176_1.name then
		anonteam_0_47.ui_tables.config.activeaa_config.ref:set(anonteam_0_47.ui_tables.config.list.str_value)
	else
		anonteam_0_47.ui_tables.config.activeaa_config.ref:set("")
	end

	anonteam_0_47.ui_tables.config.list.update_active_config()

	if anonteam_176_1.is_locked then
		anonteam_0_47.ui_tables.config.antiaim_owner.ref:set(anonteam_0_0.configs[anonteam_0_47.ui_tables.config.list.value - 1].author)
	else
		anonteam_0_47.ui_tables.config.antiaim_owner.ref:set("")
	end

	anonteam_0_47.update_all_groups()
	utils.execute_after(2, function()
		-- function 178
		anonteam_0_47.ui_tables.config.load_aa.restore_to_default()
	end)
end)
anonteam_0_47.ui_tables.config.save:set_callback(function()
	-- function 179
	if anonteam_0_47.ui_tables.config.save:name() == "  \a82ff88FF\xEE\x86\x82 " then
		return
	end

	local anonteam_179_0 = anonteam_0_47.ui_tables.config.list.ref:get()

	if anonteam_179_0 == 1 then
		return false
	end

	anonteam_0_0.configs[anonteam_179_0 - 1].data = anonteam_0_33.parse_data()
	db.escape_from_samara_extension = anonteam_0_0

	anonteam_0_47.ui_tables.config.save:name("  \a82ff88FF\xEE\x86\x82 ")
	anonteam_0_47.ui_tables.config.save:tooltip("\a82ff88FFConfig Successfully saved.")
	utils.execute_after(2, function()
		-- function 180
		anonteam_0_47.ui_tables.config.save.restore_to_default()
	end)

	return true
end)

if anonteam_0_47.ui_tables.config.make_preset then
	anonteam_0_47.ui_tables.config.make_preset:set_callback(function()
		-- function 181
		if anonteam_0_47.ui_tables.config.save:name() == "  \a82ff88FF\xEE\x86\x82 " then
			return
		end

		if anonteam_0_47.ui_tables.config.list.ref:get() == 1 then
			return false
		end

		local anonteam_181_0 = anonteam_0_33.parse_data(true)

		anonteam_0_2(json.stringify(anonteam_181_0.antiaim))

		return true
	end)
end

anonteam_0_47.ui_tables.config.delete:set_callback(function()
	-- function 182
	if anonteam_0_47.ui_tables.config.delete:name() == "  \adb6361FF\xEE\x8A\xB4\aDEFAULT ?" then
		if anonteam_0_33.remove_config() then
			anonteam_0_47.ui_tables.config.delete.restore_to_default()
			anonteam_0_47.ui_tables.config.list:update(anonteam_0_33.get_config_list())
			anonteam_0_47.ui_tables.config.list.update_active_config()
			anonteam_0_47.ui_tables.config.list._callback_func(anonteam_0_47.ui_tables.config.list.ref)
			anonteam_0_47.ui_tables.config.list.ref:set(anonteam_0_47.ui_tables.config.list.ref:get() - 1)
		end

		anonteam_0_47.ui_tables.config.delete:name("  \adb6361FF\xEE\x8A\xAF  ")
		utils.execute_after(2, function()
			-- function 183
			if anonteam_0_47.ui_tables.config.delete:name() ~= "  \adb6361FF\xEE\x8A\xAF  " then
				return
			end

			anonteam_0_47.ui_tables.config.delete.restore_to_default()
		end)

		return
	end

	utils.execute_after(2, function()
		-- function 184
		if anonteam_0_47.ui_tables.config.delete:name() ~= "  \adb6361FF\xEE\x8A\xB4\aDEFAULT ?" then
			return
		end

		anonteam_0_47.ui_tables.config.delete.restore_to_default()
	end)
	anonteam_0_47.ui_tables.config.delete:name("  \adb6361FF\xEE\x8A\xB4\aDEFAULT ?")
end)
anonteam_0_47.ui_tables.config.share:set_callback(function()
	-- function 185
	if anonteam_0_47.ui_tables.config.share:name() == "  \a82ff88FF\xEE\x96\xA0  " then
		return
	end

	local anonteam_185_0 = anonteam_0_47.ui_tables.config.list.value
	local anonteam_185_1 = "ext.config = " .. anonteam_0_45.encode(json.stringify(anonteam_0_0.configs[anonteam_185_0 - 1] or not anonteam_0_0.configs[anonteam_185_0 - 1])) .. "<end>"

	anonteam_0_44.set_clipboard_text(anonteam_185_1, #anonteam_185_1)
	anonteam_0_47.ui_tables.config.share:name("  \a82ff88FF\xEE\x96\xA0  ")
	anonteam_0_47.ui_tables.config.share:tooltip("\a82ff88FFConfig successfully copied to clipboard.")
	utils.execute_after(2, function()
		-- function 186
		anonteam_0_47.ui_tables.config.share.restore_to_default()
	end)
end)

if anonteam_0_47.ui_tables.config.get_config_deobf then
	anonteam_0_47.ui_tables.config.get_config_deobf:set_callback(function()
		-- function 187
		local anonteam_187_0 = anonteam_0_47.ui_tables.config.list.value
		local anonteam_187_1 = json.stringify(anonteam_0_0.configs[anonteam_187_0 - 1] or not anonteam_0_0.configs[anonteam_187_0 - 1])

		anonteam_0_44.set_clipboard_text(anonteam_187_1, #anonteam_187_1)
	end)
end

anonteam_0_47.ui_tables.config.config_from_clipboard:set_callback(function()
	-- function 188
	if anonteam_0_47.ui_tables.config.config_from_clipboard:name() == "  \adb6361FF\xEF\x8C\x9A  " then
		return
	end

	local anonteam_188_0 = anonteam_0_44.get_clipboard_text()
	local anonteam_188_1 = string.match(anonteam_188_0, "(ext%.config%s=%s.-<end>)")

	if not anonteam_188_1 or #anonteam_188_1 == 0 then
		anonteam_0_47.ui_tables.config.config_from_clipboard:name("  \adb6361FF\xEF\x8C\x9A  ")
		anonteam_0_47.ui_tables.config.config_from_clipboard:tooltip("\adb6361FFConfig loading failed.")
		utils.execute_after(2, function()
			-- function 189
			anonteam_0_47.ui_tables.config.config_from_clipboard.restore_to_default()
		end)

		return
	end

	local anonteam_188_2, anonteam_188_3 = anonteam_188_1:find("ext.config = ")

	if not anonteam_188_3 then
		anonteam_0_47.ui_tables.config.config_from_clipboard:name("  \adb6361FF\xEF\x8C\x9A  ")
		anonteam_0_47.ui_tables.config.config_from_clipboard:tooltip("\adb6361FFMissing config start point.")
		utils.execute_after(2, function()
			-- function 190
			anonteam_0_47.ui_tables.config.config_from_clipboard.restore_to_default()
		end)

		return
	end

	local anonteam_188_4 = anonteam_188_1:find("<end>")

	if not anonteam_188_4 then
		anonteam_0_47.ui_tables.config.config_from_clipboard:name("  \adb6361FF\xEF\x8C\x9A  ")
		anonteam_0_47.ui_tables.config.config_from_clipboard:tooltip("\adb6361FFMissing config end point.")
		utils.execute_after(2, function()
			-- function 191
			anonteam_0_47.ui_tables.config.config_from_clipboard.restore_to_default()
		end)

		return
	end

	local anonteam_188_5 = anonteam_188_1:sub(anonteam_188_3, anonteam_188_4 - 1)
	local anonteam_188_6, anonteam_188_7 = anonteam_0_45.pcall_func(anonteam_188_5)

	if not anonteam_188_6 then
		anonteam_0_47.ui_tables.config.config_from_clipboard:name("  \adb6361FF\xEF\x8C\x9A  ")
		anonteam_0_47.ui_tables.config.config_from_clipboard:tooltip("\adb6361FFConfig decode failed.")
		utils.execute_after(2, function()
			-- function 192
			anonteam_0_47.ui_tables.config.config_from_clipboard.restore_to_default()
		end)

		return
	end

	local anonteam_188_8 = anonteam_188_7.name

	for iter_188_0 = 1, #anonteam_0_0.configs do
		if anonteam_0_0.configs[iter_188_0].name == anonteam_188_7.name then
			local anonteam_188_9 = 1

			repeat
				local anonteam_188_10 = true
				local anonteam_188_11 = anonteam_188_8 .. " #" .. anonteam_188_9

				anonteam_188_9 = anonteam_188_9 + 1

				for iter_188_1 = 1, #anonteam_0_0.configs do
					if anonteam_188_11 == anonteam_0_0.configs[iter_188_1].name then
						anonteam_188_10 = false

						break
					end
				end

				if anonteam_188_10 then
					anonteam_188_8 = anonteam_188_11
				end
			until anonteam_188_10
		end
	end

	anonteam_188_7.name = anonteam_188_8

	table.insert(anonteam_0_0.configs, 1, anonteam_188_7)

	db.escape_from_samara_extension = anonteam_0_0

	anonteam_0_47.ui_tables.config.config_from_clipboard:name("  \a82ff88FF\xEE\x96\xA0  ")
	anonteam_0_47.ui_tables.config.config_from_clipboard:tooltip("\a82ff88FFConfig successfully copied to clipboard.")
	anonteam_0_47.ui_tables.config.list:update(anonteam_0_33.get_config_list())
	anonteam_0_47.ui_tables.config.list.update_active_config()
	anonteam_0_47.ui_tables.config.list._callback_func(anonteam_0_47.ui_tables.config.list.ref)
	utils.execute_after(2, function()
		-- function 193
		anonteam_0_47.ui_tables.config.config_from_clipboard.restore_to_default()
	end)
end)

if anonteam_0_1 then
	anonteam_0_48.trial_time = anonteam_0_47.create_group(" Trial \a{Switch}\xEF\x83\x9A \a{Link Active}Timer", 2)

	anonteam_0_48.trial_time:label("config", "time_label", "Remaining time")
	anonteam_0_48.trial_time:button("config", "time_button", "expired", nil, true)

	if anonteam_0_0.trial_cache_1 - common.get_unixtime() < 0 then
		anonteam_0_2("trial access is expired", "Paid lua:", "https://en.neverlose.cc/market/item?id=bkRCJa")
		anonteam_0_47.update_all_groups()

		return
	end

	events.render:set(function()
		-- function 194
		local anonteam_194_0 = anonteam_0_0.trial_cache_1 - common.get_unixtime()
		local anonteam_194_1 = anonteam_0_12(anonteam_194_0 / 60 / 60)
		local anonteam_194_2 = anonteam_0_12(anonteam_0_12(anonteam_194_0 - anonteam_194_1 * 60 * 60) / 60)
		local anonteam_194_3 = anonteam_0_12(anonteam_0_12(anonteam_194_0 - anonteam_194_1 * 60 * 60 - anonteam_194_2 * 60))

		if anonteam_194_0 < -1 then
			common.reload_script()

			return
		end

		if anonteam_194_0 <= 0 then
			anonteam_0_47.ui_tables.config.time_button.ref:name("expired")
		else
			anonteam_0_47.ui_tables.config.time_button.ref:name(anonteam_194_1 .. "h:" .. anonteam_194_2 .. "m" .. ":" .. anonteam_194_3 .. "s")
		end
	end)
end

anonteam_0_47.active_tab = "\a{Link Active}\xEF\x84\xB2\aDEFAULT Anti Aim"

local anonteam_0_49 = {
	navigation = anonteam_0_47.create_group("Anti Aim", 1)
}

anonteam_0_49.navigation:list("antiaim", "list", "", {
	"Disable",
	"Presets",
	"Builder"
})

function anonteam_0_47.ui_tables.antiaim.list.update_active_tab()
	-- function 195
	local anonteam_195_0 = anonteam_0_47.ui_tables.antiaim.list
	local anonteam_195_1 = {}
	local anonteam_195_2 = {
		"\xEE\x89\x8B",
		" \xEF\x97\x9B",
		" \xEF\x87\x9E"
	}

	for iter_195_0 = 1, #anonteam_195_0.elements_array do
		anonteam_195_1[#anonteam_195_1 + 1] = anonteam_195_0.value == iter_195_0 and "\a{Link Active}" .. anonteam_195_2[iter_195_0] .. "   \aDEFAULT" .. anonteam_195_0.elements_array[iter_195_0] or "\a{Switch}" .. anonteam_195_2[iter_195_0] .. "   \a4a4a4aFF" .. anonteam_195_0.elements_array[iter_195_0]
	end

	anonteam_195_0.ref:update(anonteam_195_1)

	if anonteam_0_49.presets then
		anonteam_0_49.presets:update()
	end

	if anonteam_0_49.enable then
		anonteam_0_49.enable:update()
	end

	if anonteam_0_49.builder then
		anonteam_0_49.builder:update()
	end

	if anonteam_0_49.additional then
		anonteam_0_49.additional:update()
	end
end

anonteam_0_47.ui_tables.antiaim.list:set_callback(function()
	-- function 196
	anonteam_0_47.ui_tables.antiaim.list.update_active_tab()
end, true)

anonteam_0_49.presets = anonteam_0_47.create_group(" Anti Aim \a{Switch}\xEF\x83\x9A \a{Link Active}Presets", 2)

anonteam_0_49.presets:visible_condition(function()
	-- function 197
	return anonteam_0_47.ui_tables.antiaim.list.value == 2
end)
anonteam_0_49.presets:list("antiaim", "preset_list", "", {
	"Mixed",
	"Skitter",
	"Way",
	"Delay",
	"Roll"
})
anonteam_0_49.presets:label("antiaim", "preset_label", "\a{Link Active}\xEF\x81\xB5 \aDEFAULT Preset for default gameplay")

function anonteam_0_47.ui_tables.antiaim.preset_list.update_active_config()
	-- function 198
	local anonteam_198_0 = anonteam_0_47.ui_tables.antiaim.preset_list
	local anonteam_198_1 = {}

	for iter_198_0 = 1, #anonteam_198_0.elements_array do
		local anonteam_198_2 = "     \a4f4f4fFF" .. anonteam_198_0.elements_array[iter_198_0]

		if iter_198_0 == anonteam_198_0.value then
			anonteam_198_2 = "\a{Link Active}\xE2\x80\xA2   \aDEFAULT" .. anonteam_198_0.elements_array[iter_198_0]
		end

		anonteam_198_1[#anonteam_198_1 + 1] = anonteam_198_2

		if iter_198_0 == 2 or iter_198_0 == 5 then
			anonteam_198_1[#anonteam_198_1] = anonteam_198_1[#anonteam_198_1] .. " \a4f4f4fFF- \a{Link Active}New \xEF\xA2\x90"
		end
	end

	anonteam_198_0.ref:update(anonteam_198_1)
	anonteam_0_47.ui_tables.antiaim.preset_label.ref:name(anonteam_198_0.value == 5 and "\aff3636FF\xEF\x81\xB1\aDEFAULT This anti aim can be blocked on some servers - \aff3636FFRoll Fix\aDEFAULT in server name. If your \a{Link Active}movement is broken\aDEFAULT dont use this preset or change server" or "\a{Link Active}\xEF\x81\xB5 \aDEFAULT Preset for default gameplay")
end

anonteam_0_47.presets = {}

function anonteam_0_47.parse_preset(arg_199_0)
	-- function 199
	local anonteam_199_0 = json.parse(arg_199_0)
	local anonteam_199_1 = {}

	for iter_199_0, iter_199_1 in pairs(anonteam_199_0) do
		local anonteam_199_2 = {}

		if type(iter_199_1) == "table" then
			anonteam_199_2.value_by_name = {}

			local anonteam_199_3 = 0

			for iter_199_2, iter_199_3 in pairs(iter_199_1) do
				anonteam_199_3 = anonteam_199_3 + 1
			end

			if anonteam_199_3 ~= 0 then
				for iter_199_4 = 1, #iter_199_1 do
					anonteam_199_2.value_by_name[iter_199_1[iter_199_4]] = true
				end
			else
				anonteam_199_2.value = iter_199_1
			end
		else
			if iter_199_1 ~= 0 then
				-- block empty
			end

			if iter_199_0:find("def_pitch") then
				anonteam_199_2.str_value = iter_199_1
			else
				anonteam_199_2.value = iter_199_1
			end
		end

		anonteam_199_1[iter_199_0] = anonteam_199_2
	end

	return anonteam_199_1
end

anonteam_0_47.presets.Mixed = anonteam_0_47.parse_preset("{\"base_compensate\":false,\"base_pitch\":1.0,\"base_yaw\":1.0,\"breaklc_always\":[],\"breaklc_extra\":[\"Condition Change\",\"Weapon Change\",\"Reloading\"],\"breaklc_ping\":[],\"def_onetapspeed1\":10.0,\"def_onetapspeed2\":20.0,\"def_onetapspeed3\":20.0,\"def_onetapspeed4\":10.0,\"def_onetapspeed51\":20.0,\"def_onetapspeed52\":20.0,\"def_onetapspeed61\":10.0,\"def_onetapspeed62\":20.0,\"def_pitch1\":\"Up\",\"def_pitch2\":\"Up\",\"def_pitch3\":\"Up\",\"def_pitch4\":\"Up\",\"def_pitch51\":\"Up\",\"def_pitch52\":\"Up\",\"def_pitch61\":\"Up\",\"def_pitch62\":\"Up\",\"def_switch1\":true,\"def_switch2\":true,\"def_switch3\":true,\"def_switch4\":false,\"def_switch51\":true,\"def_switch52\":true,\"def_switch61\":true,\"def_switch62\":true,\"def_yaw1\":3.0,\"def_yaw2\":3.0,\"def_yaw3\":3.0,\"def_yaw4\":3.0,\"def_yaw51\":3.0,\"def_yaw52\":3.0,\"def_yaw61\":3.0,\"def_yaw62\":3.0,\"def_yaw_deg1\":0.0,\"def_yaw_deg2\":0.0,\"def_yaw_deg3\":0.0,\"def_yaw_deg4\":0.0,\"def_yaw_deg51\":-112.0,\"def_yaw_deg52\":0.0,\"def_yaw_deg61\":0.0,\"def_yaw_deg62\":0.0,\"desync_freestand1\":1.0,\"desync_freestand2\":1.0,\"desync_freestand3\":1.0,\"desync_freestand4\":1.0,\"desync_freestand51\":1.0,\"desync_freestand52\":1.0,\"desync_freestand61\":1.0,\"desync_freestand62\":1.0,\"desync_l1\":0.0,\"desync_l2\":60.0,\"desync_l3\":0.0,\"desync_l4\":60.0,\"desync_l51\":0.0,\"desync_l52\":60.0,\"desync_l61\":60.0,\"desync_l62\":60.0,\"desync_mod1\":[],\"desync_mod2\":[\"Jitter\"],\"desync_mod3\":[],\"desync_mod4\":[\"Jitter\"],\"desync_mod51\":[],\"desync_mod52\":[\"Jitter\"],\"desync_mod61\":[\"Jitter\"],\"desync_mod62\":[\"Jitter\"],\"desync_r1\":0.0,\"desync_r2\":60.0,\"desync_r3\":0.0,\"desync_r4\":60.0,\"desync_r51\":0.0,\"desync_r52\":60.0,\"desync_r61\":60.0,\"desync_r62\":60.0,\"desync_switch1\":true,\"desync_switch2\":true,\"desync_switch3\":true,\"desync_switch4\":true,\"desync_switch51\":true,\"desync_switch52\":true,\"desync_switch61\":true,\"desync_switch62\":true,\"flick_delay1\":3.0,\"flick_delay2\":3.0,\"flick_delay3\":3.0,\"flick_delay4\":3.0,\"flick_delay51\":3.0,\"flick_delay52\":3.0,\"flick_delay61\":3.0,\"flick_delay62\":3.0,\"flick_yaw1\":0.0,\"flick_yaw2\":0.0,\"flick_yaw3\":0.0,\"flick_yaw4\":0.0,\"flick_yaw51\":0.0,\"flick_yaw52\":0.0,\"flick_yaw61\":0.0,\"flick_yaw62\":0.0,\"frees_dis_def\":false,\"frees_disable\":[\"In Air\"],\"frees_pitch\":2.0,\"frees_pitch_custom\":0.0,\"frees_yaw\":1.0,\"frees_yaw_onetap\":0.0,\"legitaa_custom\":0.0,\"legitaa_desync\":true,\"legitaa_freestand\":2.0,\"legitaa_mod\":[\"Jitter\"],\"legitaa_pitch\":1.0,\"legitaa_switch\":true,\"list\":3.0,\"manual_type\":1.0,\"manual_view\":1.0,\"over_cond2\":false,\"over_cond3\":false,\"over_cond4\":false,\"over_cond51\":false,\"over_cond52\":false,\"over_cond61\":false,\"over_cond62\":false,\"pitch_custom1\":0.0,\"pitch_custom2\":0.0,\"pitch_custom3\":0.0,\"pitch_custom4\":0.0,\"pitch_custom51\":0.0,\"pitch_custom52\":0.0,\"pitch_custom61\":0.0,\"pitch_custom62\":0.0,\"pitch_deg1\":0.0,\"pitch_deg2\":0.0,\"pitch_deg3\":0.0,\"pitch_deg4\":0.0,\"pitch_deg51\":0.0,\"pitch_deg52\":0.0,\"pitch_deg61\":0.0,\"pitch_deg62\":0.0,\"predict_switch\":false,\"preset_list\":4.0,\"roll_def_deg1\":0.0,\"roll_def_deg2\":0.0,\"roll_def_deg3\":0.0,\"roll_def_deg4\":0.0,\"roll_def_deg51\":0.0,\"roll_def_deg52\":0.0,\"roll_def_deg61\":0.0,\"roll_def_deg62\":0.0,\"roll_ext_deg1\":0.0,\"roll_ext_deg2\":0.0,\"roll_ext_deg3\":0.0,\"roll_ext_deg4\":0.0,\"roll_ext_deg51\":0.0,\"roll_ext_deg52\":0.0,\"roll_ext_deg61\":0.0,\"roll_ext_deg62\":0.0,\"roll_ext_pit1\":0.0,\"roll_ext_pit2\":0.0,\"roll_ext_pit3\":0.0,\"roll_ext_pit4\":0.0,\"roll_ext_pit51\":0.0,\"roll_ext_pit52\":0.0,\"roll_ext_pit61\":0.0,\"roll_ext_pit62\":0.0,\"roll_switch1\":false,\"roll_switch2\":false,\"roll_switch3\":false,\"roll_switch4\":false,\"roll_switch51\":false,\"roll_switch52\":false,\"roll_switch61\":false,\"roll_switch62\":false,\"roll_type1\":1.0,\"roll_type2\":1.0,\"roll_type3\":1.0,\"roll_type4\":1.0,\"roll_type51\":1.0,\"roll_type52\":1.0,\"roll_type61\":1.0,\"roll_type62\":1.0,\"safe_def\":true,\"safe_switch\":false,\"xway_counter1\":3.0,\"xway_counter2\":3.0,\"xway_counter3\":3.0,\"xway_counter4\":3.0,\"xway_counter51\":3.0,\"xway_counter52\":3.0,\"xway_counter61\":3.0,\"xway_counter62\":4.0,\"xway_shuffle1\":false,\"xway_shuffle2\":true,\"xway_shuffle3\":false,\"xway_shuffle4\":false,\"xway_shuffle51\":true,\"xway_shuffle52\":false,\"xway_shuffle61\":true,\"xway_shuffle62\":true,\"xway_switch1\":false,\"xway_switch2\":true,\"xway_switch3\":false,\"xway_switch4\":false,\"xway_switch51\":false,\"xway_switch52\":false,\"xway_switch61\":true,\"xway_switch62\":true,\"xway_sync1\":false,\"xway_sync2\":false,\"xway_sync3\":false,\"xway_sync4\":false,\"xway_sync51\":false,\"xway_sync52\":false,\"xway_sync61\":false,\"xway_sync62\":true,\"xwayn_11\":0.0,\"xwayn_12\":0.0,\"xwayn_13\":0.0,\"xwayn_14\":0.0,\"xwayn_15\":0.0,\"xwayn_16\":0.0,\"xwayn_17\":0.0,\"xwayn_21\":-36.0,\"xwayn_22\":33.0,\"xwayn_23\":-16.0,\"xwayn_24\":0.0,\"xwayn_25\":0.0,\"xwayn_26\":0.0,\"xwayn_27\":0.0,\"xwayn_31\":0.0,\"xwayn_32\":0.0,\"xwayn_33\":0.0,\"xwayn_34\":0.0,\"xwayn_35\":0.0,\"xwayn_36\":0.0,\"xwayn_37\":0.0,\"xwayn_41\":0.0,\"xwayn_42\":0.0,\"xwayn_43\":0.0,\"xwayn_44\":0.0,\"xwayn_45\":0.0,\"xwayn_46\":0.0,\"xwayn_47\":0.0,\"xwayn_511\":0.0,\"xwayn_512\":0.0,\"xwayn_513\":0.0,\"xwayn_514\":0.0,\"xwayn_515\":0.0,\"xwayn_516\":0.0,\"xwayn_517\":0.0,\"xwayn_521\":0.0,\"xwayn_522\":0.0,\"xwayn_523\":0.0,\"xwayn_524\":0.0,\"xwayn_525\":0.0,\"xwayn_526\":0.0,\"xwayn_527\":0.0,\"xwayn_611\":-29.0,\"xwayn_612\":24.0,\"xwayn_613\":-16.0,\"xwayn_614\":0.0,\"xwayn_615\":0.0,\"xwayn_616\":0.0,\"xwayn_617\":0.0,\"xwayn_621\":-33.0,\"xwayn_622\":32.0,\"xwayn_623\":-27.0,\"xwayn_624\":39.0,\"xwayn_625\":0.0,\"xwayn_626\":0.0,\"xwayn_627\":0.0,\"yaw_deg1\":-35.0,\"yaw_deg2\":-60.0,\"yaw_deg3\":-50.0,\"yaw_deg4\":-47.0,\"yaw_deg51\":-58.0,\"yaw_deg52\":-67.0,\"yaw_deg61\":-57.0,\"yaw_deg62\":-47.0,\"yaw_delay1\":0.0,\"yaw_delay2\":1.0,\"yaw_delay3\":1.0,\"yaw_delay4\":0.0,\"yaw_delay51\":0.0,\"yaw_delay52\":1.0,\"yaw_delay61\":0.0,\"yaw_delay62\":1.0,\"yaw_l1\":0.0,\"yaw_l2\":0.0,\"yaw_l3\":0.0,\"yaw_l4\":0.0,\"yaw_l51\":0.0,\"yaw_l52\":0.0,\"yaw_l61\":0.0,\"yaw_l62\":0.0,\"yaw_mod_combo1\":2.0,\"yaw_mod_combo2\":3.0,\"yaw_mod_combo3\":2.0,\"yaw_mod_combo4\":2.0,\"yaw_mod_combo51\":3.0,\"yaw_mod_combo52\":2.0,\"yaw_mod_combo61\":2.0,\"yaw_mod_combo62\":3.0,\"yaw_o1\":0.0,\"yaw_o2\":0.0,\"yaw_o3\":0.0,\"yaw_o4\":5.0,\"yaw_o51\":10.0,\"yaw_o52\":0.0,\"yaw_o61\":0.0,\"yaw_o62\":0.0,\"yaw_r1\":0.0,\"yaw_r2\":0.0,\"yaw_r3\":0.0,\"yaw_r4\":0.0,\"yaw_r51\":0.0,\"yaw_r52\":0.0,\"yaw_r61\":0.0,\"yaw_r62\":0.0,\"yaw_randl1\":0.0,\"yaw_randl2\":-15.0,\"yaw_randl3\":20.0,\"yaw_randl4\":-15.0,\"yaw_randl51\":0.0,\"yaw_randl52\":0.0,\"yaw_randl61\":0.0,\"yaw_randl62\":0.0,\"yaw_rando1\":0.0,\"yaw_rando2\":0.0,\"yaw_rando3\":0.0,\"yaw_rando4\":5.0,\"yaw_rando51\":20.0,\"yaw_rando52\":-5.0,\"yaw_rando61\":0.0,\"yaw_rando62\":5.0,\"yaw_randr1\":0.0,\"yaw_randr2\":15.0,\"yaw_randr3\":-20.0,\"yaw_randr4\":15.0,\"yaw_randr51\":0.0,\"yaw_randr52\":0.0,\"yaw_randr61\":0.0,\"yaw_randr62\":0.0,\"yaw_switch1\":true,\"yaw_switch2\":true,\"yaw_switch3\":true,\"yaw_switch4\":true,\"yaw_switch51\":true,\"yaw_switch52\":true,\"yaw_switch61\":true,\"yaw_switch62\":true}")
anonteam_0_47.presets.Classic = anonteam_0_47.parse_preset("{\"base_compensate\":true,\"base_pitch\":1.0,\"base_yaw\":1.0,\"breaklc_always\":[\"Standing\",\"Slow Walking\",\"Crouching\",\"In Air\",\"Safe Head\"],\"breaklc_extra\":[\"Condition Change\",\"Weapon Change\",\"Reloading\"],\"breaklc_ping\":[],\"def_onetapspeed1\":10.0,\"def_onetapspeed2\":20.0,\"def_onetapspeed3\":20.0,\"def_onetapspeed4\":20.0,\"def_onetapspeed51\":20.0,\"def_onetapspeed52\":20.0,\"def_onetapspeed61\":10.0,\"def_onetapspeed62\":20.0,\"def_pitch1\":\"Up\",\"def_pitch2\":\"Up\",\"def_pitch3\":\"Up\",\"def_pitch4\":\"Up\",\"def_pitch51\":\"Up\",\"def_pitch52\":\"Up\",\"def_pitch61\":\"Up\",\"def_pitch62\":\"Up\",\"def_switch1\":true,\"def_switch2\":false,\"def_switch3\":true,\"def_switch4\":false,\"def_switch51\":true,\"def_switch52\":true,\"def_switch61\":true,\"def_switch62\":true,\"def_yaw1\":3.0,\"def_yaw2\":3.0,\"def_yaw3\":3.0,\"def_yaw4\":3.0,\"def_yaw51\":3.0,\"def_yaw52\":3.0,\"def_yaw61\":3.0,\"def_yaw62\":3.0,\"def_yaw_deg1\":0.0,\"def_yaw_deg2\":0.0,\"def_yaw_deg3\":0.0,\"def_yaw_deg4\":0.0,\"def_yaw_deg51\":0.0,\"def_yaw_deg52\":0.0,\"def_yaw_deg61\":0.0,\"def_yaw_deg62\":0.0,\"desync_freestand1\":1.0,\"desync_freestand2\":1.0,\"desync_freestand3\":1.0,\"desync_freestand4\":1.0,\"desync_freestand51\":1.0,\"desync_freestand52\":1.0,\"desync_freestand61\":1.0,\"desync_freestand62\":1.0,\"desync_l1\":0.0,\"desync_l2\":60.0,\"desync_l3\":60.0,\"desync_l4\":60.0,\"desync_l51\":60.0,\"desync_l52\":60.0,\"desync_l61\":60.0,\"desync_l62\":60.0,\"desync_mod1\":[],\"desync_mod2\":[\"Jitter\"],\"desync_mod3\":[\"Jitter\"],\"desync_mod4\":[\"Jitter\"],\"desync_mod51\":[\"Jitter\"],\"desync_mod52\":[\"Jitter\"],\"desync_mod61\":[\"Jitter\"],\"desync_mod62\":[\"Jitter\"],\"desync_r1\":0.0,\"desync_r2\":60.0,\"desync_r3\":60.0,\"desync_r4\":60.0,\"desync_r51\":60.0,\"desync_r52\":60.0,\"desync_r61\":60.0,\"desync_r62\":60.0,\"desync_switch1\":true,\"desync_switch2\":true,\"desync_switch3\":true,\"desync_switch4\":true,\"desync_switch51\":true,\"desync_switch52\":true,\"desync_switch61\":true,\"desync_switch62\":true,\"flick_delay1\":3.0,\"flick_delay2\":3.0,\"flick_delay3\":3.0,\"flick_delay4\":3.0,\"flick_delay51\":3.0,\"flick_delay52\":3.0,\"flick_delay61\":3.0,\"flick_delay62\":3.0,\"flick_yaw1\":0.0,\"flick_yaw2\":0.0,\"flick_yaw3\":0.0,\"flick_yaw4\":0.0,\"flick_yaw51\":0.0,\"flick_yaw52\":0.0,\"flick_yaw61\":0.0,\"flick_yaw62\":0.0,\"frees_dis_def\":false,\"frees_disable\":[\"In Air\"],\"frees_pitch\":2.0,\"frees_pitch_custom\":0.0,\"frees_yaw\":1.0,\"frees_yaw_onetap\":0.0,\"legitaa_custom\":0.0,\"legitaa_desync\":true,\"legitaa_freestand\":2.0,\"legitaa_mod\":[\"Jitter\"],\"legitaa_pitch\":1.0,\"legitaa_switch\":true,\"list\":3.0,\"manual_type\":1.0,\"manual_view\":1.0,\"over_cond2\":false,\"over_cond3\":false,\"over_cond4\":false,\"over_cond51\":false,\"over_cond52\":false,\"over_cond61\":false,\"over_cond62\":false,\"pitch_custom1\":0.0,\"pitch_custom2\":0.0,\"pitch_custom3\":0.0,\"pitch_custom4\":0.0,\"pitch_custom51\":0.0,\"pitch_custom52\":0.0,\"pitch_custom61\":0.0,\"pitch_custom62\":0.0,\"pitch_deg1\":0.0,\"pitch_deg2\":0.0,\"pitch_deg3\":0.0,\"pitch_deg4\":0.0,\"pitch_deg51\":0.0,\"pitch_deg52\":0.0,\"pitch_deg61\":0.0,\"pitch_deg62\":0.0,\"predict_switch\":true,\"preset_list\":1.0,\"roll_def_deg1\":0.0,\"roll_def_deg2\":0.0,\"roll_def_deg3\":0.0,\"roll_def_deg4\":0.0,\"roll_def_deg51\":0.0,\"roll_def_deg52\":0.0,\"roll_def_deg61\":0.0,\"roll_def_deg62\":0.0,\"roll_ext_deg1\":0.0,\"roll_ext_deg2\":0.0,\"roll_ext_deg3\":0.0,\"roll_ext_deg4\":0.0,\"roll_ext_deg51\":0.0,\"roll_ext_deg52\":0.0,\"roll_ext_deg61\":0.0,\"roll_ext_deg62\":0.0,\"roll_ext_pit1\":0.0,\"roll_ext_pit2\":0.0,\"roll_ext_pit3\":0.0,\"roll_ext_pit4\":0.0,\"roll_ext_pit51\":0.0,\"roll_ext_pit52\":0.0,\"roll_ext_pit61\":0.0,\"roll_ext_pit62\":0.0,\"roll_switch1\":false,\"roll_switch2\":false,\"roll_switch3\":false,\"roll_switch4\":false,\"roll_switch51\":false,\"roll_switch52\":false,\"roll_switch61\":false,\"roll_switch62\":false,\"roll_type1\":1.0,\"roll_type2\":1.0,\"roll_type3\":1.0,\"roll_type4\":1.0,\"roll_type51\":1.0,\"roll_type52\":1.0,\"roll_type61\":1.0,\"roll_type62\":1.0,\"safe_def\":true,\"safe_switch\":true,\"xway_counter1\":3.0,\"xway_counter2\":3.0,\"xway_counter3\":3.0,\"xway_counter4\":3.0,\"xway_counter51\":3.0,\"xway_counter52\":3.0,\"xway_counter61\":3.0,\"xway_counter62\":3.0,\"xway_shuffle1\":false,\"xway_shuffle2\":false,\"xway_shuffle3\":false,\"xway_shuffle4\":false,\"xway_shuffle51\":false,\"xway_shuffle52\":false,\"xway_shuffle61\":false,\"xway_shuffle62\":false,\"xway_switch1\":false,\"xway_switch2\":false,\"xway_switch3\":false,\"xway_switch4\":false,\"xway_switch51\":false,\"xway_switch52\":false,\"xway_switch61\":false,\"xway_switch62\":false,\"xway_sync1\":false,\"xway_sync2\":false,\"xway_sync3\":false,\"xway_sync4\":false,\"xway_sync51\":false,\"xway_sync52\":false,\"xway_sync61\":false,\"xway_sync62\":false,\"xwayn_11\":0.0,\"xwayn_12\":0.0,\"xwayn_13\":0.0,\"xwayn_14\":0.0,\"xwayn_15\":0.0,\"xwayn_16\":0.0,\"xwayn_17\":0.0,\"xwayn_21\":0.0,\"xwayn_22\":0.0,\"xwayn_23\":0.0,\"xwayn_24\":0.0,\"xwayn_25\":0.0,\"xwayn_26\":0.0,\"xwayn_27\":0.0,\"xwayn_31\":0.0,\"xwayn_32\":0.0,\"xwayn_33\":0.0,\"xwayn_34\":0.0,\"xwayn_35\":0.0,\"xwayn_36\":0.0,\"xwayn_37\":0.0,\"xwayn_41\":0.0,\"xwayn_42\":0.0,\"xwayn_43\":0.0,\"xwayn_44\":0.0,\"xwayn_45\":0.0,\"xwayn_46\":0.0,\"xwayn_47\":0.0,\"xwayn_511\":0.0,\"xwayn_512\":0.0,\"xwayn_513\":0.0,\"xwayn_514\":0.0,\"xwayn_515\":0.0,\"xwayn_516\":0.0,\"xwayn_517\":0.0,\"xwayn_521\":0.0,\"xwayn_522\":0.0,\"xwayn_523\":0.0,\"xwayn_524\":0.0,\"xwayn_525\":0.0,\"xwayn_526\":0.0,\"xwayn_527\":0.0,\"xwayn_611\":0.0,\"xwayn_612\":0.0,\"xwayn_613\":0.0,\"xwayn_614\":0.0,\"xwayn_615\":0.0,\"xwayn_616\":0.0,\"xwayn_617\":0.0,\"xwayn_621\":0.0,\"xwayn_622\":0.0,\"xwayn_623\":0.0,\"xwayn_624\":0.0,\"xwayn_625\":0.0,\"xwayn_626\":0.0,\"xwayn_627\":0.0,\"yaw_deg1\":-35.0,\"yaw_deg2\":-70.0,\"yaw_deg3\":-89.0,\"yaw_deg4\":-75.0,\"yaw_deg51\":-63.0,\"yaw_deg52\":-63.0,\"yaw_deg61\":-75.0,\"yaw_deg62\":-70.0,\"yaw_delay1\":0.0,\"yaw_delay2\":0.0,\"yaw_delay3\":0.0,\"yaw_delay4\":0.0,\"yaw_delay51\":0.0,\"yaw_delay52\":0.0,\"yaw_delay61\":0.0,\"yaw_delay62\":0.0,\"yaw_l1\":0.0,\"yaw_l2\":0.0,\"yaw_l3\":0.0,\"yaw_l4\":0.0,\"yaw_l51\":0.0,\"yaw_l52\":0.0,\"yaw_l61\":0.0,\"yaw_l62\":0.0,\"yaw_mod_combo1\":2.0,\"yaw_mod_combo2\":2.0,\"yaw_mod_combo3\":2.0,\"yaw_mod_combo4\":2.0,\"yaw_mod_combo51\":2.0,\"yaw_mod_combo52\":2.0,\"yaw_mod_combo61\":2.0,\"yaw_mod_combo62\":2.0,\"yaw_o1\":0.0,\"yaw_o2\":0.0,\"yaw_o3\":0.0,\"yaw_o4\":0.0,\"yaw_o51\":0.0,\"yaw_o52\":0.0,\"yaw_o61\":0.0,\"yaw_o62\":0.0,\"yaw_r1\":0.0,\"yaw_r2\":0.0,\"yaw_r3\":0.0,\"yaw_r4\":0.0,\"yaw_r51\":0.0,\"yaw_r52\":0.0,\"yaw_r61\":0.0,\"yaw_r62\":0.0,\"yaw_randl1\":0.0,\"yaw_randl2\":0.0,\"yaw_randl3\":0.0,\"yaw_randl4\":0.0,\"yaw_randl51\":0.0,\"yaw_randl52\":0.0,\"yaw_randl61\":0.0,\"yaw_randl62\":0.0,\"yaw_rando1\":0.0,\"yaw_rando2\":-5.0,\"yaw_rando3\":-5.0,\"yaw_rando4\":-5.0,\"yaw_rando51\":-5.0,\"yaw_rando52\":-5.0,\"yaw_rando61\":5.0,\"yaw_rando62\":0.0,\"yaw_randr1\":0.0,\"yaw_randr2\":0.0,\"yaw_randr3\":0.0,\"yaw_randr4\":0.0,\"yaw_randr51\":0.0,\"yaw_randr52\":0.0,\"yaw_randr61\":0.0,\"yaw_randr62\":0.0,\"yaw_switch1\":true,\"yaw_switch2\":true,\"yaw_switch3\":true,\"yaw_switch4\":true,\"yaw_switch51\":true,\"yaw_switch52\":true,\"yaw_switch61\":true,\"yaw_switch62\":true}")
anonteam_0_47.presets.Way = anonteam_0_47.parse_preset("{\"base_compensate\":false,\"base_pitch\":1.0,\"base_yaw\":2.0,\"breaklc_always\":[],\"breaklc_extra\":[],\"breaklc_ping\":[],\"def_onetapspeed1\":10.0,\"def_onetapspeed2\":20.0,\"def_onetapspeed3\":20.0,\"def_onetapspeed4\":20.0,\"def_onetapspeed51\":20.0,\"def_onetapspeed52\":20.0,\"def_onetapspeed61\":20.0,\"def_onetapspeed62\":20.0,\"def_pitch1\":\"Disabled\",\"def_pitch2\":\"Up\",\"def_pitch3\":\"Up\",\"def_pitch4\":\"Up\",\"def_pitch51\":\"Up\",\"def_pitch52\":\"Up\",\"def_pitch61\":\"Up\",\"def_pitch62\":\"Up\",\"def_switch1\":false,\"def_switch2\":true,\"def_switch3\":true,\"def_switch4\":true,\"def_switch51\":true,\"def_switch52\":true,\"def_switch61\":true,\"def_switch62\":true,\"def_yaw1\":1.0,\"def_yaw2\":3.0,\"def_yaw3\":3.0,\"def_yaw4\":3.0,\"def_yaw51\":3.0,\"def_yaw52\":3.0,\"def_yaw61\":3.0,\"def_yaw62\":3.0,\"def_yaw_deg1\":0.0,\"def_yaw_deg2\":0.0,\"def_yaw_deg3\":0.0,\"def_yaw_deg4\":0.0,\"def_yaw_deg51\":0.0,\"def_yaw_deg52\":0.0,\"def_yaw_deg61\":0.0,\"def_yaw_deg62\":0.0,\"desync_freestand1\":1.0,\"desync_freestand2\":1.0,\"desync_freestand3\":1.0,\"desync_freestand4\":1.0,\"desync_freestand51\":1.0,\"desync_freestand52\":1.0,\"desync_freestand61\":1.0,\"desync_freestand62\":1.0,\"desync_l1\":60.0,\"desync_l2\":60.0,\"desync_l3\":60.0,\"desync_l4\":60.0,\"desync_l51\":60.0,\"desync_l52\":60.0,\"desync_l61\":60.0,\"desync_l62\":60.0,\"desync_mod1\":[],\"desync_mod2\":[],\"desync_mod3\":[],\"desync_mod4\":[],\"desync_mod51\":[],\"desync_mod52\":[],\"desync_mod61\":[],\"desync_mod62\":[],\"desync_r1\":60.0,\"desync_r2\":60.0,\"desync_r3\":60.0,\"desync_r4\":60.0,\"desync_r51\":60.0,\"desync_r52\":60.0,\"desync_r61\":60.0,\"desync_r62\":60.0,\"desync_switch1\":false,\"desync_switch2\":true,\"desync_switch3\":true,\"desync_switch4\":true,\"desync_switch51\":true,\"desync_switch52\":true,\"desync_switch61\":true,\"desync_switch62\":true,\"flick_delay1\":3.0,\"flick_delay2\":3.0,\"flick_delay3\":3.0,\"flick_delay4\":3.0,\"flick_delay51\":3.0,\"flick_delay52\":3.0,\"flick_delay61\":3.0,\"flick_delay62\":3.0,\"flick_yaw1\":0.0,\"flick_yaw2\":0.0,\"flick_yaw3\":0.0,\"flick_yaw4\":0.0,\"flick_yaw51\":0.0,\"flick_yaw52\":0.0,\"flick_yaw61\":0.0,\"flick_yaw62\":0.0,\"frees_dis_def\":true,\"frees_disable\":[],\"frees_pitch\":1.0,\"frees_pitch_custom\":0.0,\"frees_yaw\":1.0,\"frees_yaw_onetap\":0.0,\"legitaa_custom\":0.0,\"legitaa_desync\":false,\"legitaa_freestand\":1.0,\"legitaa_mod\":[],\"legitaa_pitch\":1.0,\"legitaa_switch\":false,\"list\":3.0,\"manual_type\":1.0,\"manual_view\":1.0,\"over_cond2\":false,\"over_cond3\":false,\"over_cond4\":false,\"over_cond51\":false,\"over_cond52\":false,\"over_cond61\":false,\"over_cond62\":false,\"pitch_custom1\":0.0,\"pitch_custom2\":0.0,\"pitch_custom3\":0.0,\"pitch_custom4\":0.0,\"pitch_custom51\":0.0,\"pitch_custom52\":0.0,\"pitch_custom61\":0.0,\"pitch_custom62\":0.0,\"pitch_deg1\":0.0,\"pitch_deg2\":0.0,\"pitch_deg3\":0.0,\"pitch_deg4\":0.0,\"pitch_deg51\":0.0,\"pitch_deg52\":0.0,\"pitch_deg61\":0.0,\"pitch_deg62\":0.0,\"predict_switch\":false,\"preset_list\":1.0,\"roll_def_deg1\":0.0,\"roll_def_deg2\":0.0,\"roll_def_deg3\":0.0,\"roll_def_deg4\":0.0,\"roll_def_deg51\":0.0,\"roll_def_deg52\":0.0,\"roll_def_deg61\":0.0,\"roll_def_deg62\":0.0,\"roll_ext_deg1\":0.0,\"roll_ext_deg2\":0.0,\"roll_ext_deg3\":0.0,\"roll_ext_deg4\":0.0,\"roll_ext_deg51\":0.0,\"roll_ext_deg52\":0.0,\"roll_ext_deg61\":0.0,\"roll_ext_deg62\":0.0,\"roll_ext_pit1\":0.0,\"roll_ext_pit2\":0.0,\"roll_ext_pit3\":0.0,\"roll_ext_pit4\":0.0,\"roll_ext_pit51\":0.0,\"roll_ext_pit52\":0.0,\"roll_ext_pit61\":0.0,\"roll_ext_pit62\":0.0,\"roll_switch1\":false,\"roll_switch2\":false,\"roll_switch3\":false,\"roll_switch4\":false,\"roll_switch51\":false,\"roll_switch52\":false,\"roll_switch61\":false,\"roll_switch62\":false,\"roll_type1\":1.0,\"roll_type2\":1.0,\"roll_type3\":1.0,\"roll_type4\":1.0,\"roll_type51\":1.0,\"roll_type52\":1.0,\"roll_type61\":1.0,\"roll_type62\":1.0,\"safe_def\":false,\"safe_switch\":false,\"xway_counter1\":3.0,\"xway_counter2\":3.0,\"xway_counter3\":4.0,\"xway_counter4\":3.0,\"xway_counter51\":4.0,\"xway_counter52\":3.0,\"xway_counter61\":3.0,\"xway_counter62\":3.0,\"xway_shuffle1\":false,\"xway_shuffle2\":true,\"xway_shuffle3\":true,\"xway_shuffle4\":true,\"xway_shuffle51\":true,\"xway_shuffle52\":true,\"xway_shuffle61\":false,\"xway_shuffle62\":true,\"xway_switch1\":false,\"xway_switch2\":true,\"xway_switch3\":true,\"xway_switch4\":true,\"xway_switch51\":true,\"xway_switch52\":true,\"xway_switch61\":true,\"xway_switch62\":true,\"xway_sync1\":false,\"xway_sync2\":true,\"xway_sync3\":true,\"xway_sync4\":true,\"xway_sync51\":true,\"xway_sync52\":true,\"xway_sync61\":true,\"xway_sync62\":true,\"xwayn_11\":0.0,\"xwayn_12\":0.0,\"xwayn_13\":0.0,\"xwayn_14\":0.0,\"xwayn_15\":0.0,\"xwayn_16\":0.0,\"xwayn_17\":0.0,\"xwayn_21\":-28.0,\"xwayn_22\":46.0,\"xwayn_23\":7.0,\"xwayn_24\":0.0,\"xwayn_25\":0.0,\"xwayn_26\":0.0,\"xwayn_27\":0.0,\"xwayn_31\":-51.0,\"xwayn_32\":37.0,\"xwayn_33\":-37.0,\"xwayn_34\":21.0,\"xwayn_35\":0.0,\"xwayn_36\":0.0,\"xwayn_37\":0.0,\"xwayn_41\":-28.0,\"xwayn_42\":46.0,\"xwayn_43\":-19.0,\"xwayn_44\":0.0,\"xwayn_45\":0.0,\"xwayn_46\":0.0,\"xwayn_47\":0.0,\"xwayn_511\":-42.0,\"xwayn_512\":45.0,\"xwayn_513\":-33.0,\"xwayn_514\":33.0,\"xwayn_515\":0.0,\"xwayn_516\":0.0,\"xwayn_517\":0.0,\"xwayn_521\":-30.0,\"xwayn_522\":45.0,\"xwayn_523\":17.0,\"xwayn_524\":33.0,\"xwayn_525\":0.0,\"xwayn_526\":0.0,\"xwayn_527\":0.0,\"xwayn_611\":-31.0,\"xwayn_612\":46.0,\"xwayn_613\":20.0,\"xwayn_614\":0.0,\"xwayn_615\":0.0,\"xwayn_616\":0.0,\"xwayn_617\":0.0,\"xwayn_621\":-36.0,\"xwayn_622\":38.0,\"xwayn_623\":13.0,\"xwayn_624\":0.0,\"xwayn_625\":0.0,\"xwayn_626\":0.0,\"xwayn_627\":0.0,\"yaw_deg1\":0.0,\"yaw_deg2\":-78.0,\"yaw_deg3\":-78.0,\"yaw_deg4\":-78.0,\"yaw_deg51\":-78.0,\"yaw_deg52\":-78.0,\"yaw_deg61\":-78.0,\"yaw_deg62\":-78.0,\"yaw_delay1\":0.0,\"yaw_delay2\":0.0,\"yaw_delay3\":0.0,\"yaw_delay4\":0.0,\"yaw_delay51\":0.0,\"yaw_delay52\":0.0,\"yaw_delay61\":0.0,\"yaw_delay62\":0.0,\"yaw_l1\":0.0,\"yaw_l2\":0.0,\"yaw_l3\":0.0,\"yaw_l4\":0.0,\"yaw_l51\":0.0,\"yaw_l52\":0.0,\"yaw_l61\":0.0,\"yaw_l62\":0.0,\"yaw_mod_combo1\":1.0,\"yaw_mod_combo2\":3.0,\"yaw_mod_combo3\":3.0,\"yaw_mod_combo4\":3.0,\"yaw_mod_combo51\":3.0,\"yaw_mod_combo52\":3.0,\"yaw_mod_combo61\":3.0,\"yaw_mod_combo62\":3.0,\"yaw_o1\":0.0,\"yaw_o2\":0.0,\"yaw_o3\":17.0,\"yaw_o4\":0.0,\"yaw_o51\":17.0,\"yaw_o52\":17.0,\"yaw_o61\":0.0,\"yaw_o62\":17.0,\"yaw_r1\":0.0,\"yaw_r2\":0.0,\"yaw_r3\":0.0,\"yaw_r4\":0.0,\"yaw_r51\":0.0,\"yaw_r52\":0.0,\"yaw_r61\":0.0,\"yaw_r62\":0.0,\"yaw_randl1\":0.0,\"yaw_randl2\":0.0,\"yaw_randl3\":0.0,\"yaw_randl4\":0.0,\"yaw_randl51\":0.0,\"yaw_randl52\":0.0,\"yaw_randl61\":0.0,\"yaw_randl62\":0.0,\"yaw_rando1\":0.0,\"yaw_rando2\":10.0,\"yaw_rando3\":5.0,\"yaw_rando4\":-10.0,\"yaw_rando51\":-5.0,\"yaw_rando52\":-5.0,\"yaw_rando61\":10.0,\"yaw_rando62\":-5.0,\"yaw_randr1\":0.0,\"yaw_randr2\":0.0,\"yaw_randr3\":0.0,\"yaw_randr4\":0.0,\"yaw_randr51\":0.0,\"yaw_randr52\":0.0,\"yaw_randr61\":0.0,\"yaw_randr62\":0.0,\"yaw_switch1\":false,\"yaw_switch2\":true,\"yaw_switch3\":true,\"yaw_switch4\":true,\"yaw_switch51\":true,\"yaw_switch52\":true,\"yaw_switch61\":true,\"yaw_switch62\":true}")
anonteam_0_47.presets.Delay = anonteam_0_47.parse_preset("{\"base_compensate\":false,\"base_pitch\":1.0,\"base_yaw\":1.0,\"breaklc_always\":[],\"breaklc_extra\":[],\"breaklc_ping\":[],\"def_onetapspeed1\":10.0,\"def_onetapspeed2\":20.0,\"def_onetapspeed3\":20.0,\"def_onetapspeed4\":20.0,\"def_onetapspeed51\":20.0,\"def_onetapspeed52\":20.0,\"def_onetapspeed61\":10.0,\"def_onetapspeed62\":20.0,\"def_pitch1\":\"Disabled\",\"def_pitch2\":\"Up\",\"def_pitch3\":\"Up\",\"def_pitch4\":\"Up\",\"def_pitch51\":\"Up\",\"def_pitch52\":\"Up\",\"def_pitch61\":\"Disabled\",\"def_pitch62\":\"Up\",\"def_switch1\":false,\"def_switch2\":true,\"def_switch3\":true,\"def_switch4\":true,\"def_switch51\":true,\"def_switch52\":true,\"def_switch61\":false,\"def_switch62\":true,\"def_yaw1\":1.0,\"def_yaw2\":3.0,\"def_yaw3\":3.0,\"def_yaw4\":3.0,\"def_yaw51\":3.0,\"def_yaw52\":3.0,\"def_yaw61\":1.0,\"def_yaw62\":3.0,\"def_yaw_deg1\":0.0,\"def_yaw_deg2\":0.0,\"def_yaw_deg3\":0.0,\"def_yaw_deg4\":0.0,\"def_yaw_deg51\":0.0,\"def_yaw_deg52\":0.0,\"def_yaw_deg61\":0.0,\"def_yaw_deg62\":0.0,\"desync_freestand1\":1.0,\"desync_freestand2\":1.0,\"desync_freestand3\":1.0,\"desync_freestand4\":1.0,\"desync_freestand51\":1.0,\"desync_freestand52\":1.0,\"desync_freestand61\":1.0,\"desync_freestand62\":1.0,\"desync_l1\":60.0,\"desync_l2\":60.0,\"desync_l3\":60.0,\"desync_l4\":60.0,\"desync_l51\":60.0,\"desync_l52\":60.0,\"desync_l61\":60.0,\"desync_l62\":60.0,\"desync_mod1\":[],\"desync_mod2\":[\"Jitter\"],\"desync_mod3\":[],\"desync_mod4\":[],\"desync_mod51\":[\"Jitter\"],\"desync_mod52\":[\"Jitter\"],\"desync_mod61\":[\"Jitter\"],\"desync_mod62\":[\"Jitter\"],\"desync_r1\":60.0,\"desync_r2\":60.0,\"desync_r3\":60.0,\"desync_r4\":60.0,\"desync_r51\":60.0,\"desync_r52\":60.0,\"desync_r61\":60.0,\"desync_r62\":60.0,\"desync_switch1\":false,\"desync_switch2\":true,\"desync_switch3\":false,\"desync_switch4\":true,\"desync_switch51\":true,\"desync_switch52\":true,\"desync_switch61\":true,\"desync_switch62\":true,\"flick_delay1\":3.0,\"flick_delay2\":3.0,\"flick_delay3\":3.0,\"flick_delay4\":3.0,\"flick_delay51\":3.0,\"flick_delay52\":3.0,\"flick_delay61\":3.0,\"flick_delay62\":3.0,\"flick_yaw1\":0.0,\"flick_yaw2\":0.0,\"flick_yaw3\":0.0,\"flick_yaw4\":0.0,\"flick_yaw51\":0.0,\"flick_yaw52\":0.0,\"flick_yaw61\":0.0,\"flick_yaw62\":0.0,\"frees_dis_def\":true,\"frees_disable\":[],\"frees_pitch\":1.0,\"frees_pitch_custom\":0.0,\"frees_yaw\":1.0,\"frees_yaw_onetap\":0.0,\"legitaa_custom\":0.0,\"legitaa_desync\":false,\"legitaa_freestand\":1.0,\"legitaa_mod\":[],\"legitaa_pitch\":1.0,\"legitaa_switch\":false,\"list\":3.0,\"manual_type\":1.0,\"manual_view\":1.0,\"over_cond2\":false,\"over_cond3\":false,\"over_cond4\":false,\"over_cond51\":false,\"over_cond52\":false,\"over_cond61\":false,\"over_cond62\":false,\"pitch_custom1\":0.0,\"pitch_custom2\":0.0,\"pitch_custom3\":0.0,\"pitch_custom4\":0.0,\"pitch_custom51\":0.0,\"pitch_custom52\":0.0,\"pitch_custom61\":0.0,\"pitch_custom62\":0.0,\"pitch_deg1\":0.0,\"pitch_deg2\":0.0,\"pitch_deg3\":0.0,\"pitch_deg4\":0.0,\"pitch_deg51\":0.0,\"pitch_deg52\":0.0,\"pitch_deg61\":0.0,\"pitch_deg62\":0.0,\"predict_switch\":false,\"preset_list\":4.0,\"roll_def_deg1\":0.0,\"roll_def_deg2\":0.0,\"roll_def_deg3\":0.0,\"roll_def_deg4\":0.0,\"roll_def_deg51\":0.0,\"roll_def_deg52\":0.0,\"roll_def_deg61\":0.0,\"roll_def_deg62\":0.0,\"roll_ext_deg1\":0.0,\"roll_ext_deg2\":0.0,\"roll_ext_deg3\":0.0,\"roll_ext_deg4\":0.0,\"roll_ext_deg51\":0.0,\"roll_ext_deg52\":0.0,\"roll_ext_deg61\":0.0,\"roll_ext_deg62\":0.0,\"roll_ext_pit1\":0.0,\"roll_ext_pit2\":0.0,\"roll_ext_pit3\":0.0,\"roll_ext_pit4\":0.0,\"roll_ext_pit51\":0.0,\"roll_ext_pit52\":0.0,\"roll_ext_pit61\":0.0,\"roll_ext_pit62\":0.0,\"roll_switch1\":false,\"roll_switch2\":false,\"roll_switch3\":false,\"roll_switch4\":false,\"roll_switch51\":false,\"roll_switch52\":false,\"roll_switch61\":false,\"roll_switch62\":false,\"roll_type1\":1.0,\"roll_type2\":1.0,\"roll_type3\":1.0,\"roll_type4\":1.0,\"roll_type51\":1.0,\"roll_type52\":1.0,\"roll_type61\":1.0,\"roll_type62\":1.0,\"safe_def\":false,\"safe_switch\":false,\"xway_counter1\":3.0,\"xway_counter2\":4.0,\"xway_counter3\":5.0,\"xway_counter4\":4.0,\"xway_counter51\":4.0,\"xway_counter52\":4.0,\"xway_counter61\":3.0,\"xway_counter62\":4.0,\"xway_shuffle1\":false,\"xway_shuffle2\":true,\"xway_shuffle3\":true,\"xway_shuffle4\":true,\"xway_shuffle51\":true,\"xway_shuffle52\":true,\"xway_shuffle61\":false,\"xway_shuffle62\":true,\"xway_switch1\":false,\"xway_switch2\":true,\"xway_switch3\":true,\"xway_switch4\":true,\"xway_switch51\":true,\"xway_switch52\":true,\"xway_switch61\":false,\"xway_switch62\":true,\"xway_sync1\":false,\"xway_sync2\":true,\"xway_sync3\":true,\"xway_sync4\":true,\"xway_sync51\":true,\"xway_sync52\":true,\"xway_sync61\":false,\"xway_sync62\":true,\"xwayn_11\":0.0,\"xwayn_12\":0.0,\"xwayn_13\":0.0,\"xwayn_14\":0.0,\"xwayn_15\":0.0,\"xwayn_16\":0.0,\"xwayn_17\":0.0,\"xwayn_21\":-39.0,\"xwayn_22\":26.0,\"xwayn_23\":-32.0,\"xwayn_24\":32.0,\"xwayn_25\":0.0,\"xwayn_26\":0.0,\"xwayn_27\":0.0,\"xwayn_31\":-35.0,\"xwayn_32\":38.0,\"xwayn_33\":-27.0,\"xwayn_34\":45.0,\"xwayn_35\":0.0,\"xwayn_36\":0.0,\"xwayn_37\":0.0,\"xwayn_41\":-35.0,\"xwayn_42\":38.0,\"xwayn_43\":-27.0,\"xwayn_44\":45.0,\"xwayn_45\":0.0,\"xwayn_46\":0.0,\"xwayn_47\":0.0,\"xwayn_511\":-31.0,\"xwayn_512\":44.0,\"xwayn_513\":55.0,\"xwayn_514\":-21.0,\"xwayn_515\":0.0,\"xwayn_516\":0.0,\"xwayn_517\":0.0,\"xwayn_521\":-25.0,\"xwayn_522\":41.0,\"xwayn_523\":53.0,\"xwayn_524\":-29.0,\"xwayn_525\":0.0,\"xwayn_526\":0.0,\"xwayn_527\":0.0,\"xwayn_611\":0.0,\"xwayn_612\":0.0,\"xwayn_613\":0.0,\"xwayn_614\":0.0,\"xwayn_615\":0.0,\"xwayn_616\":0.0,\"xwayn_617\":0.0,\"xwayn_621\":-35.0,\"xwayn_622\":38.0,\"xwayn_623\":-27.0,\"xwayn_624\":45.0,\"xwayn_625\":0.0,\"xwayn_626\":0.0,\"xwayn_627\":0.0,\"yaw_deg1\":0.0,\"yaw_deg2\":0.0,\"yaw_deg3\":0.0,\"yaw_deg4\":0.0,\"yaw_deg51\":0.0,\"yaw_deg52\":0.0,\"yaw_deg61\":-51.0,\"yaw_deg62\":-63.0,\"yaw_delay1\":0.0,\"yaw_delay2\":1.0,\"yaw_delay3\":3.0,\"yaw_delay4\":1.0,\"yaw_delay51\":1.0,\"yaw_delay52\":1.0,\"yaw_delay61\":0.0,\"yaw_delay62\":1.0,\"yaw_l1\":0.0,\"yaw_l2\":0.0,\"yaw_l3\":0.0,\"yaw_l4\":0.0,\"yaw_l51\":0.0,\"yaw_l52\":0.0,\"yaw_l61\":0.0,\"yaw_l62\":0.0,\"yaw_mod_combo1\":1.0,\"yaw_mod_combo2\":3.0,\"yaw_mod_combo3\":3.0,\"yaw_mod_combo4\":3.0,\"yaw_mod_combo51\":3.0,\"yaw_mod_combo52\":3.0,\"yaw_mod_combo61\":2.0,\"yaw_mod_combo62\":2.0,\"yaw_o1\":0.0,\"yaw_o2\":0.0,\"yaw_o3\":0.0,\"yaw_o4\":0.0,\"yaw_o51\":0.0,\"yaw_o52\":0.0,\"yaw_o61\":0.0,\"yaw_o62\":10.0,\"yaw_r1\":0.0,\"yaw_r2\":0.0,\"yaw_r3\":0.0,\"yaw_r4\":0.0,\"yaw_r51\":0.0,\"yaw_r52\":0.0,\"yaw_r61\":0.0,\"yaw_r62\":0.0,\"yaw_randl1\":0.0,\"yaw_randl2\":0.0,\"yaw_randl3\":0.0,\"yaw_randl4\":0.0,\"yaw_randl51\":0.0,\"yaw_randl52\":0.0,\"yaw_randl61\":0.0,\"yaw_randl62\":0.0,\"yaw_rando1\":0.0,\"yaw_rando2\":10.0,\"yaw_rando3\":-10.0,\"yaw_rando4\":-10.0,\"yaw_rando51\":5.0,\"yaw_rando52\":-5.0,\"yaw_rando61\":5.0,\"yaw_rando62\":-10.0,\"yaw_randr1\":0.0,\"yaw_randr2\":0.0,\"yaw_randr3\":0.0,\"yaw_randr4\":0.0,\"yaw_randr51\":0.0,\"yaw_randr52\":0.0,\"yaw_randr61\":0.0,\"yaw_randr62\":0.0,\"yaw_switch1\":false,\"yaw_switch2\":true,\"yaw_switch3\":true,\"yaw_switch4\":true,\"yaw_switch51\":true,\"yaw_switch52\":true,\"yaw_switch61\":true,\"yaw_switch62\":true}")
anonteam_0_47.presets.Roll = anonteam_0_47.parse_preset("{\"base_compensate\":false,\"base_pitch\":1.0,\"base_yaw\":1.0,\"breaklc_always\":[],\"breaklc_extra\":[],\"breaklc_ping\":[],\"def_onetapspeed1\":10.0,\"def_onetapspeed2\":10.0,\"def_onetapspeed3\":10.0,\"def_onetapspeed4\":10.0,\"def_onetapspeed51\":10.0,\"def_onetapspeed52\":10.0,\"def_onetapspeed61\":10.0,\"def_onetapspeed62\":10.0,\"def_pitch1\":\"Random\",\"def_pitch2\":\"Disabled\",\"def_pitch3\":\"Disabled\",\"def_pitch4\":\"Random\",\"def_pitch51\":\"Sway\",\"def_pitch52\":\"Custom\",\"def_pitch61\":\"Disabled\",\"def_pitch62\":\"Up\",\"def_switch1\":false,\"def_switch2\":false,\"def_switch3\":false,\"def_switch4\":false,\"def_switch51\":false,\"def_switch52\":false,\"def_switch61\":false,\"def_switch62\":false,\"def_yaw1\":1.0,\"def_yaw2\":1.0,\"def_yaw3\":1.0,\"def_yaw4\":1.0,\"def_yaw51\":1.0,\"def_yaw52\":1.0,\"def_yaw61\":1.0,\"def_yaw62\":1.0,\"def_yaw_deg1\":89.0,\"def_yaw_deg2\":0.0,\"def_yaw_deg3\":0.0,\"def_yaw_deg4\":89.0,\"def_yaw_deg51\":0.0,\"def_yaw_deg52\":-65.0,\"def_yaw_deg61\":0.0,\"def_yaw_deg62\":0.0,\"desync_freestand1\":1.0,\"desync_freestand2\":1.0,\"desync_freestand3\":1.0,\"desync_freestand4\":1.0,\"desync_freestand51\":1.0,\"desync_freestand52\":1.0,\"desync_freestand61\":1.0,\"desync_freestand62\":1.0,\"desync_l1\":60.0,\"desync_l2\":60.0,\"desync_l3\":60.0,\"desync_l4\":60.0,\"desync_l51\":60.0,\"desync_l52\":60.0,\"desync_l61\":60.0,\"desync_l62\":60.0,\"desync_mod1\":[],\"desync_mod2\":[],\"desync_mod3\":[],\"desync_mod4\":[\"Jitter\"],\"desync_mod51\":[],\"desync_mod52\":[],\"desync_mod61\":[],\"desync_mod62\":[],\"desync_r1\":60.0,\"desync_r2\":60.0,\"desync_r3\":60.0,\"desync_r4\":60.0,\"desync_r51\":60.0,\"desync_r52\":60.0,\"desync_r61\":60.0,\"desync_r62\":60.0,\"desync_switch1\":true,\"desync_switch2\":true,\"desync_switch3\":true,\"desync_switch4\":false,\"desync_switch51\":true,\"desync_switch52\":true,\"desync_switch61\":true,\"desync_switch62\":true,\"flick_delay1\":3.0,\"flick_delay2\":3.0,\"flick_delay3\":3.0,\"flick_delay4\":3.0,\"flick_delay51\":3.0,\"flick_delay52\":3.0,\"flick_delay61\":3.0,\"flick_delay62\":3.0,\"flick_yaw1\":0.0,\"flick_yaw2\":0.0,\"flick_yaw3\":0.0,\"flick_yaw4\":0.0,\"flick_yaw51\":0.0,\"flick_yaw52\":0.0,\"flick_yaw61\":0.0,\"flick_yaw62\":0.0,\"frees_dis_def\":true,\"frees_disable\":[],\"frees_pitch\":2.0,\"frees_pitch_custom\":0.0,\"frees_yaw\":1.0,\"frees_yaw_onetap\":0.0,\"legitaa_custom\":0.0,\"legitaa_desync\":true,\"legitaa_freestand\":2.0,\"legitaa_mod\":[\"Jitter\"],\"legitaa_pitch\":1.0,\"legitaa_switch\":true,\"list\":3.0,\"manual_type\":1.0,\"manual_view\":1.0,\"over_cond2\":false,\"over_cond3\":false,\"over_cond4\":false,\"over_cond51\":false,\"over_cond52\":false,\"over_cond61\":false,\"over_cond62\":false,\"pitch_custom1\":0.0,\"pitch_custom2\":0.0,\"pitch_custom3\":0.0,\"pitch_custom4\":0.0,\"pitch_custom51\":0.0,\"pitch_custom52\":-65.0,\"pitch_custom61\":0.0,\"pitch_custom62\":0.0,\"pitch_deg1\":89.0,\"pitch_deg2\":0.0,\"pitch_deg3\":0.0,\"pitch_deg4\":89.0,\"pitch_deg51\":89.0,\"pitch_deg52\":0.0,\"pitch_deg61\":0.0,\"pitch_deg62\":0.0,\"predict_switch\":false,\"preset_list\":5.0,\"roll_def_deg1\":60.0,\"roll_def_deg2\":65.0,\"roll_def_deg3\":80.0,\"roll_def_deg4\":89.0,\"roll_def_deg51\":115.0,\"roll_def_deg52\":80.0,\"roll_def_deg61\":45.0,\"roll_def_deg62\":45.0,\"roll_ext_deg1\":0.0,\"roll_ext_deg2\":0.0,\"roll_ext_deg3\":0.0,\"roll_ext_deg4\":0.0,\"roll_ext_deg51\":0.0,\"roll_ext_deg52\":0.0,\"roll_ext_deg61\":0.0,\"roll_ext_deg62\":0.0,\"roll_ext_pit1\":0.0,\"roll_ext_pit2\":0.0,\"roll_ext_pit3\":0.0,\"roll_ext_pit4\":0.0,\"roll_ext_pit51\":0.0,\"roll_ext_pit52\":0.0,\"roll_ext_pit61\":0.0,\"roll_ext_pit62\":0.0,\"roll_switch1\":true,\"roll_switch2\":true,\"roll_switch3\":true,\"roll_switch4\":false,\"roll_switch51\":true,\"roll_switch52\":true,\"roll_switch61\":true,\"roll_switch62\":true,\"roll_type1\":1.0,\"roll_type2\":1.0,\"roll_type3\":1.0,\"roll_type4\":1.0,\"roll_type51\":1.0,\"roll_type52\":1.0,\"roll_type61\":1.0,\"roll_type62\":1.0,\"safe_def\":true,\"safe_switch\":false,\"xway_counter1\":3.0,\"xway_counter2\":3.0,\"xway_counter3\":3.0,\"xway_counter4\":3.0,\"xway_counter51\":3.0,\"xway_counter52\":3.0,\"xway_counter61\":3.0,\"xway_counter62\":3.0,\"xway_shuffle1\":false,\"xway_shuffle2\":false,\"xway_shuffle3\":false,\"xway_shuffle4\":false,\"xway_shuffle51\":false,\"xway_shuffle52\":false,\"xway_shuffle61\":false,\"xway_shuffle62\":false,\"xway_switch1\":false,\"xway_switch2\":false,\"xway_switch3\":false,\"xway_switch4\":false,\"xway_switch51\":false,\"xway_switch52\":false,\"xway_switch61\":false,\"xway_switch62\":false,\"xway_sync1\":false,\"xway_sync2\":false,\"xway_sync3\":false,\"xway_sync4\":false,\"xway_sync51\":false,\"xway_sync52\":false,\"xway_sync61\":false,\"xway_sync62\":false,\"xwayn_11\":0.0,\"xwayn_12\":0.0,\"xwayn_13\":0.0,\"xwayn_14\":0.0,\"xwayn_15\":0.0,\"xwayn_16\":0.0,\"xwayn_17\":0.0,\"xwayn_21\":0.0,\"xwayn_22\":0.0,\"xwayn_23\":0.0,\"xwayn_24\":0.0,\"xwayn_25\":0.0,\"xwayn_26\":0.0,\"xwayn_27\":0.0,\"xwayn_31\":0.0,\"xwayn_32\":0.0,\"xwayn_33\":0.0,\"xwayn_34\":0.0,\"xwayn_35\":0.0,\"xwayn_36\":0.0,\"xwayn_37\":0.0,\"xwayn_41\":0.0,\"xwayn_42\":0.0,\"xwayn_43\":0.0,\"xwayn_44\":0.0,\"xwayn_45\":0.0,\"xwayn_46\":0.0,\"xwayn_47\":0.0,\"xwayn_511\":0.0,\"xwayn_512\":0.0,\"xwayn_513\":0.0,\"xwayn_514\":0.0,\"xwayn_515\":0.0,\"xwayn_516\":0.0,\"xwayn_517\":0.0,\"xwayn_521\":0.0,\"xwayn_522\":0.0,\"xwayn_523\":0.0,\"xwayn_524\":0.0,\"xwayn_525\":0.0,\"xwayn_526\":0.0,\"xwayn_527\":0.0,\"xwayn_611\":0.0,\"xwayn_612\":0.0,\"xwayn_613\":0.0,\"xwayn_614\":0.0,\"xwayn_615\":0.0,\"xwayn_616\":0.0,\"xwayn_617\":0.0,\"xwayn_621\":0.0,\"xwayn_622\":0.0,\"xwayn_623\":0.0,\"xwayn_624\":0.0,\"xwayn_625\":0.0,\"xwayn_626\":0.0,\"xwayn_627\":0.0,\"yaw_deg1\":-16.0,\"yaw_deg2\":0.0,\"yaw_deg3\":0.0,\"yaw_deg4\":-80.0,\"yaw_deg51\":-40.0,\"yaw_deg52\":-59.0,\"yaw_deg61\":0.0,\"yaw_deg62\":-62.0,\"yaw_delay1\":0.0,\"yaw_delay2\":0.0,\"yaw_delay3\":0.0,\"yaw_delay4\":1.0,\"yaw_delay51\":0.0,\"yaw_delay52\":0.0,\"yaw_delay61\":0.0,\"yaw_delay62\":0.0,\"yaw_l1\":0.0,\"yaw_l2\":0.0,\"yaw_l3\":0.0,\"yaw_l4\":0.0,\"yaw_l51\":0.0,\"yaw_l52\":0.0,\"yaw_l61\":0.0,\"yaw_l62\":0.0,\"yaw_mod_combo1\":1.0,\"yaw_mod_combo2\":1.0,\"yaw_mod_combo3\":1.0,\"yaw_mod_combo4\":2.0,\"yaw_mod_combo51\":1.0,\"yaw_mod_combo52\":1.0,\"yaw_mod_combo61\":1.0,\"yaw_mod_combo62\":1.0,\"yaw_o1\":29.0,\"yaw_o2\":14.0,\"yaw_o3\":38.0,\"yaw_o4\":-27.0,\"yaw_o51\":50.0,\"yaw_o52\":32.0,\"yaw_o61\":24.0,\"yaw_o62\":24.0,\"yaw_r1\":0.0,\"yaw_r2\":0.0,\"yaw_r3\":0.0,\"yaw_r4\":0.0,\"yaw_r51\":0.0,\"yaw_r52\":0.0,\"yaw_r61\":0.0,\"yaw_r62\":0.0,\"yaw_randl1\":0.0,\"yaw_randl2\":0.0,\"yaw_randl3\":0.0,\"yaw_randl4\":0.0,\"yaw_randl51\":0.0,\"yaw_randl52\":0.0,\"yaw_randl61\":0.0,\"yaw_randl62\":0.0,\"yaw_rando1\":0.0,\"yaw_rando2\":0.0,\"yaw_rando3\":0.0,\"yaw_rando4\":39.0,\"yaw_rando51\":0.0,\"yaw_rando52\":0.0,\"yaw_rando61\":0.0,\"yaw_rando62\":0.0,\"yaw_randr1\":0.0,\"yaw_randr2\":0.0,\"yaw_randr3\":0.0,\"yaw_randr4\":0.0,\"yaw_randr51\":0.0,\"yaw_randr52\":0.0,\"yaw_randr61\":0.0,\"yaw_randr62\":0.0,\"yaw_switch1\":true,\"yaw_switch2\":true,\"yaw_switch3\":true,\"yaw_switch4\":true,\"yaw_switch51\":true,\"yaw_switch52\":true,\"yaw_switch61\":true,\"yaw_switch62\":true}")
anonteam_0_47.presets.Skitter = anonteam_0_47.parse_preset("{\"base_compensate\":false,\"base_pitch\":1.0,\"base_yaw\":1.0,\"breaklc_always\":[\"Standing\",\"Slow Walking\",\"Crouching\",\"In Air\"],\"breaklc_extra\":[],\"breaklc_ping\":[],\"def_onetapspeed1\":10.0,\"def_onetapspeed2\":10.0,\"def_onetapspeed3\":10.0,\"def_onetapspeed4\":10.0,\"def_onetapspeed51\":10.0,\"def_onetapspeed52\":10.0,\"def_onetapspeed61\":10.0,\"def_onetapspeed62\":10.0,\"def_pitch1\":\"Random\",\"def_pitch2\":\"Disabled\",\"def_pitch3\":\"Disabled\",\"def_pitch4\":\"Random\",\"def_pitch51\":\"Sway\",\"def_pitch52\":\"Custom\",\"def_pitch61\":\"Disabled\",\"def_pitch62\":\"Up\",\"def_switch1\":true,\"def_switch2\":false,\"def_switch3\":false,\"def_switch4\":true,\"def_switch51\":true,\"def_switch52\":true,\"def_switch61\":false,\"def_switch62\":true,\"def_yaw1\":1.0,\"def_yaw2\":1.0,\"def_yaw3\":1.0,\"def_yaw4\":1.0,\"def_yaw51\":1.0,\"def_yaw52\":1.0,\"def_yaw61\":1.0,\"def_yaw62\":1.0,\"def_yaw_deg1\":89.0,\"def_yaw_deg2\":0.0,\"def_yaw_deg3\":0.0,\"def_yaw_deg4\":89.0,\"def_yaw_deg51\":0.0,\"def_yaw_deg52\":-65.0,\"def_yaw_deg61\":0.0,\"def_yaw_deg62\":0.0,\"desync_freestand1\":1.0,\"desync_freestand2\":1.0,\"desync_freestand3\":1.0,\"desync_freestand4\":1.0,\"desync_freestand51\":1.0,\"desync_freestand52\":1.0,\"desync_freestand61\":1.0,\"desync_freestand62\":1.0,\"desync_l1\":60.0,\"desync_l2\":60.0,\"desync_l3\":60.0,\"desync_l4\":60.0,\"desync_l51\":60.0,\"desync_l52\":60.0,\"desync_l61\":60.0,\"desync_l62\":60.0,\"desync_mod1\":[\"Randomize Jitter\"],\"desync_mod2\":[],\"desync_mod3\":[],\"desync_mod4\":[\"Jitter\"],\"desync_mod51\":[\"Jitter\"],\"desync_mod52\":[],\"desync_mod61\":[],\"desync_mod62\":[],\"desync_r1\":60.0,\"desync_r2\":60.0,\"desync_r3\":60.0,\"desync_r4\":60.0,\"desync_r51\":60.0,\"desync_r52\":60.0,\"desync_r61\":60.0,\"desync_r62\":60.0,\"desync_switch1\":true,\"desync_switch2\":false,\"desync_switch3\":false,\"desync_switch4\":false,\"desync_switch51\":true,\"desync_switch52\":false,\"desync_switch61\":false,\"desync_switch62\":false,\"flick_delay1\":3.0,\"flick_delay2\":3.0,\"flick_delay3\":3.0,\"flick_delay4\":3.0,\"flick_delay51\":3.0,\"flick_delay52\":3.0,\"flick_delay61\":3.0,\"flick_delay62\":3.0,\"flick_yaw1\":0.0,\"flick_yaw2\":0.0,\"flick_yaw3\":0.0,\"flick_yaw4\":0.0,\"flick_yaw51\":0.0,\"flick_yaw52\":0.0,\"flick_yaw61\":0.0,\"flick_yaw62\":0.0,\"frees_dis_def\":true,\"frees_disable\":[],\"frees_pitch\":2.0,\"frees_pitch_custom\":0.0,\"frees_yaw\":1.0,\"frees_yaw_onetap\":0.0,\"legitaa_custom\":0.0,\"legitaa_desync\":true,\"legitaa_freestand\":2.0,\"legitaa_mod\":[\"Jitter\"],\"legitaa_pitch\":1.0,\"legitaa_switch\":true,\"list\":3.0,\"manual_type\":1.0,\"manual_view\":1.0,\"over_cond2\":true,\"over_cond3\":true,\"over_cond4\":false,\"over_cond51\":false,\"over_cond52\":false,\"over_cond61\":true,\"over_cond62\":true,\"pitch_custom1\":0.0,\"pitch_custom2\":0.0,\"pitch_custom3\":0.0,\"pitch_custom4\":0.0,\"pitch_custom51\":0.0,\"pitch_custom52\":-65.0,\"pitch_custom61\":0.0,\"pitch_custom62\":0.0,\"pitch_deg1\":89.0,\"pitch_deg2\":0.0,\"pitch_deg3\":0.0,\"pitch_deg4\":89.0,\"pitch_deg51\":89.0,\"pitch_deg52\":0.0,\"pitch_deg61\":0.0,\"pitch_deg62\":0.0,\"predict_switch\":true,\"preset_list\":3.0,\"roll_def_deg1\":0.0,\"roll_def_deg2\":0.0,\"roll_def_deg3\":0.0,\"roll_def_deg4\":0.0,\"roll_def_deg51\":0.0,\"roll_def_deg52\":0.0,\"roll_def_deg61\":0.0,\"roll_def_deg62\":0.0,\"roll_ext_deg1\":0.0,\"roll_ext_deg2\":0.0,\"roll_ext_deg3\":0.0,\"roll_ext_deg4\":0.0,\"roll_ext_deg51\":0.0,\"roll_ext_deg52\":0.0,\"roll_ext_deg61\":0.0,\"roll_ext_deg62\":0.0,\"roll_ext_pit1\":0.0,\"roll_ext_pit2\":0.0,\"roll_ext_pit3\":0.0,\"roll_ext_pit4\":0.0,\"roll_ext_pit51\":0.0,\"roll_ext_pit52\":0.0,\"roll_ext_pit61\":0.0,\"roll_ext_pit62\":0.0,\"roll_switch1\":false,\"roll_switch2\":false,\"roll_switch3\":false,\"roll_switch4\":false,\"roll_switch51\":false,\"roll_switch52\":false,\"roll_switch61\":false,\"roll_switch62\":false,\"roll_type1\":1.0,\"roll_type2\":1.0,\"roll_type3\":1.0,\"roll_type4\":1.0,\"roll_type51\":1.0,\"roll_type52\":1.0,\"roll_type61\":1.0,\"roll_type62\":1.0,\"safe_def\":true,\"safe_switch\":true,\"xway_counter1\":3.0,\"xway_counter2\":3.0,\"xway_counter3\":3.0,\"xway_counter4\":3.0,\"xway_counter51\":3.0,\"xway_counter52\":3.0,\"xway_counter61\":3.0,\"xway_counter62\":3.0,\"xway_shuffle1\":false,\"xway_shuffle2\":false,\"xway_shuffle3\":false,\"xway_shuffle4\":false,\"xway_shuffle51\":false,\"xway_shuffle52\":false,\"xway_shuffle61\":false,\"xway_shuffle62\":false,\"xway_switch1\":false,\"xway_switch2\":false,\"xway_switch3\":false,\"xway_switch4\":false,\"xway_switch51\":false,\"xway_switch52\":false,\"xway_switch61\":false,\"xway_switch62\":false,\"xway_sync1\":false,\"xway_sync2\":false,\"xway_sync3\":false,\"xway_sync4\":false,\"xway_sync51\":false,\"xway_sync52\":false,\"xway_sync61\":false,\"xway_sync62\":false,\"xwayn_11\":0.0,\"xwayn_12\":0.0,\"xwayn_13\":0.0,\"xwayn_14\":0.0,\"xwayn_15\":0.0,\"xwayn_16\":0.0,\"xwayn_17\":0.0,\"xwayn_21\":0.0,\"xwayn_22\":0.0,\"xwayn_23\":0.0,\"xwayn_24\":0.0,\"xwayn_25\":0.0,\"xwayn_26\":0.0,\"xwayn_27\":0.0,\"xwayn_31\":0.0,\"xwayn_32\":0.0,\"xwayn_33\":0.0,\"xwayn_34\":0.0,\"xwayn_35\":0.0,\"xwayn_36\":0.0,\"xwayn_37\":0.0,\"xwayn_41\":0.0,\"xwayn_42\":0.0,\"xwayn_43\":0.0,\"xwayn_44\":0.0,\"xwayn_45\":0.0,\"xwayn_46\":0.0,\"xwayn_47\":0.0,\"xwayn_511\":0.0,\"xwayn_512\":0.0,\"xwayn_513\":0.0,\"xwayn_514\":0.0,\"xwayn_515\":0.0,\"xwayn_516\":0.0,\"xwayn_517\":0.0,\"xwayn_521\":0.0,\"xwayn_522\":0.0,\"xwayn_523\":0.0,\"xwayn_524\":0.0,\"xwayn_525\":0.0,\"xwayn_526\":0.0,\"xwayn_527\":0.0,\"xwayn_611\":0.0,\"xwayn_612\":0.0,\"xwayn_613\":0.0,\"xwayn_614\":0.0,\"xwayn_615\":0.0,\"xwayn_616\":0.0,\"xwayn_617\":0.0,\"xwayn_621\":0.0,\"xwayn_622\":0.0,\"xwayn_623\":0.0,\"xwayn_624\":0.0,\"xwayn_625\":0.0,\"xwayn_626\":0.0,\"xwayn_627\":0.0,\"yaw_deg1\":-16.0,\"yaw_deg2\":0.0,\"yaw_deg3\":0.0,\"yaw_deg4\":-80.0,\"yaw_deg51\":-40.0,\"yaw_deg52\":-59.0,\"yaw_deg61\":0.0,\"yaw_deg62\":-62.0,\"yaw_delay1\":1.0,\"yaw_delay2\":0.0,\"yaw_delay3\":0.0,\"yaw_delay4\":2.0,\"yaw_delay51\":1.0,\"yaw_delay52\":2.0,\"yaw_delay61\":0.0,\"yaw_delay62\":0.0,\"yaw_l1\":0.0,\"yaw_l2\":0.0,\"yaw_l3\":0.0,\"yaw_l4\":0.0,\"yaw_l51\":0.0,\"yaw_l52\":0.0,\"yaw_l61\":0.0,\"yaw_l62\":0.0,\"yaw_mod_combo1\":7.0,\"yaw_mod_combo2\":1.0,\"yaw_mod_combo3\":1.0,\"yaw_mod_combo4\":2.0,\"yaw_mod_combo51\":2.0,\"yaw_mod_combo52\":2.0,\"yaw_mod_combo61\":1.0,\"yaw_mod_combo62\":3.0,\"yaw_o1\":0.0,\"yaw_o2\":0.0,\"yaw_o3\":0.0,\"yaw_o4\":22.0,\"yaw_o51\":0.0,\"yaw_o52\":0.0,\"yaw_o61\":0.0,\"yaw_o62\":0.0,\"yaw_r1\":0.0,\"yaw_r2\":0.0,\"yaw_r3\":0.0,\"yaw_r4\":0.0,\"yaw_r51\":0.0,\"yaw_r52\":0.0,\"yaw_r61\":0.0,\"yaw_r62\":0.0,\"yaw_randl1\":0.0,\"yaw_randl2\":0.0,\"yaw_randl3\":0.0,\"yaw_randl4\":0.0,\"yaw_randl51\":0.0,\"yaw_randl52\":0.0,\"yaw_randl61\":0.0,\"yaw_randl62\":0.0,\"yaw_rando1\":-24.0,\"yaw_rando2\":0.0,\"yaw_rando3\":0.0,\"yaw_rando4\":-24.0,\"yaw_rando51\":0.0,\"yaw_rando52\":0.0,\"yaw_rando61\":0.0,\"yaw_rando62\":0.0,\"yaw_randr1\":0.0,\"yaw_randr2\":0.0,\"yaw_randr3\":0.0,\"yaw_randr4\":0.0,\"yaw_randr51\":0.0,\"yaw_randr52\":0.0,\"yaw_randr61\":0.0,\"yaw_randr62\":0.0,\"yaw_switch1\":true,\"yaw_switch2\":false,\"yaw_switch3\":false,\"yaw_switch4\":true,\"yaw_switch51\":true,\"yaw_switch52\":true,\"yaw_switch61\":false,\"yaw_switch62\":true}")

anonteam_0_47.ui_tables.antiaim.preset_list:set_callback(function()
	-- function 200
	anonteam_0_47.ui_tables.antiaim.preset_list:update_active_config()
end, true)

anonteam_0_49.builder = anonteam_0_47.create_group(" Anti Aim \a{Switch}\xEF\x83\x9A \a{Link Active}Builder", 2)

anonteam_0_49.builder:visible_condition(function()
	-- function 201
	return anonteam_0_47.ui_tables.antiaim.list.value == 3
end)
anonteam_0_49.builder:disabled_condition(function()
	-- function 202
	return anonteam_0_47.ui_tables.config.antiaim_owner.value ~= "" and anonteam_0_47.ui_tables.config.antiaim_owner.value ~= common.get_username()
end)
anonteam_0_49.builder:combo("unused", "condition_list", "\a{Link Active}\xEF\x86\x83\t\aDEFAULTCondition", {
	"Default",
	"Standing",
	"Slow Walking",
	"Moving",
	"Crouching",
	"In Air"
})

anonteam_0_47.ui_tables.unused.condition_list.table_to_copy = {
	"yaw_switch",
	"yaw_delay",
	"yaw_o",
	"yaw_l",
	"yaw_r",
	"yaw_rando",
	"yaw_randl",
	"yaw_randr",
	"yaw_mod_combo",
	"yaw_deg",
	"xway_counter",
	"xway_shuffle",
	"xway_sync",
	"xway_switch",
	"xwayn_",
	"flick_delay",
	"flick_yaw",
	"desync_switch",
	"desync_freestand",
	"desync_l",
	"desync_r",
	"desync_mod",
	"def_switch",
	"def_pitch",
	"pitch_deg",
	"pitch_custom",
	"def_yaw",
	"def_yaw_deg",
	"def_onetapspeed",
	"roll_switch",
	"roll_type",
	"roll_def_deg",
	"roll_ext_pit",
	"roll_ext_deg"
}

anonteam_0_47.ui_tables.unused.condition_list:button("copy_cond", "      \xEF\xA1\xBF      ", function()
	-- function 203
	local anonteam_203_0 = {}
	local anonteam_203_1 = anonteam_0_47.ui_tables.unused.condition_list.value
	local anonteam_203_2 = anonteam_0_47.ui_tables.unused.condition_list.table_to_copy

	if anonteam_203_1 > 4 then
		anonteam_203_1 = anonteam_203_1 .. anonteam_0_47.ui_tables.unused["condition_add" .. anonteam_203_1].value
	end

	for iter_203_0 = 1, #anonteam_203_2 do
		local anonteam_203_3 = anonteam_203_2[iter_203_0]

		if anonteam_203_3 == "xwayn_" then
			for iter_203_1 = 1, 7 do
				anonteam_203_0[anonteam_203_3 .. iter_203_1] = anonteam_0_47.ui_tables.antiaim[anonteam_203_3 .. anonteam_203_1 .. iter_203_1].value_for_ref
			end
		else
			anonteam_203_0[anonteam_203_3] = anonteam_0_47.ui_tables.antiaim[anonteam_203_3 .. anonteam_203_1].value_for_ref
		end
	end

	local anonteam_203_4 = "ext.condition = " .. anonteam_0_45.encode(json.stringify(anonteam_203_0)) .. "<end>"

	anonteam_0_44.set_clipboard_text(anonteam_203_4, #anonteam_203_4)
	common.add_notify("Extension", "Condition copied")
end):tooltip("Copy to clipboard current condition settings.")
anonteam_0_47.ui_tables.unused.condition_list:button("paste_cond", "      \xEF\xA1\x96      ", function()
	-- function 204
	local anonteam_204_0 = anonteam_0_44.get_clipboard_text()
	local anonteam_204_1 = string.match(anonteam_204_0, "(ext%.condition%s=%s.-<end>)")

	if not anonteam_204_1 or #anonteam_204_1 == 0 then
		common.add_notify("Extension", "Condition read failed")

		return
	end

	local anonteam_204_2, anonteam_204_3 = anonteam_204_1:find("ext.condition = ")

	if not anonteam_204_3 then
		common.add_notify("Extension", "Condition read failed")

		return
	end

	local anonteam_204_4 = anonteam_204_1:find("<end>")

	if not anonteam_204_4 then
		common.add_notify("Extension", "Condition read failed")

		return
	end

	local anonteam_204_5 = anonteam_204_1:sub(anonteam_204_3, anonteam_204_4 - 1)
	local anonteam_204_6, anonteam_204_7 = anonteam_0_45.pcall_func(anonteam_204_5)

	if not anonteam_204_6 then
		common.add_notify("Extension", "Condition decode failed")

		return
	end

	local anonteam_204_8 = anonteam_0_47.ui_tables.unused.condition_list.value

	if anonteam_204_8 > 4 then
		anonteam_204_8 = anonteam_204_8 .. anonteam_0_47.ui_tables.unused["condition_add" .. anonteam_204_8].value
	end

	for iter_204_0, iter_204_1 in pairs(anonteam_204_7) do
		local anonteam_204_9, anonteam_204_10 = iter_204_0:find("xwayn_")

		if anonteam_204_10 then
			local anonteam_204_11 = iter_204_0:sub(#iter_204_0, #iter_204_0)

			anonteam_0_47.ui_tables.antiaim[iter_204_0:sub(0, #iter_204_0 - 1) .. anonteam_204_8 .. anonteam_204_11].ref:set(iter_204_1)
		else
			anonteam_0_47.ui_tables.antiaim[iter_204_0 .. anonteam_204_8].ref:set(iter_204_1)
		end
	end
end, true):tooltip("Paste condition settings from clipboard.")

function anonteam_0_49.builder.create_ui_condition(arg_205_0, arg_205_1)
	-- function 205
	if arg_205_1 ~= 1 then
		anonteam_0_49.builder:switch("antiaim", "over_cond" .. arg_205_1, "Use Default Condition", true, function()
			-- function 206
			return anonteam_0_47.ui_tables.unused.condition_list.value == arg_205_1
		end)
	else
		anonteam_0_49.builder:label("antiaim", "over_label" .. arg_205_1, "    ", function()
			-- function 207
			return anonteam_0_47.ui_tables.unused.condition_list.value == arg_205_1
		end)
	end

	local anonteam_205_0 = anonteam_0_47.create_group(arg_205_0, 2)

	anonteam_205_0:visible_condition(function()
		-- function 208
		return anonteam_0_47.ui_tables.unused.condition_list.value == arg_205_1 and anonteam_0_47.ui_tables.antiaim.list.value == 3
	end)
	anonteam_0_47.ui_tables.antiaim.list:set_callback(function()
		-- function 209
		anonteam_205_0:update()
	end)

	if arg_205_1 ~= 1 then
		anonteam_205_0:disabled_condition(function()
			-- function 210
			return anonteam_0_47.ui_tables.antiaim["over_cond" .. arg_205_1].value or anonteam_0_47.ui_tables.config.antiaim_owner.value ~= "" and anonteam_0_47.ui_tables.config.antiaim_owner.value ~= common.get_username()
		end)
		anonteam_0_47.ui_tables.antiaim["over_cond" .. arg_205_1]:set_callback(function()
			-- function 211
			anonteam_205_0:update()
		end)
	else
		anonteam_205_0:disabled_condition(function()
			-- function 212
			return anonteam_0_47.ui_tables.config.antiaim_owner.value ~= "" and anonteam_0_47.ui_tables.config.antiaim_owner.value ~= common.get_username()
		end)
	end

	anonteam_0_47.ui_tables.unused.condition_list:set_callback(function()
		-- function 213
		anonteam_205_0:update()
	end, true)

	local anonteam_205_1 = anonteam_205_0:switch("antiaim", "yaw_switch" .. arg_205_1, "Yaw", false, nil, " \a{Switch}\xEE\x95\x91\t\aDEFAULT", " \a{Link Active}\xEE\x95\x91\t\aDEFAULT")

	anonteam_205_1:slider("yaw_delay" .. arg_205_1, "\xE2\x80\x8A\xE2\x80\x8A \a{Link Active}\xEE\x8A\x9E\t\xE2\x80\x8A\aDEFAULTDelay Tick", 0, 13, 0, nil, function(arg_214_0)
		-- function 214
		if arg_214_0 == 0 then
			return "Off"
		end

		return arg_214_0 .. "t"
	end)
	anonteam_205_1:label("-", " \a{Link Active}\xE2\x80\x8A\xEF\x89\x8E\t\aDEFAULTAdd")
	anonteam_205_1:slider("yaw_o" .. arg_205_1, "\xE2\x80\x8A\xE2\x80\x8A\xE2\x80\x8A\a4a4a4aFF\xEF\x87\xA0\t  \aDEFAULTShared", -180, 180, 0)
	anonteam_205_1:slider("yaw_l" .. arg_205_1, "\xE2\x80\x8A  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\xE2\x80\x8A \aDEFAULTLeft", -180, 180, 0)
	anonteam_205_1:slider("yaw_r" .. arg_205_1, "\xE2\x80\x8A  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\xE2\x80\x8A \aDEFAULTRight", -180, 180, 0)
	anonteam_205_1:label("-", " \a{Link Active}\xEE\x8F\x8E\t\aDEFAULTRandom")
	anonteam_205_1:slider("yaw_rando" .. arg_205_1, "\xE2\x80\x8A\xE2\x80\x8A\xE2\x80\x8A\a4a4a4aFF\xEF\x87\xA0\t \aDEFAULTShared", -180, 180, 0)
	anonteam_205_1:slider("yaw_randl" .. arg_205_1, "\xE2\x80\x8A  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\xE2\x80\x8A\aDEFAULTLeft", -180, 180, 0)
	anonteam_205_1:slider("yaw_randr" .. arg_205_1, "\xE2\x80\x8A  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\xE2\x80\x8A\aDEFAULTRight", -180, 180, 0)

	local anonteam_205_2 = anonteam_205_0:combo("antiaim", "yaw_mod_combo" .. arg_205_1, " \a4a4a4aFF  \xEE\x8F\x96  \xE2\x80\x8A\xE2\x80\x8A\aDEFAULTModifier", {
		"Disabled",
		"Center",
		"Way",
		"Random",
		"Spin",
		"Fake Flick",
		"Skitter"
	}, "Disabled", function()
		-- function 215
		return anonteam_205_1.value
	end)

	anonteam_205_2:slider("yaw_deg" .. arg_205_1, " \a{Link Active}\xEE\x89\x92\t\aDEFAULTDegree", -180, 180, 0, nil, nil, function()
		-- function 216
		return anonteam_205_2.str_value ~= "Disabled" and anonteam_205_2.str_value ~= "Fake Flick"
	end):set_disable_function(function()
		-- function 217
		return anonteam_205_2.str_value == "Way" and anonteam_0_47.ui_tables.antiaim["xway_switch" .. arg_205_1] and anonteam_0_47.ui_tables.antiaim["xway_switch" .. arg_205_1].value
	end)
	anonteam_205_2:slider("xway_counter" .. arg_205_1, " \a{Link Active}\xEE\x89\x94\t\aDEFAULTWay", 3, 7, 3, nil, function(arg_218_0)
		-- function 218
		return arg_218_0 .. "-Way"
	end, function()
		-- function 219
		return anonteam_205_2.str_value == "Way"
	end)
	anonteam_205_2:switch("xway_shuffle" .. arg_205_1, "Shuffle", false, function()
		-- function 220
		return anonteam_205_2.str_value == "Way"
	end, nil, " \a{Switch}\xEF\x81\xB4\t\aDEFAULT", " \a{Link Active}\xEF\x81\xB4\t\aDEFAULT")
	anonteam_205_2:switch("xway_sync" .. arg_205_1, "Sync Desync", false, function()
		-- function 221
		return anonteam_205_2.str_value == "Way" or anonteam_205_2.str_value == "Skitter"
	end, nil, " \a{Switch}\xEF\x8B\xB1\t\aDEFAULT", " \a{Link Active}\xEF\x8B\xB1\t\aDEFAULT")
	anonteam_205_2:switch("xway_switch" .. arg_205_1, "Custom", false, function()
		-- function 222
		return anonteam_205_2.str_value == "Way"
	end, nil, " \a{Switch}\xEF\x97\xBD\t\aDEFAULT", " \a{Link Active}\xEF\x97\xBD\t\aDEFAULT")

	for iter_205_0 = 1, 7 do
		anonteam_205_2:slider("xwayn_" .. arg_205_1 .. iter_205_0, "\a4a4a4aFF\xEF\x84\x84\t\a{Link Active}" .. iter_205_0 .. "\t\a4a4a4aFF\xEF\x84\x85\t\aDEFAULT", -180, 180, 0, nil, nil, function()
			-- function 223
			return anonteam_0_47.ui_tables.antiaim["xway_switch" .. arg_205_1].value and anonteam_205_2.str_value == "Way" and anonteam_0_47.ui_tables.antiaim["xway_counter" .. arg_205_1].value >= iter_205_0
		end)
	end

	anonteam_205_2:slider("flick_delay" .. arg_205_1, " \a{Link Active}\xEE\x8A\x9E\t\aDEFAULTDelay", 1, 10, 3, 0.1, function(arg_224_0)
		-- function 224
		return arg_224_0 / 10 .. "s"
	end, function()
		-- function 225
		return anonteam_205_2.str_value == "Fake Flick"
	end)
	anonteam_205_2:slider("flick_yaw" .. arg_205_1, " \a{Link Active}\xEF\x80\x9E\t\aDEFAULTYaw", -180, 180, 0, nil, nil, function()
		-- function 226
		return anonteam_205_2.str_value == "Fake Flick"
	end)

	local anonteam_205_3 = anonteam_205_0:switch("antiaim", "desync_switch" .. arg_205_1, "Desync", false, nil, "  \a{Switch}\xEE\x95\x88\t  \aDEFAULT", "  \a{Link Active}\xEE\x95\x88\t  \aDEFAULT")

	anonteam_205_3:combo("desync_freestand" .. arg_205_1, "\a{Link Active}\xE2\x80\x8A\xEE\x93\xB6\t\aDEFAULTFreestand", {
		"Disabled",
		"Peek Fake",
		"Peek Real"
	}, "Disabled")
	anonteam_205_3:label("-", "\a{Link Active}\xE2\x80\x8A\xEE\x89\x93\t\aDEFAULTLimits")
	anonteam_205_3:slider("desync_l" .. arg_205_1, "  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\aDEFAULTLeft", 0, 60, 60)
	anonteam_205_3:slider("desync_r" .. arg_205_1, "  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\aDEFAULTRight", 0, 60, 60)
	anonteam_205_0:selectable("antiaim", "desync_mod" .. arg_205_1, " \a4a4a4aFF  \xEE\x8F\x96  \xE2\x80\x8A\xE2\x80\x8A\aDEFAULTModifier", {
		"Jitter",
		"Randomize Jitter"
	}, "", function()
		-- function 227
		return anonteam_205_3.value
	end)

	local anonteam_205_4 = anonteam_205_0:switch("antiaim", "def_switch" .. arg_205_1, "Defensive AA", false, nil, " \a{Switch}\xEE\x80\xA2\t\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT", " \a{Link Active}\xEE\x80\xA2\t\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT")

	anonteam_205_4:combo("def_pitch" .. arg_205_1, "\a4a4a4aFF\xEF\x84\x85\t\aDEFAULTPitch", {
		"Disabled",
		"Down",
		"Up",
		"Random",
		"Sway",
		"Custom"
	}, "Disabled")
	anonteam_205_4:slider("pitch_deg" .. arg_205_1, " \a{Link Active}\xEE\x89\x92\t\aDEFAULTDegree", 0, 89, 0, nil, nil, function()
		-- function 228
		return anonteam_0_47.ui_tables.antiaim["def_pitch" .. arg_205_1].value == 4
	end)
	anonteam_205_4:slider("pitch_custom" .. arg_205_1, " \a{Link Active}\xEE\x89\x92\t\aDEFAULTDegree ", -89, 89, 0, nil, nil, function()
		-- function 229
		return anonteam_0_47.ui_tables.antiaim["def_pitch" .. arg_205_1].value == 6
	end)
	anonteam_205_4:combo("def_yaw" .. arg_205_1, "\a4a4a4aFF\xEF\x84\x85\t\aDEFAULTYaw", {
		"Default",
		"Sideways",
		"Extension",
		"Random",
		"Spin",
		"Custom"
	}, "Disabled")
	anonteam_205_4:slider("def_yaw_deg" .. arg_205_1, " \a{Link Active}\xEE\x89\x92\t\aDEFAULTDegree", -180, 180, 0, nil, nil, function()
		-- function 230
		return anonteam_0_47.ui_tables.antiaim["def_yaw" .. arg_205_1].value >= 4
	end)
	anonteam_205_4:slider("def_onetapspeed" .. arg_205_1, " \a{Link Active}\xEE\x89\x92\t\aDEFAULTSpeed", 0, 20, 10, nil, nil, function()
		-- function 231
		return anonteam_0_47.ui_tables.antiaim["def_yaw" .. arg_205_1].value == 3
	end)

	local anonteam_205_5 = anonteam_205_0:switch("antiaim", "roll_switch" .. arg_205_1, "Roll", false, nil, " \a{Switch}\xEF\x9C\x8C\t\xE2\x80\x8A\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT", " \a{Link Active}\xEF\x9C\x8C\t\xE2\x80\x8A\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT")
	local anonteam_205_6 = anonteam_205_5:combo("roll_type" .. arg_205_1, " \a{Link Active} \xEF\x83\x89\t\aDEFAULTType", {
		"Default",
		"Pitch Extended"
	}, "Default")

	anonteam_205_5:slider("roll_def_deg" .. arg_205_1, "   \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\aDEFAULTDegree", -180, 180, 0, nil, nil, function()
		-- function 232
		return anonteam_205_6.value == 1
	end)
	anonteam_205_5:slider("roll_ext_pit" .. arg_205_1, "   \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\aDEFAULTPitch", -180, 180, 0, nil, nil, function()
		-- function 233
		return anonteam_205_6.value == 2
	end)
	anonteam_205_5:slider("roll_ext_deg" .. arg_205_1, "   \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\aDEFAULTDegree", -180, 180, 0, nil, nil, function()
		-- function 234
		return anonteam_205_6.value == 2
	end)
end

function anonteam_0_49.builder.create_additional_ui_condition(arg_235_0, arg_235_1, arg_235_2)
	-- function 235
	anonteam_0_49.builder:switch("antiaim", "over_cond" .. arg_235_1 .. arg_235_2, "Use Default Condition", true, function()
		-- function 236
		return anonteam_0_47.ui_tables.unused.condition_list.value == arg_235_1 and anonteam_0_47.ui_tables.unused["condition_add" .. arg_235_1].value == arg_235_2
	end)

	if arg_235_1 == 1 then
		anonteam_0_47.ui_tables.antiaim["over_cond" .. arg_235_1 .. arg_235_2]:set_callback(function()
			-- function 237
			anonteam_0_47.ui_tables.antiaim["over_cond" .. arg_235_1 .. arg_235_2]:disabled(true)
		end, true)
	end

	local anonteam_235_0 = anonteam_0_47.create_group(arg_235_0, 2)

	anonteam_235_0:visible_condition(function()
		-- function 238
		return anonteam_0_47.ui_tables.antiaim.list.value == 3 and anonteam_0_47.ui_tables.unused.condition_list.value == arg_235_1 and anonteam_0_47.ui_tables.unused["condition_add" .. arg_235_1].value == arg_235_2
	end)
	anonteam_235_0:disabled_condition(function()
		-- function 239
		return anonteam_0_47.ui_tables.config.antiaim_owner.value ~= "" and anonteam_0_47.ui_tables.config.antiaim_owner.value ~= common.get_username()
	end)
	anonteam_0_47.ui_tables.antiaim.list:set_callback(function()
		-- function 240
		anonteam_235_0:update()
	end)
	anonteam_0_47.ui_tables.unused["condition_add" .. arg_235_1]:set_callback(function()
		-- function 241
		anonteam_235_0:update()
	end)

	if arg_235_1 ~= 1 then
		anonteam_235_0:disabled_condition(function()
			-- function 242
			return anonteam_0_47.ui_tables.antiaim["over_cond" .. arg_235_1 .. arg_235_2].value or anonteam_0_47.ui_tables.config.antiaim_owner.value ~= "" and anonteam_0_47.ui_tables.config.antiaim_owner.value ~= common.get_username()
		end)
		anonteam_0_47.ui_tables.antiaim["over_cond" .. arg_235_1 .. arg_235_2]:set_callback(function()
			-- function 243
			anonteam_235_0:update()
		end)
	end

	anonteam_0_47.ui_tables.unused.condition_list:set_callback(function()
		-- function 244
		anonteam_235_0:update()
	end, true)

	local anonteam_235_1 = anonteam_235_0:switch("antiaim", "yaw_switch" .. arg_235_1 .. arg_235_2, "Yaw", false, nil, " \a{Switch}\xEE\x95\x91\t\aDEFAULT", " \a{Link Active}\xEE\x95\x91\t\aDEFAULT")

	anonteam_235_1:slider("yaw_delay" .. arg_235_1 .. arg_235_2, "\xE2\x80\x8A\xE2\x80\x8A \a{Link Active}\xEE\x8A\x9E\t\xE2\x80\x8A\aDEFAULTDelay Tick", 0, 13, 0, nil, function(arg_245_0)
		-- function 245
		if arg_245_0 == 0 then
			return "Off"
		end

		return arg_245_0 .. "t"
	end)
	anonteam_235_1:label("-", " \a{Link Active}\xE2\x80\x8A\xEF\x89\x8E\t\aDEFAULTAdd")
	anonteam_235_1:slider("yaw_o" .. arg_235_1 .. arg_235_2, "\xE2\x80\x8A\xE2\x80\x8A\xE2\x80\x8A\a4a4a4aFF\xEF\x87\xA0\t  \aDEFAULTShared", -180, 180, 0)
	anonteam_235_1:slider("yaw_l" .. arg_235_1 .. arg_235_2, "\xE2\x80\x8A  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\xE2\x80\x8A \aDEFAULTLeft", -180, 180, 0)
	anonteam_235_1:slider("yaw_r" .. arg_235_1 .. arg_235_2, "\xE2\x80\x8A  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\xE2\x80\x8A \aDEFAULTRight", -180, 180, 0)
	anonteam_235_1:label("-", " \a{Link Active}\xEE\x8F\x8E\t\aDEFAULTRandom")
	anonteam_235_1:slider("yaw_rando" .. arg_235_1 .. arg_235_2, "\xE2\x80\x8A\xE2\x80\x8A\xE2\x80\x8A\a4a4a4aFF\xEF\x87\xA0\t \aDEFAULTShared", -180, 180, 0)
	anonteam_235_1:slider("yaw_randl" .. arg_235_1 .. arg_235_2, "\xE2\x80\x8A  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\xE2\x80\x8A\aDEFAULTLeft", -180, 180, 0)
	anonteam_235_1:slider("yaw_randr" .. arg_235_1 .. arg_235_2, "\xE2\x80\x8A  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\xE2\x80\x8A\aDEFAULTRight", -180, 180, 0)

	local anonteam_235_2 = anonteam_235_0:combo("antiaim", "yaw_mod_combo" .. arg_235_1 .. arg_235_2, " \a4a4a4aFF  \xEE\x8F\x96  \xE2\x80\x8A\xE2\x80\x8A\aDEFAULTModifier", {
		"Disabled",
		"Center",
		"Way",
		"Random",
		"Spin",
		"Fake Flick"
	}, "Disabled", function()
		-- function 246
		return anonteam_235_1.value
	end)

	anonteam_235_2:slider("yaw_deg" .. arg_235_1 .. arg_235_2, " \a{Link Active}\xEE\x89\x92\t\aDEFAULTDegree", -180, 180, 0, nil, nil, function()
		-- function 247
		return anonteam_235_2.str_value ~= "Disabled" and anonteam_235_2.str_value ~= "Fake Flick"
	end):set_disable_function(function()
		-- function 248
		return anonteam_235_2.str_value == "Way" and anonteam_0_47.ui_tables.antiaim["xway_switch" .. arg_235_1 .. arg_235_2] and anonteam_0_47.ui_tables.antiaim["xway_switch" .. arg_235_1 .. arg_235_2].value
	end)
	anonteam_235_2:slider("xway_counter" .. arg_235_1 .. arg_235_2, " \a{Link Active}\xEE\x89\x94\t\aDEFAULTWay", 3, 7, 3, nil, function(arg_249_0)
		-- function 249
		return arg_249_0 .. "-Way"
	end, function()
		-- function 250
		return anonteam_235_2.str_value == "Way"
	end)
	anonteam_235_2:switch("xway_shuffle" .. arg_235_1 .. arg_235_2, "Shuffle", false, function()
		-- function 251
		return anonteam_235_2.str_value == "Way"
	end, nil, " \a{Switch}\xEF\x81\xB4\t\aDEFAULT", " \a{Link Active}\xEF\x81\xB4\t\aDEFAULT")
	anonteam_235_2:switch("xway_sync" .. arg_235_1 .. arg_235_2, "Sync Desync", false, function()
		-- function 252
		return anonteam_235_2.str_value == "Way" or anonteam_235_2.str_value == "Skitter"
	end, nil, " \a{Switch}\xEF\x8B\xB1\t\aDEFAULT", " \a{Link Active}\xEF\x8B\xB1\t\aDEFAULT")
	anonteam_235_2:switch("xway_switch" .. arg_235_1 .. arg_235_2, "Custom", false, function()
		-- function 253
		return anonteam_235_2.str_value == "Way"
	end, nil, " \a{Switch}\xEF\x97\xBD\t\aDEFAULT", " \a{Link Active}\xEF\x97\xBD\t\aDEFAULT")

	for iter_235_0 = 1, 7 do
		anonteam_235_2:slider("xwayn_" .. arg_235_1 .. arg_235_2 .. iter_235_0, "\a4a4a4aFF\xEF\x84\x84\t\a{Link Active}" .. iter_235_0 .. "\t\a4a4a4aFF\xEF\x84\x85\t\aDEFAULT", -180, 180, 0, nil, nil, function()
			-- function 254
			return anonteam_0_47.ui_tables.antiaim["xway_switch" .. arg_235_1 .. arg_235_2].value and anonteam_235_2.str_value == "Way" and anonteam_0_47.ui_tables.antiaim["xway_counter" .. arg_235_1 .. arg_235_2].value >= iter_235_0
		end)
	end

	anonteam_235_2:slider("flick_delay" .. arg_235_1 .. arg_235_2, " \a{Link Active}\xEE\x8A\x9E\t\aDEFAULTDelay", 1, 10, 3, 0.1, function(arg_255_0)
		-- function 255
		return arg_255_0 / 10 .. "s"
	end, function()
		-- function 256
		return anonteam_235_2.str_value == "Fake Flick"
	end)
	anonteam_235_2:slider("flick_yaw" .. arg_235_1 .. arg_235_2, " \a{Link Active}\xEF\x80\x9E\t\aDEFAULTYaw", -180, 180, 0, nil, nil, function()
		-- function 257
		return anonteam_235_2.str_value == "Fake Flick"
	end)

	local anonteam_235_3 = anonteam_235_0:switch("antiaim", "desync_switch" .. arg_235_1 .. arg_235_2, "Desync", false, nil, "  \a{Switch}\xEE\x95\x88\t  \aDEFAULT", "  \a{Link Active}\xEE\x95\x88\t  \aDEFAULT")

	anonteam_235_3:combo("desync_freestand" .. arg_235_1 .. arg_235_2, "\a{Link Active}\xE2\x80\x8A\xEE\x93\xB6\t\aDEFAULTFreestand", {
		"Disabled",
		"Peek Fake",
		"Peek Real"
	}, "Disabled")
	anonteam_235_3:label("-", "\a{Link Active}\xE2\x80\x8A\xEE\x89\x93\t\aDEFAULTLimits")
	anonteam_235_3:slider("desync_l" .. arg_235_1 .. arg_235_2, "  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\aDEFAULTLeft", 0, 60, 60)
	anonteam_235_3:slider("desync_r" .. arg_235_1 .. arg_235_2, "  \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\aDEFAULTRight", 0, 60, 60)
	anonteam_235_0:selectable("antiaim", "desync_mod" .. arg_235_1 .. arg_235_2, " \a4a4a4aFF  \xEE\x8F\x96  \xE2\x80\x8A\xE2\x80\x8A\aDEFAULTModifier", {
		"Jitter",
		"Randomize Jitter"
	}, "", function()
		-- function 258
		return anonteam_235_3.value
	end)

	local anonteam_235_4 = anonteam_235_0:switch("antiaim", "def_switch" .. arg_235_1 .. arg_235_2, "Defensive AA", false, nil, " \a{Switch}\xEE\x80\xA2\t\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT", " \a{Link Active}\xEE\x80\xA2\t\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT")

	anonteam_235_4:combo("def_pitch" .. arg_235_1 .. arg_235_2, "\a4a4a4aFF\xEF\x84\x85\t\aDEFAULTPitch", {
		"Disabled",
		"Down",
		"Up",
		"Random",
		"Sway",
		"Custom"
	}, "Disabled")
	anonteam_235_4:slider("pitch_deg" .. arg_235_1 .. arg_235_2, " \a{Link Active}\xEE\x89\x92\t\aDEFAULTDegree ", 0, 89, 0, nil, nil, function()
		-- function 259
		return anonteam_0_47.ui_tables.antiaim["def_pitch" .. arg_235_1 .. arg_235_2].value == 4
	end)
	anonteam_235_4:slider("pitch_custom" .. arg_235_1 .. arg_235_2, " \a{Link Active}\xEE\x89\x92\t\aDEFAULTDegree", -89, 89, 0, nil, nil, function()
		-- function 260
		return anonteam_0_47.ui_tables.antiaim["def_pitch" .. arg_235_1 .. arg_235_2].value == 6
	end)
	anonteam_235_4:combo("def_yaw" .. arg_235_1 .. arg_235_2, "\a4a4a4aFF\xEF\x84\x85\t\aDEFAULTYaw", {
		"Default",
		"Sideways",
		"Extension",
		"Random",
		"Custom"
	}, "Disabled")
	anonteam_235_4:slider("def_yaw_deg" .. arg_235_1 .. arg_235_2, " \a{Link Active}\xEE\x89\x92\t\aDEFAULTDegree", -180, 180, 0, nil, nil, function()
		-- function 261
		return anonteam_0_47.ui_tables.antiaim["def_yaw" .. arg_235_1 .. arg_235_2].value >= 4
	end)
	anonteam_235_4:slider("def_onetapspeed" .. arg_235_1 .. arg_235_2, " \a{Link Active}\xEE\x89\x92\t\aDEFAULTSpeed", 0, 20, 10, nil, nil, function()
		-- function 262
		return anonteam_0_47.ui_tables.antiaim["def_yaw" .. arg_235_1 .. arg_235_2].value == 3
	end)

	local anonteam_235_5 = anonteam_235_0:switch("antiaim", "roll_switch" .. arg_235_1 .. arg_235_2, "Roll", false, nil, " \a{Switch}\xEF\x9C\x8C\t\xE2\x80\x8A\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT", " \a{Link Active}\xEF\x9C\x8C\t\xE2\x80\x8A\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT")
	local anonteam_235_6 = anonteam_235_5:combo("roll_type" .. arg_235_1 .. arg_235_2, " \a{Link Active} \xEF\x83\x89\t\aDEFAULTType", {
		"Default",
		"Pitch Extended"
	}, "Default")

	anonteam_235_5:slider("roll_def_deg" .. arg_235_1 .. arg_235_2, "   \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\aDEFAULTDegree", -180, 180, 0, nil, nil, function()
		-- function 263
		return anonteam_235_6.value == 1
	end)
	anonteam_235_5:slider("roll_ext_pit" .. arg_235_1 .. arg_235_2, "   \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\aDEFAULTPitch", -180, 180, 0, nil, nil, function()
		-- function 264
		return anonteam_235_6.value == 2
	end)
	anonteam_235_5:slider("roll_ext_deg" .. arg_235_1 .. arg_235_2, "   \a4a4a4aFF\xEF\x84\x85\t \xE2\x80\x8A\aDEFAULTDegree", -180, 180, 0, nil, nil, function()
		-- function 265
		return anonteam_235_6.value == 2
	end)
end

for iter_0_2 = 1, #anonteam_0_47.ui_tables.unused.condition_list.elements_array do
	local anonteam_0_50 = anonteam_0_47.ui_tables.unused.condition_list.elements_array[iter_0_2]

	anonteam_0_49.builder:label("unused", "empty", "", function()
		-- function 266
		return anonteam_0_47.ui_tables.unused.condition_list.value == iter_0_2 and anonteam_0_50 ~= "Crouching" and anonteam_0_50 ~= "In Air"
	end)

	if anonteam_0_50 == "Crouching" then
		anonteam_0_49.builder:combo("unused", "condition_add" .. iter_0_2, "\a4a4a4aFF  \xEE\x8F\x96  \xE2\x80\x8A\xE2\x80\x8A\aDEFAULTAdditional", {
			"Default",
			"Sneaking"
		}, "Default", function()
			-- function 267
			return anonteam_0_47.ui_tables.unused.condition_list.str_value == "Crouching"
		end)
	end

	if anonteam_0_50 == "In Air" then
		anonteam_0_49.builder:combo("unused", "condition_add" .. iter_0_2, "\a4a4a4aFF  \xEE\x8F\x96  \xE2\x80\x8A\xE2\x80\x8A\aDEFAULTAdditional", {
			"Default",
			"Crouching"
		}, "Default", function()
			-- function 268
			return anonteam_0_47.ui_tables.unused.condition_list.str_value == "In Air"
		end)
	end

	if iter_0_2 <= 4 then
		anonteam_0_49.builder.create_ui_condition(" Builder \a{Switch}\xEF\x83\x9A \a{Link Active}" .. anonteam_0_50, iter_0_2)
	else
		local anonteam_0_51 = {
			Crouching = {
				"Default",
				"Sneaking"
			},
			["In Air"] = {
				"Default",
				"Crouching"
			}
		}

		for iter_0_3 = 1, 2 do
			anonteam_0_49.builder.create_additional_ui_condition(" Builder \a{Switch}\xEF\x83\x9A\aDEFAULT " .. anonteam_0_50 .. "\a{Switch} \xEF\x83\x9A \a{Link Active}" .. anonteam_0_51[anonteam_0_50][iter_0_3], iter_0_2, iter_0_3)
		end
	end
end

anonteam_0_49.additional = anonteam_0_47.create_group(" Anti Aim \a{Switch}\xEF\x83\x9A \a{Link Active}Extra", 1)

anonteam_0_49.additional:disabled_condition(function()
	-- function 269
	return anonteam_0_47.ui_tables.antiaim.list.value == 1
end)
anonteam_0_49.additional:label("antiaim", "base_label", "\a{Link Active}\xEF\x80\x95\t\aDEFAULTBase Settings")
anonteam_0_47.ui_tables.antiaim.base_label:combo("base_pitch", "\a{Link Active}\xEF\x8D\xA1   \aDEFAULTPitch", {
	"Down",
	"Disabled",
	"Fake Down",
	"Fake Up"
}, "Down")
anonteam_0_47.ui_tables.antiaim.base_label:combo("base_yaw", "Yaw Base", {
	"At Target",
	"Local View"
}, "At Target")
anonteam_0_47.ui_tables.antiaim.base_label:switch("base_compensate", "Disabled", false, nil, nil, "\a{Switch} \xEE\x82\x8D\t\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT", "\a{Link Active} \xEE\x82\x8D\t\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT"):set_disable_function(function()
	-- function 270
	return true
end)
anonteam_0_47.ui_tables.antiaim.base_label:switch("predict_switch", "Predictive At Target", false, nil, nil, " \a{Switch}\xEE\x82\x8C\t\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT", " \a{Link Active}\xEE\x82\x8C\t\xE2\x80\x8A\xE2\x80\x8A\aDEFAULT")
anonteam_0_49.additional:label("antiaim", "manual_label", "\a{Link Active}\xEF\x81\x87\t\xE2\x80\x8A\aDEFAULTManual Base")
anonteam_0_47.ui_tables.antiaim.manual_label:combo("manual_type", "Type", {
	"Toggle",
	"Hold"
})
anonteam_0_47.ui_tables.antiaim.manual_label:combo("manual_view", "Yaw Base", {
	"Local View",
	"At Target"
})
anonteam_0_47.ui_tables.antiaim.manual_label:label("-", "\a{Link Active} \xEE\x87\x82\t\aDEFAULTKeybinds")
anonteam_0_47.ui_tables.antiaim.manual_label:hotkey("back_key", " \a4a4a4aFF \xEF\x84\x85\t  \aDEFAULTBackward", 0, 1)
anonteam_0_47.ui_tables.antiaim.manual_label:hotkey("left_key", " \a4a4a4aFF \xEF\x84\x85\t  \aDEFAULTLeft", 0, 1)
anonteam_0_47.ui_tables.antiaim.manual_label:hotkey("right_key", " \a4a4a4aFF \xEF\x84\x85\t  \aDEFAULTRight", 0, 1)
anonteam_0_47.ui_tables.antiaim.manual_label:hotkey("forward_key", " \a4a4a4aFF \xEF\x84\x85\t  \aDEFAULTForward", 0, 1)
anonteam_0_49.additional:label("antiaim", "frees_label", "\a{Link Active}\xEF\x81\xBE\t\xE2\x80\x8A\aDEFAULTFreestanding Options")
anonteam_0_47.ui_tables.antiaim.frees_label:selectable("frees_disable", "\a{Link Active}\xEF\x88\x84\t\xE2\x80\x8A\aDEFAULTDisablers", {
	"Standing",
	"Moving",
	"Slow Walking",
	"Crouching",
	"In Air"
}, "")
anonteam_0_47.ui_tables.antiaim.frees_label:switch("frees_dis_def", "Disable Defensive AA", true, nil, nil, "\a{Switch}\xEE\x89\x8B\t\aDEFAULT", "\a{Link Active}\xEE\x89\x8B\t\aDEFAULT")
anonteam_0_47.ui_tables.antiaim.frees_label:combo("frees_pitch", " \xE2\x80\x8A\a4a4a4aFF\xEF\x84\x85\t  \aDEFAULTPitch", {
	"Disabled",
	"Down",
	"Up",
	"Sway",
	"Random",
	"Custom"
}, "Disabled"):set_disable_function(function()
	-- function 271
	return anonteam_0_47.ui_tables.antiaim.frees_dis_def.value
end)
anonteam_0_47.ui_tables.antiaim.frees_label:slider("frees_pitch_custom", " \a{Link Active}\xEE\x89\x92\t\aDEFAULTCustom", -89, 89, 0, nil, nil, function()
	-- function 272
	if anonteam_0_47.ui_tables.antiaim.frees_pitch_custom then
		anonteam_0_47.ui_tables.antiaim.frees_pitch_custom:visible(true)
	end

	return anonteam_0_47.ui_tables.antiaim.frees_pitch.str_value == "Custom"
end):set_disable_function(function()
	-- function 273
	return anonteam_0_47.ui_tables.antiaim.frees_dis_def.value
end)
anonteam_0_47.ui_tables.antiaim.frees_label:combo("frees_yaw", " \xE2\x80\x8A\a4a4a4aFF\xEF\x84\x85\t  \aDEFAULTYaw", {
	"Reversed",
	"Default",
	"Sideways",
	"Extension",
	"Random"
}, "Reversed"):set_disable_function(function()
	-- function 274
	return anonteam_0_47.ui_tables.antiaim.frees_dis_def.value
end)
anonteam_0_47.ui_tables.antiaim.frees_label:slider("frees_yaw_onetap", " \a{Link Active}\xEE\x8A\x9E\t\aDEFAULTSpeed", 0, 20, 0, nil, nil, function()
	-- function 275
	if anonteam_0_47.ui_tables.antiaim.frees_yaw_onetap then
		anonteam_0_47.ui_tables.antiaim.frees_yaw_onetap:visible(true)
	end

	return anonteam_0_47.ui_tables.antiaim.frees_yaw.str_value == "Extension"
end):set_disable_function(function()
	-- function 276
	return anonteam_0_47.ui_tables.antiaim.frees_dis_def.value
end)
anonteam_0_49.additional:label("antiaim", "breaklc_label", "\a{Link Active}\xEE\x84\x85\t\xE2\x80\x8A\aDEFAULTBreak LC")
anonteam_0_47.ui_tables.antiaim.breaklc_label:selectable("breaklc_always", "\a{Link Active}\xEE\x92\xBB\t\aDEFAULTAlways On", {
	"Standing",
	"Moving",
	"Slow Walking",
	"Crouching",
	"In Air",
	"Safe Head"
})
anonteam_0_47.ui_tables.antiaim.breaklc_label:selectable("breaklc_ping", "\a{Link Active}\xEF\x9F\x80\t\aDEFAULTPing Based", {
	"Standing",
	"Moving",
	"Slow Walking",
	"Crouching",
	"In Air"
})
anonteam_0_47.ui_tables.antiaim.breaklc_label:selectable("breaklc_extra", "\a{Link Active}\xEF\x82\xB0\t\aDEFAULTExtra", {
	"Condition Change",
	"Weapon Change",
	"Reloading"
})
anonteam_0_49.additional:switch("antiaim", "legitaa_switch", "Legit AA", false, nil, "\a{Switch} \xEF\x95\x94\t\aDEFAULT\xE2\x80\x8A\xE2\x80\x8A", "\a{Link Active} \xEF\x95\x94\t\aDEFAULT\xE2\x80\x8A\xE2\x80\x8A")
anonteam_0_47.ui_tables.antiaim.legitaa_switch:combo("legitaa_pitch", "\a{Link Active}\xE2\x80\x8A\xEF\x8D\xA1   \xE2\x80\x8A\xE2\x80\x8A\xE2\x80\x8A\aDEFAULTPitch", {
	"Camera Based",
	"Locked",
	"Custom"
}, "Camera Based")
anonteam_0_47.ui_tables.antiaim.legitaa_switch:slider("legitaa_custom", "\a{Link Active} \xEE\x89\x92\t\xE2\x80\x8A\xE2\x80\x8A\aDEFAULTCustom", -89, 89, 0, nil, nil, function()
	-- function 277
	if anonteam_0_47.ui_tables.antiaim.legitaa_custom then
		anonteam_0_47.ui_tables.antiaim.legitaa_custom:visible(true)
	end

	return anonteam_0_47.ui_tables.antiaim.legitaa_pitch.str_value == "Custom"
end)
anonteam_0_47.ui_tables.antiaim.legitaa_switch:switch("legitaa_desync", "Desync", false, nil, nil, "  \a{Switch}\xEE\x95\x88\t  \xE2\x80\x8A\aDEFAULT", "  \a{Link Active}\xEE\x95\x88\t  \xE2\x80\x8A\aDEFAULT")
anonteam_0_47.ui_tables.antiaim.legitaa_switch:combo("legitaa_freestand", " \a4a4a4aFF  \xEE\x8F\x96\t\aDEFAULTFreestand", {
	"Disabled",
	"Peek Fake",
	"Peek Real"
}, "Disabled", function()
	-- function 278
	if anonteam_0_47.ui_tables.antiaim.legitaa_freestand then
		anonteam_0_47.ui_tables.antiaim.legitaa_freestand:visible(true)
	end

	return anonteam_0_47.ui_tables.antiaim.legitaa_desync.value
end)
anonteam_0_47.ui_tables.antiaim.legitaa_switch:selectable("legitaa_mod", " \a4a4a4aFF  \xEE\x8F\x96\t\aDEFAULTModifier", {
	"Jitter",
	"Randomize Jitter"
}, "", function()
	-- function 279
	if anonteam_0_47.ui_tables.antiaim.legitaa_mod then
		anonteam_0_47.ui_tables.antiaim.legitaa_mod:visible(true)
	end

	return anonteam_0_47.ui_tables.antiaim.legitaa_desync.value
end)
anonteam_0_49.additional:switch("antiaim", "safe_switch", "Safe Head", false, nil, "\a{Switch}\xEF\xA0\x87\t\aDEFAULT", "\a{Link Active}\xEF\xA0\x87\t\aDEFAULT")
anonteam_0_47.ui_tables.antiaim.safe_switch:switch("safe_def", "Disable Defensive AA", false, nil, nil, "\a{Switch}\xEE\x89\x8B\t\aDEFAULT", "\a{Link Active}\xEE\x89\x8B\t\aDEFAULT")
anonteam_0_47.ui_tables.antiaim.list.update_active_tab()

anonteam_0_47.active_tab = "\a{Link Active}\xEF\x83\x89\aDEFAULT Other"

local anonteam_0_52 = {
	navigation = anonteam_0_47.create_group("Other", 1)
}

anonteam_0_52.navigation:list("navigation", "list", "", {
	"Ragebot",
	"Visuals",
	"Misc"
})

function anonteam_0_47.ui_tables.navigation.list.update_active_tab()
	-- function 280
	local anonteam_280_0 = anonteam_0_47.ui_tables.navigation.list
	local anonteam_280_1 = {}
	local anonteam_280_2 = {
		"\xEF\x81\x9B",
		"\xEF\xA2\x90",
		"\xEF\x9F\x99"
	}

	for iter_280_0 = 1, #anonteam_280_0.elements_array do
		anonteam_280_1[#anonteam_280_1 + 1] = anonteam_280_0.value == iter_280_0 and "\a{Link Active}" .. anonteam_280_2[iter_280_0] .. "   \aDEFAULT" .. anonteam_280_0.elements_array[iter_280_0] or "\a{Switch}" .. anonteam_280_2[iter_280_0] .. "   \a4a4a4aFF" .. anonteam_280_0.elements_array[iter_280_0]
	end

	anonteam_280_0.ref:update(anonteam_280_1)
end

anonteam_0_47.ui_tables.navigation.list:set_callback(function()
	-- function 281
	anonteam_0_47.ui_tables.navigation.list.update_active_tab()

	if anonteam_0_52.ragebot then
		anonteam_0_52.ragebot:update()
	end

	if anonteam_0_52.ragebot_hitchance then
		anonteam_0_52.ragebot_hitchance:update()
	end

	if anonteam_0_52.visuals_main_settings then
		anonteam_0_52.visuals_main_settings:update()
	end

	if anonteam_0_52.visuals_localplayer then
		anonteam_0_52.visuals_localplayer:update()
	end

	if anonteam_0_52.visuals_indicators then
		anonteam_0_52.visuals_indicators:update()
	end

	if anonteam_0_52.visuals_extra then
		anonteam_0_52.visuals_extra:update()
	end

	if anonteam_0_52.visuals_world then
		anonteam_0_52.visuals_world:update()
	end

	if anonteam_0_52.misc then
		anonteam_0_52.misc:update()
	end
end, true)

anonteam_0_52.ragebot = anonteam_0_47.create_group(" Other \a{Switch}\xEF\x83\x9A \a{Link Active}Ragebot", 2)

anonteam_0_52.ragebot:visible_condition(function()
	-- function 282
	return anonteam_0_47.ui_tables.navigation.list.value == 1
end)
anonteam_0_52.ragebot:switch("ragebot", "dormant_switch", "Dormant Aimbot", false, nil, "\a{Switch}\xE2\x80\x8A\xEF\x8A\xA8\t\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEF\x8A\xA8\t\aDEFAULT")
anonteam_0_47.ui_tables.ragebot.dormant_switch:switch("dormant_dmgswitch", "\a{Link Active} \xEF\x81\x9B\t \aDEFAULTDamage from Ragebot", true)
anonteam_0_47.ui_tables.ragebot.dormant_switch:slider("dormant_dmg", "\a{Link Active}\xE2\x80\x8A\xEE\x86\xBD\t\aDEFAULTDamage", 1, 100, 5):set_disable_function(function()
	-- function 283
	return anonteam_0_47.ui_tables.ragebot.dormant_dmgswitch.value
end)
anonteam_0_52.ragebot:switch("ragebot", "aipeek_switch", "AI Peek", false, nil, "\a{Switch}\xE2\x80\x8A\xEF\x95\x84\t\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEF\x95\x84\t\aDEFAULT")
anonteam_0_47.ui_tables.ragebot.aipeek_switch:label("ai_peek_label", "Recommended to Use with Min. Damage", nil, nil, true)
anonteam_0_47.ui_tables.ragebot.aipeek_switch:slider("aipeek_dist", "Peek Distance", 0, 100, 30, nil, nil, nil, true)
anonteam_0_47.ui_tables.ragebot.aipeek_switch:slider("aipeek_delay", "Peek Delay", 0, 5, 1, nil, function(arg_284_0)
	-- function 284
	return arg_284_0 .. "t"
end, nil, true)
anonteam_0_47.ui_tables.ragebot.aipeek_switch:switch("aipeek_keys", "Disable if Move. Keys Pressed", true, nil, true)
anonteam_0_47.ui_tables.ragebot.aipeek_switch:switch("aipeek_dt", "Waiting for DT Charge", true, nil, true)
anonteam_0_47.ui_tables.ragebot.aipeek_switch:switch("aipeek_vis", "Visualize", false, nil, true)
anonteam_0_52.ragebot:switch("ragebot", "discharge_switch", "Auto Discharge", false, nil, "\a{Switch}\xE2\x80\x8A\xEE\x95\x93\t\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEE\x95\x93\t\aDEFAULT")
anonteam_0_47.ui_tables.ragebot.discharge_switch:selectable("discharge_combo", "\a{Link Active}\xE2\x80\x8A\xEE\x86\x9D\t\aDEFAULTWeapons", {
	"SSG-08",
	"AWP",
	"AutoSnipers",
	"Shotguns",
	"SMGs",
	"R8 Revolver",
	"Desert Eagle",
	"Pistols",
	"Knife",
	"Zeus"
})
anonteam_0_47.ui_tables.ragebot.discharge_switch:combo("discharge_mode", "\a{Link Active}\xEE\x96\xA2\t\aDEFAULTMode", {
	"Default",
	"Fast Fall",
	"After LC"
})
anonteam_0_47.ui_tables.ragebot.discharge_switch:slider("discharge_delay", "\a{Link Active}\xE2\x80\x8A\xEE\x8A\x9E  \xE2\x80\x8A\xE2\x80\x8A\xE2\x80\x8A\xE2\x80\x8A\aDEFAULTDelay", 3, 11, 0, 0.1, function(arg_285_0)
	-- function 285
	if arg_285_0 == 11 then
		return "-"
	end

	return arg_285_0 / 10 .. "s"
end):set_disable_function(function()
	-- function 286
	return #anonteam_0_47.ui_tables.ragebot.discharge_combo.value == 0
end)
anonteam_0_52.ragebot:switch("ragebot", "air_exploit", "Air Break LC Exploit", false, nil, "\a{Switch}\xE2\x80\x8A\xEE\x94\xAB\t\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEE\x94\xAB\t\aDEFAULT")
anonteam_0_52.ragebot:switch("ragebot", "airstop_switch", "Airstop", false, nil, "\a{Switch} \xE2\x80\x8A\xEF\x9C\xAE\t\aDEFAULT", "\a{Link Active} \xE2\x80\x8A\xEF\x9C\xAE\t\aDEFAULT")
anonteam_0_47.ui_tables.ragebot.airstop_switch:listable("airstop_cond", "Conditions", {
	"Press Shift",
	"Enemy Close"
})
anonteam_0_52.ragebot:switch("ragebot", "grenade_switch", "Grenade Release", false, nil, "\a{Switch} \xE2\x80\x8A\xEF\x87\xA2\t\aDEFAULT", "\a{Link Active} \xE2\x80\x8A\xEF\x87\xA2\t\aDEFAULT")
anonteam_0_47.ui_tables.ragebot.grenade_switch:slider("grenade_damage", "Damage", 1, 100, 100, nil, function(arg_287_0)
	-- function 287
	return arg_287_0 .. "%"
end)
anonteam_0_52.ragebot:switch("ragebot", "toss_switch", "Disabled", false, nil, "\a{Switch}\xE2\x80\x8A\xEF\xA2\x99\t\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEF\xA2\x99\t\aDEFAULT"):disabled(true)
anonteam_0_52.ragebot:switch("ragebot", "roll_resolver", "Roll Resolver", false, nil, "\a{Switch}\xE2\x80\x8A\xE2\x80\x8A\xEE\x86\x9D   \xE2\x80\x8A\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xE2\x80\x8A\xEE\x86\x9D   \xE2\x80\x8A\aDEFAULT")
anonteam_0_47.ui_tables.ragebot.roll_resolver:label("roll_label", "\aff3636FF\xEF\x81\xB1\aDEFAULT Don't use if you don't know what you are doing")
anonteam_0_47.ui_tables.ragebot.roll_resolver:slider("roll_deg", "\a{Link Active}\xEE\x89\x92\t\aDEFAULTDegree", -100, 100, 50)
anonteam_0_47.ui_tables.ragebot.roll_resolver:switch("roll_pitch_switch", "Override Pitch", false, nil, nil, "\a{Switch}\xEF\x8D\xA1   \aDEFAULT", "\a{Link Active}\xEF\x8D\xA1   \aDEFAULT")
anonteam_0_47.ui_tables.ragebot.roll_resolver:slider("roll_pitch_deg", "\a{Link Active}\xEE\x89\x92\t\aDEFAULTDegree", 0, 180, 89, nil, nil, function()
	-- function 288
	return anonteam_0_47.ui_tables.ragebot.roll_pitch_switch.value
end)
anonteam_0_52.ragebot:switch("ragebot", "antidef_switch", "Anti Defensive", false, nil, "\a{Switch}\xE2\x80\x8A\xEE\x89\x8B\t\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEE\x89\x8B\t\aDEFAULT")

anonteam_0_52.ragebot_hitchance = anonteam_0_47.create_group(" Other \a{Switch}\xEF\x83\x9A\aDEFAULT Ragebot\a{Switch} \xEF\x83\x9A \a{Link Active}Hitchance", 1)

anonteam_0_52.ragebot_hitchance:visible_condition(function()
	-- function 289
	return anonteam_0_47.ui_tables.navigation.list.value == 1
end)
anonteam_0_52.ragebot_hitchance:list("unused", "hitchance_list", "", {
	"Scout",
	"AWP",
	"Auto",
	"Revolver",
	"Desert Eagle",
	"Shotguns",
	"SMG"
})

for iter_0_4 = 1, #anonteam_0_47.ui_tables.unused.hitchance_list.elements_array do
	if iter_0_4 == 1 then
		anonteam_0_52.ragebot_hitchance:switch("ragebot", "jumpscout", "Jumpscout", false, function()
			-- function 290
			return anonteam_0_47.ui_tables.unused.hitchance_list.value == iter_0_4
		end, "\a{Switch}  \xEF\x9D\xB6  \xE2\x80\x8A\xE2\x80\x8A\aDEFAULT", "\a{Link Active}  \xEF\x9D\xB6  \xE2\x80\x8A\xE2\x80\x8A\aDEFAULT")
	end

	anonteam_0_52.ragebot_hitchance:slider("ragebot", "air_" .. iter_0_4, "\a{Link Active}  \xE2\x80\x8A\xEE\x88\xAD\t \aDEFAULTIn Air          ", -1, 100, -1, nil, function(arg_291_0)
		-- function 291
		if arg_291_0 < 0 then
			return "Off"
		end

		if arg_291_0 == 0 then
			return "Auto"
		end

		return arg_291_0 .. " %"
	end, function()
		-- function 292
		return anonteam_0_47.ui_tables.unused.hitchance_list.value == iter_0_4
	end)
	anonteam_0_47.ui_tables.ragebot["air_" .. iter_0_4]:set_callback(function()
		-- function 293
		anonteam_0_47.ui_tables.unused.hitchance_list.update_active_tab()
	end)
	anonteam_0_52.ragebot_hitchance:slider("ragebot", "noscope_" .. iter_0_4, "\a{Link Active}  \xEF\x98\x83    \aDEFAULTNo Scope", -1, 100, -1, nil, function(arg_294_0)
		-- function 294
		if arg_294_0 < 0 then
			return "Off"
		end

		if arg_294_0 == 0 then
			return "Auto"
		end

		return arg_294_0 .. " %"
	end, function()
		-- function 295
		return anonteam_0_47.ui_tables.unused.hitchance_list.value == iter_0_4
	end):set_disable_function(function()
		-- function 296
		return iter_0_4 > 3
	end)
	anonteam_0_47.ui_tables.ragebot["noscope_" .. iter_0_4]:set_callback(function()
		-- function 297
		anonteam_0_47.ui_tables.unused.hitchance_list.update_active_tab()
	end)
	anonteam_0_52.ragebot_hitchance:slider("ragebot", "noscope_dist" .. iter_0_4, "\a4a4a4aFF    \xE2\x80\x8A\xEE\x8F\x96 \xE2\x80\x8A\xE2\x80\x8A\aDEFAULTDistance", 0, 101, 0, nil, function(arg_298_0)
		-- function 298
		local anonteam_298_0 = arg_298_0 / 10

		if arg_298_0 > 100 then
			return "inf."
		end

		return anonteam_298_0 .. "m"
	end, function()
		-- function 299
		return anonteam_0_47.ui_tables.unused.hitchance_list.value == iter_0_4 and anonteam_0_47.ui_tables.ragebot["noscope_" .. iter_0_4].value >= 0
	end)
end

function anonteam_0_47.ui_tables.unused.hitchance_list.update_active_tab()
	-- function 300
	local anonteam_300_0 = anonteam_0_47.ui_tables.unused.hitchance_list
	local anonteam_300_1 = {}

	for iter_300_0 = 1, #anonteam_300_0.elements_array do
		local anonteam_300_2 = "  "

		if anonteam_0_47.ui_tables.ragebot["noscope_" .. iter_300_0].value >= 0 then
			anonteam_300_2 = "\aFBCEB1FF\xE2\x80\xA2\aDEFAULT"
		end

		if anonteam_0_47.ui_tables.ragebot["air_" .. iter_300_0].value >= 0 then
			anonteam_300_2 = "\a{Link Active}\xE2\x80\xA2\aDEFAULT" .. anonteam_300_2
		else
			anonteam_300_2 = "  " .. anonteam_300_2
		end

		if iter_300_0 == anonteam_300_0.value then
			anonteam_300_2 = anonteam_300_2 .. "   \aDEFAULT" .. anonteam_300_0.elements_array[iter_300_0]
		else
			anonteam_300_2 = anonteam_300_2 .. "   \a4f4f4fFF" .. anonteam_300_0.elements_array[iter_300_0]
		end

		anonteam_300_1[#anonteam_300_1 + 1] = anonteam_300_2
	end

	anonteam_300_0.ref:update(anonteam_300_1)
end

anonteam_0_47.ui_tables.unused.hitchance_list:set_callback(function()
	-- function 301
	anonteam_0_47.ui_tables.unused.hitchance_list.update_active_tab()
end, true)

anonteam_0_52.visuals_main_settings = anonteam_0_47.create_group(" Other \a{Switch}\xEF\x83\x9A\aDEFAULT Visuals\a{Switch} \xEF\x83\x9A \a{Link Active}Settings", 2)

anonteam_0_52.visuals_main_settings:visible_condition(function()
	-- function 302
	return anonteam_0_47.ui_tables.navigation.list.value == 2
end)
anonteam_0_52.visuals_main_settings:label("visuals", "color_label", "\a{Link Active}\xEF\x97\x83\t\aDEFAULTColor Settings")
anonteam_0_47.ui_tables.visuals.color_label:switch("color_use_theme", "Theme Colors", true, nil, nil, "\a{Switch}\xEF\x82\xAC\t\aDEFAULT", "\a{Link Active}\xEF\x82\xAC\t\aDEFAULT")
anonteam_0_47.ui_tables.visuals.color_label:color_picker("main_color", "Main Color", ui.get_style("Link Active")):set_disable_function(function()
	-- function 303
	return anonteam_0_47.ui_tables.visuals.color_use_theme.value
end)
anonteam_0_47.ui_tables.visuals.color_label:color_picker("second_color", "Second Color", ui.get_style("Link Active")):set_disable_function(function()
	-- function 304
	return anonteam_0_47.ui_tables.visuals.color_use_theme.value
end)
anonteam_0_52.visuals_main_settings:label("visuals", "settings_label", "\a{Link Active}\xEF\x98\x9F\t\aDEFAULTDisabled"):disabled(true)
anonteam_0_47.ui_tables.visuals.settings_label:combo("dpi_scale", "\a{Link Active}\xEF\x89\x87\t\aDEFAULTDPI Scale", {
	"Auto",
	"100%",
	"125%",
	"150%",
	"175%",
	"200%"
})
anonteam_0_47.ui_tables.visuals.settings_label:slider("anim_speed", "\a{Link Active}\xEF\x98\xAA\t \aDEFAULTAnim. Speed", 1, 20, 10, 0.1, function(arg_305_0)
	-- function 305
	if #tostring(arg_305_0 / 10) ~= 1 then
		return arg_305_0 / 10 .. ""
	else
		return arg_305_0 / 10 .. ".0"
	end
end)
anonteam_0_52.visuals_main_settings:label("visuals", "widgets_label", "\a{Link Active}\xEF\x90\x8E\t\aDEFAULTDisabled"):disabled(true)
anonteam_0_47.ui_tables.visuals.widgets_label:listable("widgets_list", "", {
	"Watermark",
	"Keybind List",
	"Spectator List",
	"Slowdown Bar"
}, nil, nil)

anonteam_0_52.visuals_localplayer = anonteam_0_47.create_group(" Other \a{Switch}\xEF\x83\x9A\aDEFAULT Visuals\a{Switch} \xEF\x83\x9A \a{Link Active}Localplayer", 1)

anonteam_0_52.visuals_localplayer:visible_condition(function()
	-- function 306
	return anonteam_0_47.ui_tables.navigation.list.value == 2
end)
anonteam_0_52.visuals_localplayer:switch("visuals", "breaker_switch", "Anim. Breakers", false, nil, "\a{Switch}\xEF\x88\x9D\t \xE2\x80\x8A\aDEFAULT", "\a{Link Active}\xEF\x88\x9D\t \xE2\x80\x8A\aDEFAULT")
anonteam_0_47.ui_tables.visuals.breaker_switch:listable("breaker_list", "                        Animations", {
	"Backward Legs",
	"Moon Walk",
	"Air Walk",
	"Static Legs in Air",
	"Adjust Move Lean"
})
anonteam_0_47.ui_tables.visuals.breaker_switch:slider("breaker_lean_value", "Lean Value", -1, 10, -1, 0.1, function(arg_307_0)
	-- function 307
	if arg_307_0 == -1 then
		return "def."
	end

	if #tostring(arg_307_0 / 10) ~= 1 then
		return arg_307_0 / 10 .. ""
	else
		return arg_307_0 / 10 .. ".0"
	end
end, function()
	-- function 308
	return anonteam_0_47.ui_tables.visuals.breaker_list.value_by_name[5] == true
end)
anonteam_0_52.visuals_localplayer:switch("visuals", "transparency_switch", "Transparency", false, nil, "\a{Switch}\xEF\x91\xB0\t\xE2\x80\x8A\aDEFAULT", "\a{Link Active}\xEF\x91\xB0\t\xE2\x80\x8A\aDEFAULT")
anonteam_0_47.ui_tables.visuals.transparency_switch:switch("transparency_keep", "Keep in Scope", false)
anonteam_0_47.ui_tables.visuals.transparency_switch:slider("transparency_alpha", "Default", 0, 100, 100, 0.01)
anonteam_0_47.ui_tables.visuals.transparency_switch:slider("transparency_scope", "Scoped", 0, 100, 50, 0.01)
anonteam_0_47.ui_tables.visuals.transparency_switch:slider("transparency_nade", "Nade", 0, 100, 50, 0.01)
anonteam_0_52.visuals_localplayer:switch("visuals", "anim_switch", "Animations", false, nil, "\a{Switch}\xEE\x81\x98\t\aDEFAULT", "\a{Link Active}\xEE\x81\x98\t\aDEFAULT")
anonteam_0_47.ui_tables.visuals.anim_switch:label("anim_label", "More will be added later.")
anonteam_0_47.ui_tables.visuals.anim_switch:switch("anim_gym", "Gym on Freezetime", false, nil, nil, "\a{Switch}\xEF\x91\x8B\t \aDEFAULT", "\a{Link Active}\xEF\x91\x8B\t \aDEFAULT")
anonteam_0_52.visuals_localplayer:switch("visuals", "spoofer_switch", "Cheat Spoofer", false, nil, "\a{Switch} \xEF\x88\x9B\t \aDEFAULT", "\a{Link Active} \xEF\x88\x9B\t \aDEFAULT")
anonteam_0_47.ui_tables.visuals.spoofer_switch:label("spoofer_label", "Imitates other cheat Shared ESP data.\n\n\af07171FFDont use cheats revealer with spoofer, they share your real cheat!")
anonteam_0_47.ui_tables.visuals.spoofer_switch:list("spoofer_list", "                            Cheats", {
	"Pandora",
	"Fatality",
	"Nixware",
	"Airflow"
})

anonteam_0_52.visuals_indicators = anonteam_0_47.create_group(" Other \a{Switch}\xEF\x83\x9A\aDEFAULT Visuals\a{Switch} \xEF\x83\x9A \a{Link Active}Indicators", 2)

anonteam_0_52.visuals_indicators:visible_condition(function()
	-- function 309
	return anonteam_0_47.ui_tables.navigation.list.value == 2
end)
anonteam_0_52.visuals_indicators:label("visuals", "additional_label", "\a{Link Active} \xEE\x8F\x81\t \aDEFAULTAdditional Elements")
anonteam_0_47.ui_tables.visuals.additional_label:switch("damage_switch", "Damage Indicator", false, nil, nil, "\a{Switch}\xEE\x86\xBD\t\aDEFAULT", "\a{Link Active}\xEE\x86\xBD\t\aDEFAULT")
anonteam_0_47.ui_tables.visuals.additional_label:switch("damage_is_active", "\a4a4a4aFF  \xEE\x8F\x96   \aDEFAULT Only is Active", false, function()
	-- function 310
	return anonteam_0_47.ui_tables.visuals.damage_switch.value
end)
anonteam_0_47.ui_tables.visuals.additional_label:combo("damage_font", "\a4a4a4aFF  \xEE\x8F\x96    \aDEFAULTFont", {
	"Pixel",
	"Verdana"
}, nil, function()
	-- function 311
	return anonteam_0_47.ui_tables.visuals.damage_switch.value
end)
anonteam_0_47.ui_tables.visuals.additional_label:switch("manual_switch", "Manual Arrows", false, nil, nil, "\a{Switch}\xE2\x80\x8A\xEF\x84\xA4\t \aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEF\x84\xA4\t \aDEFAULT")
anonteam_0_52.visuals_indicators:switch("visuals", "indicator_switch", "Crosshair Indicator", false, nil, "\a{Switch}\xE2\x80\x8A\xEF\x98\x81\t\xE2\x80\x8A\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEF\x98\x81\t\xE2\x80\x8A\aDEFAULT")
anonteam_0_47.ui_tables.visuals.indicator_switch:combo("indicator_style", "Style", {
	"Old",
	"Restyle",
	"Classic"
}):disabled(true)
anonteam_0_47.ui_tables.visuals.indicator_switch:switch("indicator_glow", "Glow", true)
anonteam_0_47.ui_tables.visuals.indicator_switch:slider("glow_thick", "Thickness", 0, 50, 25, nil, nil, function()
	-- function 312
	return anonteam_0_47.ui_tables.visuals.indicator_switch.value and anonteam_0_47.ui_tables.visuals.indicator_glow.value
end)
anonteam_0_47.ui_tables.visuals.indicator_switch:slider("glow_alpha", "Alpha", 0, 100, 75, 0.01, nil, function()
	-- function 313
	return anonteam_0_47.ui_tables.visuals.indicator_switch.value and anonteam_0_47.ui_tables.visuals.indicator_glow.value
end)
anonteam_0_52.visuals_indicators:switch("visuals", "scope_switch", "Scope Lines", false, nil, "\a{Switch}\xE2\x80\x8A\xEE\x96\x9F\t\xE2\x80\x8A\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEE\x96\x9F\t\xE2\x80\x8A\aDEFAULT")

local anonteam_0_53 = ui.get_style("Link Active")

anonteam_0_47.ui_tables.visuals.scope_switch:selectable("scope_type", "Type", {
	"Reversed",
	"T Style"
}):color_picker("scope_color", {
	Fade = {
		anonteam_0_53
	},
	Gradient = {
		anonteam_0_53,
		color(anonteam_0_53.r, anonteam_0_53.g, anonteam_0_53.b, 0)
	}
})
anonteam_0_47.ui_tables.visuals.scope_switch:slider("scope_size", "Size", 10, 500, 200, nil, function(arg_314_0)
	-- function 314
	return arg_314_0 .. "px"
end)
anonteam_0_47.ui_tables.visuals.scope_switch:slider("scope_gap", "Gap", 0, 100, 6, nil, function(arg_315_0)
	-- function 315
	return arg_315_0 .. "px"
end)
anonteam_0_52.visuals_indicators:switch("visuals", "hitlog_switch", "Hitlogs", false, nil, "\a{Switch}\xE2\x80\x8A\xEF\x99\x88\t\xE2\x80\x8A\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEF\x99\x88\t\xE2\x80\x8A\aDEFAULT")
anonteam_0_47.ui_tables.visuals.hitlog_switch:listable("hitlog_vis_type", "                            Output", {
	"Console",
	"Screen",
	"Notification"
})
anonteam_0_47.ui_tables.visuals.hitlog_switch:slider("hitlog_duration", "Duration", 10, 50, 30, 0.1, function(arg_316_0)
	-- function 316
	if #tostring(arg_316_0 / 10) ~= 1 then
		return arg_316_0 / 10 .. ""
	else
		return arg_316_0 / 10 .. ".0"
	end
end, function()
	-- function 317
	return anonteam_0_47.ui_tables.visuals.hitlog_vis_type.value_by_name[2] ~= nil
end)
anonteam_0_47.ui_tables.visuals.hitlog_switch:selectable("hitlog_extra", "Extra", {
	"Icons",
	"Glow"
}, {
	"Icons",
	"Glow"
}, function()
	-- function 318
	return anonteam_0_47.ui_tables.visuals.hitlog_vis_type.value_by_name[2] ~= nil
end)
anonteam_0_47.ui_tables.visuals.hitlog_switch:combo("hitlog_color_mode", "Color Mode", {
	"Group",
	"Per Reason"
})
anonteam_0_47.ui_tables.visuals.hitlog_switch:switch("hitlog_theme_hit", "Hit Theme Color", true):color_picker("hitlog_hit", ui.get_style("Link Active"), function()
	-- function 319
	return not anonteam_0_47.ui_tables.visuals.hitlog_theme_hit.value
end, true)
anonteam_0_47.ui_tables.visuals.hitlog_switch:color_picker("hitlog_miss", "Miss", color(254, 62, 62), function()
	-- function 320
	return anonteam_0_47.ui_tables.visuals.hitlog_color_mode.value == 1
end)
anonteam_0_47.ui_tables.visuals.hitlog_switch:color_picker("hitlog_resolver", "Resolver", color(254, 62, 62), function()
	-- function 321
	return anonteam_0_47.ui_tables.visuals.hitlog_color_mode.value == 2
end)
anonteam_0_47.ui_tables.visuals.hitlog_switch:color_picker("hitlog_spread", "Spread", color(255, 193, 57), function()
	-- function 322
	return anonteam_0_47.ui_tables.visuals.hitlog_color_mode.value == 2
end)
anonteam_0_47.ui_tables.visuals.hitlog_switch:color_picker("hitlog_pred", "Prediction Error", color(255, 66, 119), function()
	-- function 323
	return anonteam_0_47.ui_tables.visuals.hitlog_color_mode.value == 2
end)
anonteam_0_47.ui_tables.visuals.hitlog_switch:color_picker("hitlog_death", "Death", color(165, 41, 41), function()
	-- function 324
	return anonteam_0_47.ui_tables.visuals.hitlog_color_mode.value == 2
end)

anonteam_0_52.visuals_extra = anonteam_0_47.create_group(" Other \a{Switch}\xEF\x83\x9A\aDEFAULT Visuals\a{Switch} \xEF\x83\x9A \a{Link Active}Extra", 1)

anonteam_0_52.visuals_extra:visible_condition(function()
	-- function 325
	return anonteam_0_47.ui_tables.navigation.list.value == 2
end)
anonteam_0_52.visuals_extra:switch("viewmodel", "aspect_switch", "Aspect Ratio", anonteam_0_0.viewmodel.aspect_ratio_switch ~= nil and anonteam_0_0.viewmodel.aspect_ratio_switch or false, nil, "\a{Switch}\xE2\x80\x8A\xEE\x83\x9A\t \aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEE\x83\x9A\t \aDEFAULT")
anonteam_0_47.ui_tables.viewmodel.aspect_switch:slider("aspect_value", "Value", 0, 20, anonteam_0_0.viewmodel.aspect_ratio ~= nil and anonteam_0_0.viewmodel.aspect_ratio or 0, 0.1)
anonteam_0_52.visuals_extra:switch("visuals", "console_switch", "Console Color", false, nil, "\a{Switch} \xEE\x8C\xAA\t \aDEFAULT", "\a{Link Active} \xEE\x8C\xAA\t \aDEFAULT"):color_picker("console_color", nil, color(255))
anonteam_0_52.visuals_extra:switch("viewmodel", "viewmodel_switch", "Viewmodel", anonteam_0_0.viewmodel.switch ~= nil and anonteam_0_0.viewmodel.switch or false, nil, "\a{Switch}\xEE\x81\x9D\t\aDEFAULT", "\a{Link Active}\xEE\x81\x9D\t\aDEFAULT")
anonteam_0_47.ui_tables.viewmodel.viewmodel_switch:slider("viewmodel_fov", "FOV", 0, 150, anonteam_0_0.viewmodel.fov ~= nil and anonteam_0_0.viewmodel.fov or 0)
anonteam_0_47.ui_tables.viewmodel.viewmodel_switch:slider("viewmodel_x", "  \xE2\x80\x8AX", -1000, 1000, anonteam_0_0.viewmodel.x ~= nil and anonteam_0_0.viewmodel.x or 0, 0.01)
anonteam_0_47.ui_tables.viewmodel.viewmodel_switch:slider("viewmodel_y", "  \xE2\x80\x8AY", -1000, 1000, anonteam_0_0.viewmodel.y ~= nil and anonteam_0_0.viewmodel.y or 0, 0.01)
anonteam_0_47.ui_tables.viewmodel.viewmodel_switch:slider("viewmodel_z", "  \xE2\x80\x8AZ", -1000, 1000, anonteam_0_0.viewmodel.z ~= nil and anonteam_0_0.viewmodel.z or 0, 0.01)
anonteam_0_47.ui_tables.viewmodel.viewmodel_switch:button("viewmodel_undo", "Undo")

anonteam_0_52.visuals_world = anonteam_0_47.create_group(" Other \a{Switch}\xEF\x83\x9A\aDEFAULT Visuals\a{Switch} \xEF\x83\x9A \a{Link Active}World", 2)

anonteam_0_52.visuals_world:visible_condition(function()
	-- function 326
	return anonteam_0_47.ui_tables.navigation.list.value == 2
end)
anonteam_0_52.visuals_world:switch("visuals", "hitmarker_switch", "Hitmarkers", false, nil, "\a{Switch}\xE2\x80\x8A\xEE\x96\x9B\t\xE2\x80\x8A\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEE\x96\x9B\t\xE2\x80\x8A\aDEFAULT")
anonteam_0_47.ui_tables.visuals.hitmarker_switch:slider("hitmarker_duration", "Duration", 10, 50, 30, 0.1, function(arg_327_0)
	-- function 327
	if #tostring(arg_327_0 / 10) ~= 1 then
		return arg_327_0 / 10 .. ""
	else
		return arg_327_0 / 10 .. ".0"
	end
end)
anonteam_0_47.ui_tables.visuals.hitmarker_switch:switch("hitmarker_lastshot", "Last Shot Only", true)
anonteam_0_47.ui_tables.visuals.hitmarker_switch:switch("hitmarker_color_hitlog", "Colors from Hitlogs", true)
anonteam_0_47.ui_tables.visuals.hitmarker_switch:switch("hitmarker_theme_hit", "Hit Theme Color", true, function()
	-- function 328
	return not anonteam_0_47.ui_tables.visuals.hitmarker_color_hitlog.value
end):color_picker("hitmarker_hit", ui.get_style("Link Active"), function()
	-- function 329
	return not anonteam_0_47.ui_tables.visuals.hitmarker_theme_hit.value
end, true)
anonteam_0_47.ui_tables.visuals.hitmarker_switch:color_picker("hitmarker_miss", "Miss", color(254, 62, 62), function()
	-- function 330
	return not anonteam_0_47.ui_tables.visuals.hitmarker_color_hitlog.value
end)
anonteam_0_47.ui_tables.visuals.hitmarker_switch:switch("hitmarker_glow", "Glow", false)
anonteam_0_52.visuals_world:switch("visuals", "nade_switch", "Grenade Radius", false, nil, "\a{Switch}\xEF\x84\x91\t\xE2\x80\x8A\aDEFAULT", "\a{Link Active}\xEF\x84\x91\t\xE2\x80\x8A\aDEFAULT")
anonteam_0_47.ui_tables.visuals.nade_switch:combo("nade_style", "Style", {
	"Solid",
	"Gradient"
})
anonteam_0_47.ui_tables.visuals.nade_switch:switch("nade_molotov", "Molotov", true):color_picker("nade_molotov_c", color(255, 122, 122, 150), function()
	-- function 331
	return anonteam_0_47.ui_tables.visuals.nade_molotov.value
end, true)
anonteam_0_47.ui_tables.visuals.nade_switch:color_picker("nade_molotov_cf", "Ally Molotov", color(0, 0), function()
	-- function 332
	return anonteam_0_47.ui_tables.visuals.nade_molotov.value
end)
anonteam_0_47.ui_tables.visuals.nade_switch:switch("nade_smoke", "Smoke", true):color_picker("nade_smoke_c", color(131, 131), function()
	-- function 333
	return anonteam_0_47.ui_tables.visuals.nade_smoke.value
end, true)
anonteam_0_52.visuals_world:switch("visuals", "molotov_switch", "Disabled", false, nil, "\a{Switch}\xE2\x80\x8A\xEF\x81\xAD\t \aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEF\x81\xAD\t \aDEFAULT"):disabled(true)

anonteam_0_52.misc = anonteam_0_47.create_group(" Other \a{Switch}\xEF\x83\x9A\a{Link Active} Misc", 2)

anonteam_0_52.misc:visible_condition(function()
	-- function 334
	return anonteam_0_47.ui_tables.navigation.list.value == 3
end)
anonteam_0_52.misc:switch("misc", "avoid_switch", "Avoid Collisions", false, nil, "\a{Switch}\xEF\x97\xA1\t\xE2\x80\x8A\aDEFAULT", "\a{Link Active}\xEF\x97\xA1\t\xE2\x80\x8A\aDEFAULT")
anonteam_0_47.ui_tables.misc.avoid_switch:slider("avoid_dist", "Distance", 1, 10, 5, 0.1)
anonteam_0_47.ui_tables.misc.avoid_switch:listable("avoid_disable", "Disablers", {
	"Crouching",
	"Edge Jump"
}, {
	"Crouching",
	"Edge Jump"
})
anonteam_0_52.misc:switch("misc", "fastladder_switch", "Fast Ladder", false, nil, "\a{Switch}\xE2\x80\x8A\xEF\x97\x85\t\xE2\x80\x8A\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEF\x97\x85\t\xE2\x80\x8A\aDEFAULT")
anonteam_0_52.misc:switch("misc", "fall_switch", "No Fall Damage", false, nil, "\a{Switch}\xE2\x80\x8A\xEE\x95\x87\t\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xEE\x95\x87\t\aDEFAULT")
anonteam_0_52.misc:switch("misc", "trashtalk_switch", " AI Trashtalk", false, nil, "\a{Switch}  \xEF\xA3\xAF\t\aDEFAULT", "\a{Link Active}  \xEF\xA3\xAF\t\aDEFAULT")
anonteam_0_47.ui_tables.misc.trashtalk_switch:selectable("trash_type", "Type", {
	"On Kill",
	"On Death",
	"Revenge"
}, {
	"On Kill",
	"On Death",
	"Revenge"
})
anonteam_0_52.misc:switch("misc", "clantag_switch", "Clantag", false, nil, "\a{Switch} \xE2\x80\x8A\xEF\x99\x90\t\aDEFAULT", "\a{Link Active} \xE2\x80\x8A\xEF\x99\x90\t\aDEFAULT")
anonteam_0_52.misc:switch("misc", "shared_switch", "Shared Logo", false, nil, "\a{Switch}\xE2\x80\x8A\xE2\x80\x8A\xEF\x94\x99\t\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xE2\x80\x8A\xEF\x94\x99\t\aDEFAULT")
anonteam_0_52.misc:switch("misc", "ping_switch", "Extended Ping", false, nil, "\a{Switch}\xE2\x80\x8A\xE2\x80\x8A\xEE\x96\x85\t\aDEFAULT", "\a{Link Active}\xE2\x80\x8A\xE2\x80\x8A\xEE\x96\x85\t\aDEFAULT")
anonteam_0_47.ui_tables.misc.ping_switch:slider("ping_slider", "\a{Link Active}\xE2\x80\x8A\xE2\x80\x8A\xEF\x80\x92\t\aDEFAULTPing", 0, 200, 200)

anonteam_0_47.is_loaded = true

anonteam_0_47.update_all_groups()

local anonteam_0_54 = {}

anonteam_0_54.active_condition = ""
anonteam_0_54.tick_switch = false
anonteam_0_54.spin_cache = 0
anonteam_0_54.conds_path = {}
anonteam_0_54.yaw_counter = 1
anonteam_0_54.ways = {
	{},
	{},
	{
		-2,
		180,
		2
	},
	{
		-2,
		-4,
		4,
		2
	},
	{
		-2,
		-4,
		180,
		4,
		2
	},
	{
		-2,
		-4,
		-6,
		6,
		4,
		2
	},
	{
		-2,
		-4,
		-6,
		180,
		6,
		4,
		2
	}
}
anonteam_0_54.pitch_table = {
	Up = -89,
	Down = 89,
	Disabled = 0
}
anonteam_0_54.shuffle_array = {}
anonteam_0_54.flick_delay = 0
anonteam_0_54.switch_delay = 0
anonteam_0_54.onetap_defensive_value = 0
anonteam_0_54.onetap_speed_value = 0
anonteam_0_54.lc_tickbase = globals.tickcount
anonteam_0_54.lc_timer = 0
anonteam_0_54.last_weapon = nil
anonteam_0_54.break_lc_tick_switch = false
anonteam_0_54.legitaa_list = {
	CPropDoorRotating = true,
	CHostage = true,
	CFuncBrush = true,
	CBaseButton = true
}
anonteam_0_54.safe_head = false
anonteam_0_54.predict_yaw = 0
anonteam_0_54.cache_charge = 0

function anonteam_0_54.generate_shuffle_array(arg_335_0)
	-- function 335
	local anonteam_335_0 = {}

	for iter_335_0 = 1, arg_335_0 do
		anonteam_335_0[iter_335_0] = iter_335_0
	end

	for iter_335_1 = 1, #anonteam_335_0 do
		local anonteam_335_1 = utils.random_int(1, arg_335_0)

		anonteam_335_0[anonteam_335_1], anonteam_335_0[iter_335_1] = anonteam_335_0[iter_335_1], anonteam_335_0[anonteam_335_1]
	end

	return anonteam_335_0
end

function anonteam_0_54.legit_aa(arg_336_0)
	-- function 336
	local anonteam_336_0 = anonteam_0_41.ref
	local anonteam_336_1 = anonteam_0_41.crouching
	local anonteam_336_2 = anonteam_336_0.m_iTeamNum
	local anonteam_336_3 = entity.get_entities("CPlantedC4")
	local anonteam_336_4 = #anonteam_336_3 > 0
	local anonteam_336_5 = anonteam_0_41.eye_pos
	local anonteam_336_6 = render.camera_angles()
	local anonteam_336_7 = utils.trace_line(anonteam_336_5, anonteam_336_5 + vector():angles(anonteam_336_6.x, anonteam_336_6.y, 0) * 130, anonteam_336_0, 1073741825, 3)

	if anonteam_336_7.entity then
		local anonteam_336_8 = false

		if anonteam_336_7.entity:is_weapon() then
			local anonteam_336_9 = anonteam_336_7.entity:get_weapon_info().weapon_name

			anonteam_336_8 = anonteam_0_54.legitaa_list[anonteam_336_9] or anonteam_336_9:find("weapon")
		else
			local anonteam_336_10 = anonteam_336_7.entity:get_classname()

			anonteam_336_8 = anonteam_0_54.legitaa_list[anonteam_336_10]
		end

		if anonteam_336_8 then
			anonteam_0_54.active_condition = anonteam_336_1 and 61 or 2

			return
		end
	end

	if anonteam_336_4 and anonteam_336_0:get_origin():dist(anonteam_336_3[#anonteam_336_3]:get_origin()) < 62 and anonteam_336_2 == 3 then
		anonteam_0_54.active_condition = anonteam_336_1 and 61 or 2

		return
	end

	local anonteam_336_11 = anonteam_0_47.ui_tables.antiaim.legitaa_pitch.value

	anonteam_0_37.pitch:override("Disabled")

	if not arg_336_0.in_attack then
		if anonteam_336_11 == 2 then
			arg_336_0.view_angles.x = 0
		end

		if anonteam_336_11 == 3 then
			arg_336_0.view_angles.x = anonteam_0_47.ui_tables.antiaim.legitaa_custom.value
		end
	end

	anonteam_0_37.yaw_offset:override(180)
	anonteam_0_37.yaw_at_targets:override("Local View")
	anonteam_0_35.desync:set(anonteam_0_47.ui_tables.antiaim.legitaa_desync.value)

	local anonteam_336_12

	if anonteam_0_47.ui_tables.antiaim.legitaa_desync.value then
		local anonteam_336_13 = anonteam_0_47.ui_tables.antiaim.legitaa_mod.value_by_name

		if anonteam_336_13.Jitter then
			anonteam_336_12 = anonteam_0_54.break_lc_tick_switch
		end

		if anonteam_336_13["Randomize Jitter"] then
			anonteam_336_12 = utils.random_int(0, 1) == 1
		end
	end

	local anonteam_336_14 = entity.get_threat()
	local anonteam_336_15 = anonteam_0_47.ui_tables.antiaim.legitaa_freestand.value

	if anonteam_336_14 and anonteam_336_15 ~= 1 then
		local anonteam_336_16 = rage.antiaim:get_target()
		local anonteam_336_17 = anonteam_0_41.eye_pos

		anonteam_336_17.z = anonteam_336_0:get_hitbox_position(0).z

		local anonteam_336_18 = anonteam_336_0:get_origin()
		local anonteam_336_19 = anonteam_336_14:get_origin()

		anonteam_336_19.z = anonteam_336_19.z + 64

		local anonteam_336_20 = anonteam_336_0.m_vecMins
		local anonteam_336_21 = anonteam_336_0.m_vecMaxs
		local anonteam_336_22
		local anonteam_336_23
		local anonteam_336_24

		for iter_336_0 = 1, 3 do
			local anonteam_336_25 = vector():angles(0, anonteam_336_16 - 90, 0) * 20 * iter_336_0
			local anonteam_336_26 = utils.trace_hull(anonteam_336_18, anonteam_336_18 + anonteam_336_25, anonteam_336_20, anonteam_336_21, anonteam_336_0, 33636363, 3)

			anonteam_336_26.end_pos.z = anonteam_336_17.z

			local anonteam_336_27 = anonteam_336_26.end_pos

			if utils.trace_bullet(anonteam_336_14, anonteam_336_19, anonteam_336_27) > 0 then
				anonteam_336_22 = true

				break
			end
		end

		for iter_336_1 = 1, 3 do
			local anonteam_336_28 = vector():angles(0, anonteam_336_16 + 90, 0) * 20 * iter_336_1
			local anonteam_336_29 = utils.trace_hull(anonteam_336_18, anonteam_336_18 + anonteam_336_28, anonteam_336_20, anonteam_336_21, anonteam_336_0, 33636363, 3)

			anonteam_336_29.end_pos.z = anonteam_336_17.z

			local anonteam_336_30 = anonteam_336_29.end_pos

			if utils.trace_bullet(anonteam_336_14, anonteam_336_19, anonteam_336_30) > 0 then
				anonteam_336_23 = true

				break
			end
		end

		local anonteam_336_31 = utils.trace_bullet(anonteam_336_14, anonteam_336_19, anonteam_336_17) > 0

		if anonteam_336_22 and anonteam_336_23 or anonteam_336_31 then
			-- block empty
		elseif anonteam_336_22 then
			anonteam_336_12 = anonteam_336_15 == 2
			anonteam_336_12 = not anonteam_336_12
		elseif anonteam_336_23 then
			anonteam_336_12 = anonteam_336_15 == 3
			anonteam_336_12 = not anonteam_336_12
		end
	end

	anonteam_0_54.desync_side = anonteam_336_12

	anonteam_0_37.inverter:override(anonteam_336_12)
	anonteam_0_37.defensive:override(nil)
	anonteam_0_37.hide_shots_defensive:override(nil)
	anonteam_0_37.freestand:override(false)
	anonteam_0_37.hidden_yaw:override(false)
	anonteam_0_37.left_limit:override(60)
	anonteam_0_37.right_limit:override(60)

	anonteam_0_34.legit_aa = true
	arg_336_0.buttons = anonteam_0_6(arg_336_0.buttons, bit.bnot(32))
end

anonteam_0_54.last_button = nil
anonteam_0_54.manual_state = 0

function anonteam_0_54.manual_function()
	-- function 337
	local anonteam_337_0 = anonteam_0_47.ui_tables.antiaim

	if anonteam_337_0.forward_key.value then
		if anonteam_0_54.last_button ~= 3 then
			anonteam_0_54.manual_state = anonteam_0_54.manual_state == 3 and 0 or 3
			anonteam_0_54.last_button = 3
		end

		return
	end

	if anonteam_337_0.left_key.value then
		if anonteam_0_54.last_button ~= 1 then
			anonteam_0_54.manual_state = anonteam_0_54.manual_state == 1 and 0 or 1
			anonteam_0_54.last_button = 1
		end

		return
	end

	if anonteam_337_0.right_key.value then
		if anonteam_0_54.last_button ~= 2 then
			anonteam_0_54.manual_state = anonteam_0_54.manual_state == 2 and 0 or 2
			anonteam_0_54.last_button = 2
		end

		return
	end

	if anonteam_337_0.back_key.value then
		if anonteam_0_54.last_button ~= 4 then
			anonteam_0_54.manual_state = 0
			anonteam_0_54.last_button = 4
		end

		return
	end

	if anonteam_337_0.manual_type.str_value == "Hold" then
		anonteam_0_54.manual_state = 0
	end

	anonteam_0_54.last_button = nil
end

function anonteam_0_54.main_aa(arg_338_0)
	-- function 338
	local anonteam_338_0 = anonteam_0_41.ref
	local anonteam_338_1 = 1
	local anonteam_338_2 = 1
	local anonteam_338_3 = anonteam_0_41.velocity
	local anonteam_338_4 = anonteam_0_41.ground_tickcount > 1
	local anonteam_338_5 = anonteam_0_41.crouching
	local anonteam_338_6 = rage.exploit:get()

	if anonteam_338_4 then
		if anonteam_338_5 then
			anonteam_338_1 = anonteam_338_3 <= 2 and 51 or 52
		elseif anonteam_338_3 <= 2 then
			anonteam_338_1 = 2
		else
			anonteam_338_1 = anonteam_0_36.slowwalk and 3 or 4
		end
	else
		anonteam_338_1 = anonteam_338_5 and 62 or 61
	end

	local anonteam_338_7 = anonteam_0_47.ui_tables.antiaim
	local anonteam_338_8 = anonteam_338_1

	if anonteam_0_47.ui_tables.antiaim.list.value == 2 then
		anonteam_338_7 = anonteam_0_47.presets[anonteam_0_47.ui_tables.antiaim.preset_list.str_value]
	end

	anonteam_338_1 = anonteam_338_7["over_cond" .. anonteam_338_1].value and 1 or anonteam_338_1

	if arg_338_0.choked_commands == 0 then
		anonteam_0_54.switch_delay = anonteam_0_54.switch_delay + 1

		if anonteam_338_7["yaw_delay" .. anonteam_338_1].value < anonteam_0_54.switch_delay or anonteam_338_6 == 0 then
			if anonteam_0_11(anonteam_0_54.lc_timer - globals.tickcount) >= 12 or not anonteam_338_7["def_switch" .. anonteam_338_1].value then
				anonteam_0_54.tick_switch = not anonteam_0_54.tick_switch
				anonteam_0_54.yaw_counter = anonteam_0_54.yaw_counter + 1
			end

			anonteam_0_54.break_lc_tick_switch = not anonteam_0_54.break_lc_tick_switch
			anonteam_0_54.switch_delay = 0
		end
	else
		if anonteam_0_6(arg_338_0.buttons, anonteam_0_32.flags.IN_USE) ~= 0 and anonteam_0_47.ui_tables.antiaim.legitaa_switch.value then
			anonteam_0_54.legit_aa(arg_338_0)
		end

		if anonteam_338_7["roll_switch" .. anonteam_338_1].value then
			if anonteam_338_7["roll_type" .. anonteam_338_1].value == 1 then
				arg_338_0.view_angles.z = anonteam_338_7["roll_def_deg" .. anonteam_338_1].value
				arg_338_0.jitter_move = false

				anonteam_0_37.exales:override()
				anonteam_0_37.exales_pitch:override()
				anonteam_0_37.exales_roll:override()
			else
				anonteam_0_37.exales:override(true)
				anonteam_0_37.exales_pitch:override(anonteam_338_7["roll_ext_pit" .. anonteam_338_1].value)
				anonteam_0_37.exales_roll:override(anonteam_338_7["roll_ext_deg" .. anonteam_338_1].value)
			end
		else
			anonteam_0_37.exales:override()
			anonteam_0_37.exales_pitch:override()
			anonteam_0_37.exales_roll:override()
		end

		return
	end

	if anonteam_0_6(arg_338_0.buttons, anonteam_0_32.flags.IN_USE) ~= 0 and anonteam_0_47.ui_tables.antiaim.legitaa_switch.value then
		anonteam_0_54.legit_aa(arg_338_0)

		return
	end

	if anonteam_0_34.legit_aa then
		anonteam_0_37.pitch:override()
		anonteam_0_37.freestand:override()
		anonteam_0_37.yaw_at_targets:override()
		anonteam_0_37.hidden_yaw:override()

		anonteam_0_34.legit_aa = nil
	end

	local anonteam_338_9 = entity.get_threat()
	local anonteam_338_10 = anonteam_0_36.inverter

	anonteam_0_35.desync:override(anonteam_338_7["desync_switch" .. anonteam_338_1].value)

	if anonteam_338_7["desync_switch" .. anonteam_338_1].value then
		anonteam_0_37.left_limit:override(anonteam_338_7["desync_l" .. anonteam_338_1].value)
		anonteam_0_37.right_limit:override(anonteam_338_7["desync_r" .. anonteam_338_1].value)

		local anonteam_338_11 = anonteam_338_7["desync_mod" .. anonteam_338_1].value_by_name

		if anonteam_338_11.Jitter then
			anonteam_338_10 = anonteam_0_54.tick_switch
		end

		if anonteam_338_11["Randomize Jitter"] then
			anonteam_338_10 = anonteam_0_13(0, 1) == 1
		end

		local anonteam_338_12 = anonteam_338_7["desync_freestand" .. anonteam_338_1].value

		if anonteam_338_9 and anonteam_338_12 ~= 1 then
			local anonteam_338_13 = rage.antiaim:get_target()
			local anonteam_338_14 = anonteam_0_41.eye_pos

			anonteam_338_14.z = anonteam_338_0:get_hitbox_position(0).z

			local anonteam_338_15 = anonteam_338_0:get_origin()
			local anonteam_338_16 = anonteam_338_9:get_origin()

			anonteam_338_16.z = anonteam_338_16.z + 64

			local anonteam_338_17 = anonteam_338_0.m_vecMins
			local anonteam_338_18 = anonteam_338_0.m_vecMaxs
			local anonteam_338_19
			local anonteam_338_20
			local anonteam_338_21

			for iter_338_0 = 1, 3 do
				local anonteam_338_22 = vector():angles(0, anonteam_338_13 - 90, 0) * 20 * iter_338_0
				local anonteam_338_23 = utils.trace_hull(anonteam_338_15, anonteam_338_15 + anonteam_338_22, anonteam_338_17, anonteam_338_18, anonteam_338_0, 33636363, 3)

				anonteam_338_23.end_pos.z = anonteam_338_14.z

				local anonteam_338_24 = anonteam_338_23.end_pos

				if utils.trace_bullet(anonteam_338_9, anonteam_338_16, anonteam_338_24) > 0 then
					anonteam_338_19 = true

					break
				end
			end

			for iter_338_1 = 1, 3 do
				local anonteam_338_25 = vector():angles(0, anonteam_338_13 + 90, 0) * 20 * iter_338_1
				local anonteam_338_26 = utils.trace_hull(anonteam_338_15, anonteam_338_15 + anonteam_338_25, anonteam_338_17, anonteam_338_18, anonteam_338_0, 33636363, 3)

				anonteam_338_26.end_pos.z = anonteam_338_14.z

				local anonteam_338_27 = anonteam_338_26.end_pos

				if utils.trace_bullet(anonteam_338_9, anonteam_338_16, anonteam_338_27) > 0 then
					anonteam_338_20 = true

					break
				end
			end

			local anonteam_338_28 = utils.trace_bullet(anonteam_338_9, anonteam_338_16, anonteam_338_14) > 0

			if anonteam_338_19 and anonteam_338_20 or anonteam_338_28 then
				-- block empty
			elseif anonteam_338_19 then
				anonteam_338_10 = anonteam_338_12 == 2

				if anonteam_338_1 == 9 then
					anonteam_338_10 = not anonteam_338_10
				end
			elseif anonteam_338_20 then
				anonteam_338_10 = anonteam_338_12 == 3

				if anonteam_338_1 == 9 then
					anonteam_338_10 = not anonteam_338_10
				end
			end
		end
	end

	local anonteam_338_29 = 0

	if anonteam_338_7["yaw_switch" .. anonteam_338_1].value then
		anonteam_0_37.yaw_base:override("Backward")
		anonteam_0_37.yaw_modifier:override("Disabled")

		if anonteam_338_7["desync_switch" .. anonteam_338_1].value then
			anonteam_338_29 = anonteam_338_10 and anonteam_338_7["yaw_l" .. anonteam_338_1].value or anonteam_338_7["yaw_r" .. anonteam_338_1].value
			anonteam_338_29 = anonteam_338_29 + (anonteam_338_10 and utils.random_int(0, anonteam_338_7["yaw_randl" .. anonteam_338_1].value) or utils.random_int(0, anonteam_338_7["yaw_randr" .. anonteam_338_1].value))
		else
			anonteam_338_29 = anonteam_0_54.tick_switch and anonteam_338_7["yaw_l" .. anonteam_338_1].value or anonteam_338_7["yaw_r" .. anonteam_338_1].value
			anonteam_338_29 = anonteam_338_29 + (anonteam_0_54.tick_switch and utils.random_int(0, anonteam_338_7["yaw_randl" .. anonteam_338_1].value) or utils.random_int(0, anonteam_338_7["yaw_randr" .. anonteam_338_1].value))
		end

		anonteam_338_29 = anonteam_338_29 + anonteam_338_7["yaw_o" .. anonteam_338_1].value
		anonteam_338_29 = anonteam_338_29 + utils.random_int(0, anonteam_338_7["yaw_rando" .. anonteam_338_1].value)

		local anonteam_338_30 = anonteam_338_7["yaw_mod_combo" .. anonteam_338_1].value

		if anonteam_338_30 ~= 1 then
			local anonteam_338_31 = anonteam_338_7["yaw_deg" .. anonteam_338_1].value

			if anonteam_338_30 == 2 then
				anonteam_338_31 = anonteam_0_12(anonteam_338_31 / 2)
				anonteam_338_29 = anonteam_0_54.tick_switch and anonteam_338_31 + anonteam_338_29 or -anonteam_338_31 + anonteam_338_29
			end

			if anonteam_338_30 == 4 then
				anonteam_338_31 = utils.random_float(-1, 1) * anonteam_338_31
				anonteam_338_29 = anonteam_0_54.tick_switch and anonteam_338_31 + anonteam_338_29 or -anonteam_338_31 + anonteam_338_29
			end

			if anonteam_338_30 == 5 then
				local anonteam_338_32 = anonteam_0_54.spin_cache

				anonteam_0_54.spin_cache = anonteam_338_32 < math.abs(anonteam_338_31) and anonteam_338_32 + 2 or 0

				if anonteam_338_31 > 0 then
					anonteam_338_29 = anonteam_338_10 and -anonteam_338_32 + anonteam_338_29 or -anonteam_338_32 + anonteam_338_29
				else
					anonteam_338_29 = anonteam_338_10 and anonteam_338_32 + anonteam_338_29 or anonteam_338_32 + anonteam_338_29
				end
			end

			if anonteam_338_30 == 3 then
				local anonteam_338_33 = anonteam_338_7["xway_counter" .. anonteam_338_1].value

				if anonteam_338_33 < anonteam_0_54.yaw_counter then
					anonteam_0_54.yaw_counter = 1

					if anonteam_338_7["xway_shuffle" .. anonteam_338_1].value then
						anonteam_0_54.shuffle_array = anonteam_0_54.generate_shuffle_array(anonteam_338_33)
					end
				end

				local anonteam_338_34 = anonteam_0_54.ways[anonteam_338_33]
				local anonteam_338_35 = anonteam_0_54.yaw_counter

				anonteam_338_31 = anonteam_338_7["xway_switch" .. anonteam_338_1].value and anonteam_338_7["xwayn_" .. anonteam_338_1 .. anonteam_338_35].value or anonteam_0_12(anonteam_338_31 / anonteam_338_34[anonteam_338_35])

				if not anonteam_0_54.shuffle_array or anonteam_338_33 ~= #anonteam_0_54.shuffle_array then
					anonteam_0_54.shuffle_array = anonteam_0_54.generate_shuffle_array(anonteam_338_33)
				end

				anonteam_338_31 = anonteam_338_7["xway_switch" .. anonteam_338_1].value and anonteam_338_7["xwayn_" .. anonteam_338_1 .. anonteam_0_54.shuffle_array[anonteam_338_35]].value or anonteam_0_12(anonteam_338_7["yaw_deg" .. anonteam_338_1].value / anonteam_338_34[anonteam_0_54.shuffle_array[anonteam_338_35]])

				if anonteam_338_7["xway_sync" .. anonteam_338_1].value then
					anonteam_338_10 = anonteam_338_31 < 0
				end

				anonteam_338_29 = anonteam_338_31 + anonteam_338_29
			end

			if anonteam_338_30 == 6 and anonteam_0_11(anonteam_0_54.flick_delay - globals.curtime) > anonteam_338_7["flick_delay" .. anonteam_338_1].value / 10 then
				anonteam_338_29 = anonteam_338_29 + anonteam_338_7["flick_yaw" .. anonteam_338_1].value

				anonteam_0_37.desync:override(false)

				arg_338_0.no_choke = true
				anonteam_0_54.flick_delay = globals.curtime
			end

			if anonteam_338_30 == 7 then
				if anonteam_0_54.yaw_counter > 3 then
					anonteam_0_54.yaw_counter = 1
					anonteam_0_54.shuffle_array = anonteam_0_54.generate_shuffle_array(3)
				end

				local anonteam_338_36 = anonteam_0_54.yaw_counter
				local anonteam_338_37 = anonteam_0_54.ways[3]

				if not anonteam_0_54.shuffle_array or #anonteam_0_54.shuffle_array ~= 3 then
					anonteam_0_54.shuffle_array = anonteam_0_54.generate_shuffle_array(3)
				end

				anonteam_338_29 = anonteam_338_29 + anonteam_0_12(anonteam_338_31 * 4 / anonteam_338_37[anonteam_0_54.shuffle_array[anonteam_338_36]])

				if anonteam_338_7["xway_sync" .. anonteam_338_1].value then
					anonteam_338_10 = anonteam_338_31 < 0
				end
			end
		end
	end

	anonteam_0_37.hidden_yaw:override(anonteam_338_7["def_switch" .. anonteam_338_1].value)

	local anonteam_338_38
	local anonteam_338_39

	if anonteam_338_7["def_switch" .. anonteam_338_1].value and anonteam_338_6 == 1 then
		local anonteam_338_40 = anonteam_338_7["def_yaw" .. anonteam_338_1].value

		anonteam_338_39 = 0

		if anonteam_338_40 == 1 then
			anonteam_338_39 = nil
		end

		if anonteam_338_40 == 2 then
			anonteam_338_39 = anonteam_0_54.break_lc_tick_switch and -90 or 90
		end

		if anonteam_338_40 == 3 then
			anonteam_0_54.onetap_speed_value = anonteam_0_12(math.sin(globals.curtime) * anonteam_338_7["def_onetapspeed" .. anonteam_338_1].value)
			anonteam_0_54.onetap_defensive_value = anonteam_0_54.onetap_defensive_value + anonteam_0_54.onetap_speed_value

			if anonteam_0_11(anonteam_0_54.onetap_defensive_value) > 100000 then
				anonteam_0_54.onetap_defensive_value = 0
			end

			anonteam_338_39 = anonteam_0_54.onetap_defensive_value + 180
		end

		if anonteam_338_40 == 4 then
			anonteam_338_39 = utils.random_float(-1, 1) * anonteam_338_7["def_yaw_deg" .. anonteam_338_1].value
		end

		if anonteam_338_40 == 5 then
			anonteam_338_39 = anonteam_338_7["def_yaw_deg" .. anonteam_338_1].value
		end

		local anonteam_338_41 = anonteam_338_7["def_pitch" .. anonteam_338_1].str_value

		anonteam_338_38 = anonteam_0_54.pitch_table[anonteam_338_41]

		if anonteam_338_41 == "Sway" then
			anonteam_338_38 = math.sin(globals.curtime) * 89
		end

		if anonteam_338_41 == "Random" then
			anonteam_338_38 = anonteam_0_12(utils.random_float(-1, 1) * anonteam_338_7["pitch_deg" .. anonteam_338_1].value)
		end

		if anonteam_338_41 == "Custom" then
			anonteam_338_38 = anonteam_338_7["pitch_custom" .. anonteam_338_1].value
		end
	end

	local anonteam_338_42 = anonteam_338_8

	if anonteam_338_42 > 10 then
		anonteam_338_42 = tonumber(tostring(anonteam_338_42):sub(0, 1))
	end

	local anonteam_338_43
	local anonteam_338_44 = anonteam_0_47.ui_tables.unused.condition_list.elements_array[anonteam_338_42]

	if anonteam_0_47.ui_tables.antiaim.breaklc_ping.value_by_name[anonteam_338_44] and anonteam_338_9 and entity.get_player_resource().m_iPing[anonteam_338_9:get_index()] > 50 then
		anonteam_338_43 = true
	end

	if anonteam_0_47.ui_tables.antiaim.breaklc_always.value_by_name[anonteam_338_44] then
		anonteam_338_43 = true
	end

	if anonteam_0_47.ui_tables.antiaim.breaklc_extra.value_by_name["Condition Change"] then
		if anonteam_0_34.cond_change ~= anonteam_338_8 then
			anonteam_0_34.lc_active = globals.tickcount
		end

		anonteam_0_34.cond_change = anonteam_338_8
	end

	local anonteam_338_45 = anonteam_338_0:get_player_weapon()

	if anonteam_338_45 then
		if anonteam_0_47.ui_tables.antiaim.breaklc_extra.value_by_name["Weapon Change"] then
			local anonteam_338_46 = anonteam_338_45:get_weapon_index()

			if anonteam_0_34.last_weapon ~= anonteam_338_46 then
				anonteam_0_34.lc_active = globals.tickcount
			end

			anonteam_0_34.last_weapon = anonteam_338_46
		end

		if anonteam_0_47.ui_tables.antiaim.breaklc_extra.value_by_name.Reloading and anonteam_338_45:get_weapon_reload() ~= -1 then
			anonteam_338_43 = true
		end
	end

	anonteam_0_34.lc_active = anonteam_0_34.lc_active == nil and 0 or anonteam_0_34.lc_active

	if anonteam_0_11(anonteam_0_34.lc_active - globals.tickcount) < 16 then
		anonteam_338_43 = true
	end

	anonteam_0_37.inverter:override(anonteam_0_47.ui_tables.antiaim.preset_list.str_value ~= "Roll" and anonteam_338_10 or false)
	anonteam_0_37.fake_opt:override("")

	local anonteam_338_47 = anonteam_338_0.m_nTickBase

	if anonteam_338_47 - 3 > anonteam_0_54.lc_tickbase and anonteam_338_6 == 1 then
		anonteam_0_54.lc_timer = globals.tickcount
	end

	anonteam_0_54.lc_tickbase = anonteam_338_47

	local anonteam_338_48 = 0
	local anonteam_338_49 = 0
	local anonteam_338_50 = rage.antiaim:get_target(true)

	if anonteam_0_47.ui_tables.antiaim.base_compensate.value and anonteam_338_5 and anonteam_338_4 and arg_338_0.forwardmove ~= 0 and arg_338_0.sidemove == 450 then
		local anonteam_338_51 = anonteam_338_10 and anonteam_0_37.left_limit.override_value or anonteam_0_37.right_limit.override_value

		anonteam_338_49 = anonteam_338_10 and 0 or 65

		if anonteam_338_10 then
			-- block empty
		else
			local anonteam_338_52 = math.min(0.1, anonteam_338_51 / 60)

			anonteam_338_52 = (anonteam_0_37.desync.override_value == nil and anonteam_0_37.desync.value or anonteam_0_37.desync.override_value) and anonteam_338_52 or 0.6
			anonteam_338_49 = anonteam_338_10 and 0 or 65
			anonteam_338_49 = anonteam_338_49 * math.min(anonteam_338_3 / 80, 1) * anonteam_338_52
		end

		anonteam_338_29 = anonteam_338_49 + anonteam_338_29
	end

	if anonteam_0_47.ui_tables.antiaim.base_yaw.str_value == "At Target" and anonteam_0_47.ui_tables.antiaim.predict_switch.value and anonteam_338_9 and not entity.get_threat(true) and not anonteam_338_50 then
		local anonteam_338_53 = anonteam_338_0:get_hitbox_position(3)
		local anonteam_338_54 = rage.antiaim:get_target()
		local anonteam_338_55 = anonteam_338_9:get_eye_position()
		local anonteam_338_56

		for iter_338_2 = 1, 10 do
			local anonteam_338_57 = anonteam_338_55 + vector():angles(0, anonteam_338_54 - 90, 0) * 20 * iter_338_2
			local anonteam_338_58, anonteam_338_59 = utils.trace_bullet(anonteam_338_9, anonteam_338_57, anonteam_338_53)

			if anonteam_338_58 > 0 and anonteam_338_59.entity == anonteam_338_0 then
				anonteam_338_56 = anonteam_338_57

				break
			end
		end

		local anonteam_338_60

		for iter_338_3 = 1, 10 do
			local anonteam_338_61 = anonteam_338_55 + vector():angles(0, anonteam_338_54 + 90, 0) * 20 * iter_338_3
			local anonteam_338_62, anonteam_338_63 = utils.trace_bullet(anonteam_338_9, anonteam_338_61, anonteam_338_53)

			if anonteam_338_62 > 0 and anonteam_338_63.entity == anonteam_338_0 then
				if not anonteam_338_56 then
					anonteam_338_56 = anonteam_338_61

					break
				end

				anonteam_338_60 = anonteam_338_61

				break
			end
		end

		if anonteam_338_56 then
			anonteam_338_56.z = 0
			anonteam_338_53.z = 0

			local anonteam_338_64 = (anonteam_338_53 - anonteam_338_56):angles()
			local anonteam_338_65 = anonteam_338_54 - anonteam_0_12(anonteam_338_64.y)

			anonteam_338_48 = -math.normalize_yaw(anonteam_338_65)

			if anonteam_338_60 and anonteam_338_64 then
				anonteam_338_48 = 0
			end
		end
	end

	anonteam_0_54.predict_yaw = anonteam_338_48

	anonteam_0_37.yaw_offset:override((anonteam_0_11(anonteam_0_54.lc_timer - globals.tickcount) >= 12 or not anonteam_338_7["def_switch" .. anonteam_338_1].value) and anonteam_338_29 + anonteam_338_48 or 0)

	if anonteam_338_7["roll_switch" .. anonteam_338_1].value then
		if anonteam_338_7["roll_type" .. anonteam_338_1].value == 1 then
			arg_338_0.view_angles.z = anonteam_338_7["roll_def_deg" .. anonteam_338_1].value
			arg_338_0.jitter_move = false

			anonteam_0_37.exales:override()
			anonteam_0_37.exales_pitch:override()
			anonteam_0_37.exales_roll:override()
		else
			anonteam_0_37.exales:override(true)
			anonteam_0_37.exales_pitch:override(anonteam_338_7["roll_ext_pit" .. anonteam_338_1].value)
			anonteam_0_37.exales_roll:override(anonteam_338_7["roll_ext_deg" .. anonteam_338_1].value)
		end
	else
		anonteam_0_37.exales:override()
		anonteam_0_37.exales_pitch:override()
		anonteam_0_37.exales_roll:override()
	end

	if anonteam_338_45 and anonteam_338_45:get_weapon_info().weapon_type == 9 and anonteam_338_45.m_bPinPulled then
		anonteam_338_43 = nil
	end

	if anonteam_0_37.freestand.value then
		local anonteam_338_66 = rage.antiaim:get_target(true)

		if anonteam_0_47.ui_tables.antiaim.frees_dis_def.value then
			if anonteam_338_66 then
				anonteam_338_38 = nil
				anonteam_338_39 = nil
				anonteam_338_43 = nil

				anonteam_0_37.hidden_yaw:override(false)
			end
		elseif anonteam_338_6 == 1 and anonteam_338_66 then
			local anonteam_338_67 = anonteam_0_47.ui_tables.antiaim.frees_yaw.value

			anonteam_338_39 = 0

			if anonteam_338_67 == 1 then
				local anonteam_338_68 = rage.antiaim:get_target()

				anonteam_338_39 = anonteam_0_11(anonteam_338_66 - math.normalize_yaw(anonteam_338_68 - 90)) < anonteam_0_11(anonteam_338_66 - math.normalize_yaw(anonteam_338_68 + 90)) and anonteam_338_66 - math.normalize_yaw(anonteam_338_68 + 90) or anonteam_338_66 - math.normalize_yaw(anonteam_338_68 - 90)
			end

			if anonteam_338_67 == 2 then
				anonteam_338_39 = nil
			end

			if anonteam_338_67 == 3 then
				anonteam_338_39 = anonteam_0_54.break_lc_tick_switch and -90 or 90
			end

			if anonteam_338_67 == 4 then
				anonteam_0_54.onetap_speed_value = anonteam_0_12(math.sin(globals.curtime) * anonteam_0_47.ui_tables.antiaim.frees_yaw_onetap.value)
				anonteam_0_54.onetap_defensive_value = anonteam_0_54.onetap_defensive_value + anonteam_0_54.onetap_speed_value

				if anonteam_0_11(anonteam_0_54.onetap_defensive_value) > 100000 then
					anonteam_0_54.onetap_defensive_value = 0
				end

				anonteam_338_39 = anonteam_0_54.onetap_defensive_value + 180
			end

			if anonteam_338_67 == 5 then
				anonteam_338_39 = utils.random_float(-1, 1) * 180
			end

			local anonteam_338_69 = anonteam_0_47.ui_tables.antiaim.frees_pitch.str_value

			anonteam_338_38 = anonteam_0_54.pitch_table[anonteam_338_69]

			if anonteam_338_69 == "Sway" then
				anonteam_338_38 = math.sin(globals.curtime) * 89
			end

			if anonteam_338_69 == "Random" then
				anonteam_338_38 = anonteam_0_12(utils.random_float(-1, 1) * 89)
			end

			if anonteam_338_69 == "Custom" then
				anonteam_338_38 = anonteam_0_47.ui_tables.antiaim.frees_pitch_custom.value
			end

			if anonteam_338_8 ~= 2 then
				anonteam_338_43 = nil
			else
				anonteam_338_43 = true

				anonteam_0_37.hidden_yaw:override(true)
			end
		end
	end

	anonteam_0_54.safe_head = false

	if anonteam_0_47.ui_tables.antiaim.safe_switch.value and anonteam_338_9 and anonteam_0_54.manual_state == 0 and not rage.antiaim:get_target(true) then
		local anonteam_338_70 = anonteam_338_0:get_hitbox_position(0).z
		local anonteam_338_71 = anonteam_0_41.eye_pos
		local anonteam_338_72 = anonteam_338_9:get_eye_position()
		local anonteam_338_73 = rage.antiaim:get_target()
		local anonteam_338_74 = anonteam_338_71 + vector():angles(0, anonteam_338_73, 0) * 10

		anonteam_338_74.z = anonteam_338_70 + 4.5

		local anonteam_338_75
		local anonteam_338_76
		local anonteam_338_77 = (anonteam_338_71 + (anonteam_338_72 - anonteam_338_71):normalized() * 30):closest_ray_point(anonteam_338_72, anonteam_338_74)
		local anonteam_338_78, anonteam_338_79 = utils.trace_bullet(anonteam_338_9, anonteam_338_77, anonteam_338_74, entity.get(0))

		if anonteam_338_79 and anonteam_338_79.entity == anonteam_338_0 and anonteam_338_79.hitbox ~= 0 then
			anonteam_0_37.left_limit:override(0)
			anonteam_0_37.right_limit:override(0)

			if anonteam_338_8 == 51 then
				anonteam_0_37.yaw_offset:override(12 + anonteam_338_48)
			else
				anonteam_0_37.yaw_offset:override(0 + anonteam_338_48 + anonteam_338_49)
			end

			if anonteam_0_47.ui_tables.antiaim.safe_def.value then
				anonteam_338_38 = nil
				anonteam_338_39 = 0
			end

			if not anonteam_0_47.ui_tables.antiaim.breaklc_always.value_by_name["Safe Head"] then
				anonteam_338_43 = nil
			end

			anonteam_0_54.safe_head = true
		end
	end

	if anonteam_338_38 ~= nil then
		rage.antiaim:override_hidden_pitch(anonteam_338_38)
	end

	if anonteam_338_39 ~= nil then
		rage.antiaim:override_hidden_yaw_offset(anonteam_338_39)
	end

	anonteam_0_37.yaw_at_targets:override(anonteam_0_47.ui_tables.antiaim.base_yaw.str_value)

	if anonteam_0_54.manual_state ~= 0 then
		if anonteam_0_54.manual_state == 1 then
			anonteam_338_43 = nil

			anonteam_0_37.yaw_offset:override(-90)
			anonteam_0_35.inverter:set(true)
		end

		if anonteam_0_54.manual_state == 2 then
			anonteam_338_43 = nil

			anonteam_0_37.yaw_offset:override(90)
			anonteam_0_35.inverter:set(true)
		end

		if anonteam_0_54.manual_state == 3 then
			anonteam_338_43 = nil

			anonteam_0_37.yaw_offset:override(180)
			anonteam_0_35.inverter:set(true)
		end

		anonteam_0_37.yaw_at_targets:override(anonteam_0_47.ui_tables.antiaim.manual_view.str_value)
	end

	local anonteam_338_80

	if anonteam_0_47.ui_tables.antiaim.frees_disable.value_by_name[anonteam_338_44] then
		anonteam_338_80 = false
	end

	if entity.get_game_rules().m_fRoundStartTime > globals.curtime then
		anonteam_338_43 = nil
	end

	anonteam_0_54.desync_side = anonteam_338_10

	anonteam_0_37.freestand:override(anonteam_338_80)
	anonteam_0_37.defensive:override(anonteam_338_43 and "Always On" or anonteam_338_43)
	anonteam_0_37.hide_shots_defensive:override(anonteam_338_43 and "Break LC" or anonteam_338_43)
	anonteam_0_37.pitch:override(anonteam_0_47.ui_tables.antiaim.base_pitch.str_value)
end

function anonteam_0_54.restore_menu()
	-- function 339
	anonteam_0_37.pitch:override()
	anonteam_0_37.yaw_base:override()
	anonteam_0_37.yaw_at_targets:override()
	anonteam_0_37.yaw_offset:override()
	anonteam_0_37.yaw_modifier:override()
	anonteam_0_37.yaw_modifier_offset:override()
	anonteam_0_37.desync:override()
	anonteam_0_35.desync:override()
	anonteam_0_37.inverter:override()
	anonteam_0_37.fake_opt:override()
	anonteam_0_37.left_limit:override()
	anonteam_0_37.right_limit:override()
	anonteam_0_37.desync_freestand:override()
	anonteam_0_37.exales:override()
	anonteam_0_37.exales_pitch:override()
	anonteam_0_37.exales_roll:override()
	anonteam_0_37.freestand:override()
	anonteam_0_37.defensive:override()
	anonteam_0_37.fakelag_slider:override()
	anonteam_0_37.double_tap_fl:override()
	anonteam_0_37.hidden_yaw:override()

	anonteam_0_54.manual_state = 0
	anonteam_0_54.safe_head = false
	anonteam_0_54.predict_yaw = 0
end

anonteam_0_47.ui_tables.antiaim.list:set_callback(function()
	-- function 340
	if anonteam_0_47.ui_tables.antiaim.list.value == 1 then
		anonteam_0_54.restore_menu()
		events.createmove:unset(anonteam_0_54.manual_function)
		events.createmove:unset(anonteam_0_54.main_aa)
	else
		events.createmove:set(anonteam_0_54.manual_function)
		events.createmove:set(anonteam_0_54.main_aa)
	end
end, true)
events.shutdown:set(function()
	-- function 341
	anonteam_0_54.restore_menu()
end)

local anonteam_0_55 = {
	hitgroup_str = {
		[0] = "generic",
		"head",
		"chest",
		"stomach",
		"left arm",
		"right arm",
		"left leg",
		"right leg",
		"neck",
		"generic",
		"dormant"
	},
	last_bullet_impact = {},
	shot_array = {},
	dormant_memory = {},
	spread_check = function(arg_342_0)
		-- function 342
		if not arg_342_0 or not arg_342_0.shot_info or not arg_342_0.bullet_impact_info then
			return 0
		end

		local anonteam_342_0 = anonteam_0_42(arg_342_0.shot_info.l_pos, arg_342_0.bullet_impact_info.vector)

		return anonteam_0_11(anonteam_342_0.y - arg_342_0.shot_info.viewangles.y) + anonteam_0_11(anonteam_342_0.x - arg_342_0.shot_info.viewangles.x)
	end
}

function anonteam_0_55.dormant_shot(arg_343_0)
	-- function 343
	if not anonteam_0_55.shot_array[#anonteam_0_55.shot_array] or anonteam_0_55.shot_array[#anonteam_0_55.shot_array].tickcount ~= globals.tickcount then
		anonteam_0_55.shot_array[#anonteam_0_55.shot_array + 1] = {
			tickcount = globals.tickcount,
			shot_info = arg_343_0
		}
	end
end

function anonteam_0_55.dormant_bullet_impact(arg_344_0)
	-- function 344
	if #anonteam_0_55.shot_array == 0 then
		return
	end

	if entity.get(arg_344_0.userid, true) ~= anonteam_0_41.ref then
		return
	end

	local anonteam_344_0 = vector(arg_344_0.x, arg_344_0.y, arg_344_0.z)

	if not anonteam_0_55.last_bullet_impact.tickcount or anonteam_0_55.last_bullet_impact.tickcount ~= globals.tickcount then
		anonteam_0_55.last_bullet_impact = {
			tickcount = globals.tickcount,
			vector = anonteam_344_0
		}
		anonteam_0_55.shot_array[1].bullet_impact_info = anonteam_0_55.last_bullet_impact
		anonteam_0_55.shot_array[1].bullet_impact_tickcount = globals.tickcount
	end
end

function anonteam_0_55.dormant_player_hurt(arg_345_0)
	-- function 345
	if #anonteam_0_55.shot_array == 0 then
		return
	end

	local anonteam_345_0 = entity.get(arg_345_0.userid, true)

	if not anonteam_345_0 or anonteam_345_0 == anonteam_0_41.ref then
		return
	end

	if entity.get(arg_345_0.attacker, true) ~= anonteam_0_41.ref then
		return
	end

	anonteam_0_55.shot_array[1].player_hurt_info = {
		damage = arg_345_0.dmg_health,
		hitgroup = arg_345_0.hitgroup
	}
end

function anonteam_0_55.dormant_registered_shot()
	-- function 346
	if #anonteam_0_55.shot_array == 0 then
		return
	end

	local anonteam_346_0 = utils.net_channel()

	for iter_346_0 = 1, #anonteam_0_55.shot_array do
		if not anonteam_0_55.shot_array[iter_346_0] then
			-- block empty
		else
			local anonteam_346_1 = anonteam_0_55.shot_array[iter_346_0]
			local anonteam_346_2 = (anonteam_346_0.latency[0] + anonteam_346_0.latency[1]) / globals.tickinterval + 20
			local anonteam_346_3 = entity.get(anonteam_346_1.shot_info.index)

			if anonteam_346_1.tickcount + anonteam_346_2 < globals.tickcount then
				anonteam_0_5(anonteam_0_55.shot_array, iter_346_0)
			elseif not anonteam_346_1.bullet_impact_tickcount then
				-- block empty
			else
				if anonteam_346_1.player_hurt_info then
					local anonteam_346_4 = {
						wanted_hitgroup = 10,
						backtrack = 0,
						target = anonteam_346_3,
						damage = anonteam_346_1.player_hurt_info.damage,
						hitchance = anonteam_346_1.shot_info.hitchance,
						hitgroup = anonteam_346_1.player_hurt_info.hitgroup,
						wanted_damage = anonteam_346_1.shot_info.damage
					}

					anonteam_0_31.register_hitlog(anonteam_346_4)

					if anonteam_0_47.ui_tables.visuals.hitmarker_switch.value then
						anonteam_0_4(anonteam_0_31.hitmarkers_list, #anonteam_0_31.hitmarkers_list, {
							color = "hit",
							alpha = 0.1,
							pos = anonteam_346_1.shot_info.shooting_pos,
							reason = anonteam_346_1.player_hurt_info.damage,
							curtime = globals.curtime
						})
					end
				else
					local anonteam_346_5 = anonteam_0_55.spread_check(anonteam_346_1)

					if anonteam_346_5 < 2.5 or anonteam_346_5 > 50 then
						anonteam_0_55.dormant_memory[anonteam_346_1.shot_info.index].miss_pos = entity.get(anonteam_346_1.shot_info.index):get_origin()

						local anonteam_346_6 = {
							state = "dormancy",
							wanted_hitgroup = 10,
							wanted_damage = 0,
							hitgroup = 3,
							damage = 0,
							backtrack = 0,
							target = anonteam_346_3,
							hitchance = anonteam_346_1.shot_info.hitchance
						}

						anonteam_0_31.register_hitlog(anonteam_346_6)

						if anonteam_0_47.ui_tables.visuals.hitmarker_switch.value then
							anonteam_0_4(anonteam_0_31.hitmarkers_list, #anonteam_0_31.hitmarkers_list, {
								color = "dormancy",
								alpha = 0.1,
								reason = "DORMANCY",
								pos = anonteam_346_1.shot_info.shooting_pos,
								curtime = globals.curtime
							})
						end
					else
						local anonteam_346_7 = {
							state = "spread",
							wanted_hitgroup = 10,
							wanted_damage = 0,
							hitgroup = 3,
							damage = 0,
							backtrack = 0,
							target = anonteam_346_3,
							hitchance = anonteam_346_1.shot_info.hitchance
						}

						anonteam_0_31.register_hitlog(anonteam_346_7)

						if anonteam_0_47.ui_tables.visuals.hitmarker_switch.value then
							anonteam_0_4(anonteam_0_31.hitmarkers_list, #anonteam_0_31.hitmarkers_list, {
								color = "spread",
								alpha = 0.1,
								reason = "SPREAD",
								pos = anonteam_346_1.shot_info.shooting_pos,
								curtime = globals.curtime
							})
						end
					end
				end

				anonteam_0_5(anonteam_0_55.shot_array, iter_346_0)
			end
		end
	end
end

function anonteam_0_55.hitchance_calc(arg_347_0, arg_347_1, arg_347_2)
	-- function 347
	local anonteam_347_0 = 0
	local anonteam_347_1 = anonteam_0_23()
	local anonteam_347_2 = anonteam_347_1:get_eye_position()
	local anonteam_347_3 = anonteam_347_1:get_player_weapon()
	local anonteam_347_4 = (anonteam_347_3:get_inaccuracy() + anonteam_347_3:get_spread()) * 1
	local anonteam_347_5 = anonteam_0_42(anonteam_347_2, arg_347_2)

	for iter_347_0 = 0, 128 do
		local anonteam_347_6 = anonteam_347_2 + (arg_347_0 + vector(utils.random_float(-anonteam_347_4, anonteam_347_4), utils.random_float(-anonteam_347_4, anonteam_347_4), utils.random_float(-anonteam_347_4, anonteam_347_4))) * #arg_347_1
		local anonteam_347_7, anonteam_347_8 = utils.trace_bullet(anonteam_347_1, anonteam_347_2, anonteam_347_6)
		local anonteam_347_9 = anonteam_347_5 - anonteam_0_42(anonteam_347_2, anonteam_347_8.end_pos)

		if math.abs(anonteam_347_9.x) + math.abs(anonteam_347_9.y) < 2 then
			anonteam_347_0 = anonteam_347_0 + 1
		end
	end

	return anonteam_347_0 / 128 * 100
end

function anonteam_0_55.save_pos_on_death(arg_348_0)
	-- function 348
	local anonteam_348_0 = entity.get(arg_348_0.userid, true)
	local anonteam_348_1 = anonteam_348_0:get_index()
	local anonteam_348_2 = anonteam_0_55.dormant_memory[anonteam_348_1]

	if anonteam_348_0:is_enemy() then
		if not anonteam_348_2 then
			anonteam_0_55.dormant_memory[anonteam_348_1] = {}
			anonteam_0_55.dormant_memory[anonteam_348_1].miss_pos = anonteam_348_0:get_origin()
			anonteam_0_55.dormant_memory[anonteam_348_1].last_pos = vector(0, 0, 0)
			anonteam_0_55.dormant_memory[anonteam_348_1].last_update = globals.tickcount
			anonteam_0_55.dormant_memory[anonteam_348_1].last_alpha = 0

			local anonteam_348_3 = anonteam_0_55.dormant_memory[anonteam_348_1]
		else
			anonteam_0_55.dormant_memory[anonteam_348_1].miss_pos = anonteam_348_0:get_origin()
		end
	end
end

events.player_death:set(anonteam_0_55.save_pos_on_death)
events.player_connect_full:set(anonteam_0_55.save_pos_on_death)
events.player_team:set(anonteam_0_55.save_pos_on_death)
events.round_start:set(function()
	-- function 349
	local anonteam_349_0 = entity.get_players(true, true)

	for iter_349_0 = 1, #anonteam_349_0 do
		local anonteam_349_1 = anonteam_349_0[iter_349_0]

		if not anonteam_349_1 then
			-- block empty
		else
			local anonteam_349_2 = anonteam_349_1:get_index()
			local anonteam_349_3 = anonteam_0_55.dormant_memory[anonteam_349_2]

			if anonteam_349_1:is_enemy() then
				if not anonteam_349_3 then
					anonteam_0_55.dormant_memory[anonteam_349_2] = {}
					anonteam_0_55.dormant_memory[anonteam_349_2].miss_pos = anonteam_349_1:get_origin()
					anonteam_0_55.dormant_memory[anonteam_349_2].last_pos = vector(0, 0, 0)
					anonteam_0_55.dormant_memory[anonteam_349_2].last_update = globals.tickcount
					anonteam_0_55.dormant_memory[anonteam_349_2].last_alpha = 0

					local anonteam_349_4 = anonteam_0_55.dormant_memory[anonteam_349_2]
				else
					anonteam_0_55.dormant_memory[anonteam_349_2].miss_pos = anonteam_349_1:get_origin()
				end
			end
		end
	end
end)

anonteam_0_55.dormant_weapons = {
	[38] = true,
	[40] = true,
	[64] = true,
	[11] = true,
	[9] = true
}

local anonteam_0_56 = 0

function anonteam_0_55.dormant_aimbot_func(arg_350_0)
	-- function 350
	if entity.get_game_rules().m_fRoundStartTime + 1 > globals.curtime then
		return
	end

	local anonteam_350_0 = anonteam_0_41.ref
	local anonteam_350_1 = anonteam_350_0:get_eye_position()
	local anonteam_350_2 = anonteam_0_41.velocity
	local anonteam_350_3 = anonteam_0_41.ground_tickcount > 1
	local anonteam_350_4 = anonteam_0_41.crouching
	local anonteam_350_5 = rage.exploit:get()
	local anonteam_350_6 = anonteam_0_35.dmg:get()

	anonteam_350_6 = anonteam_0_47.ui_tables.ragebot.dormant_dmgswitch.value and anonteam_350_6 or anonteam_0_47.ui_tables.ragebot.dormant_dmg.value

	local anonteam_350_7 = anonteam_350_0:get_player_weapon()

	if not anonteam_350_7 then
		return
	end

	local anonteam_350_8 = anonteam_350_7:get_weapon_index()

	if not anonteam_0_55.dormant_weapons[anonteam_350_8] then
		return
	end

	if anonteam_350_7.m_flNextSecondaryAttack and anonteam_350_7.m_flNextSecondaryAttack - globals.curtime > 0 and anonteam_0_56 < 17 then
		anonteam_0_56 = anonteam_0_56 + 1
	else
		anonteam_0_56 = 0
	end

	local anonteam_350_9 = anonteam_0_35.hide_shots:get() and 0.05 or 0

	anonteam_350_9 = anonteam_0_35.double_tap:get() and 0 or anonteam_350_9

	if anonteam_350_7.m_iClip1 == 0 then
		return
	end

	if anonteam_350_7.m_flNextPrimaryAttack + anonteam_350_9 > globals.curtime then
		return
	end

	local anonteam_350_10 = anonteam_350_0.m_flDuckAmount
	local anonteam_350_11 = anonteam_0_35.fakeduck:get() and anonteam_350_10 > 0.8 or true
	local anonteam_350_12 = anonteam_0_35.double_tap:get() and 1 or 0
	local anonteam_350_13 = entity.get_players(true, true)

	for iter_350_0 = 1, #anonteam_350_13 do
		local anonteam_350_14 = anonteam_350_13[iter_350_0]

		if not anonteam_350_14 then
			-- block empty
		else
			local anonteam_350_15 = anonteam_350_14:get_index()
			local anonteam_350_16 = anonteam_0_55.dormant_memory[anonteam_350_15]

			if not anonteam_350_16 then
				anonteam_0_55.dormant_memory[anonteam_350_15] = {}
				anonteam_0_55.dormant_memory[anonteam_350_15].miss_pos = vector(0, 0, 0)
				anonteam_0_55.dormant_memory[anonteam_350_15].last_pos = vector(0, 0, 0)
				anonteam_0_55.dormant_memory[anonteam_350_15].last_update = globals.tickcount
				anonteam_0_55.dormant_memory[anonteam_350_15].last_alpha = 0
				anonteam_350_16 = anonteam_0_55.dormant_memory[anonteam_350_15]
			end

			if not anonteam_350_14:is_alive() then
				-- block empty
			else
				local anonteam_350_17 = anonteam_350_14:get_network_state()

				if anonteam_350_17 == 0 or anonteam_350_17 == 1 then
					anonteam_350_16.miss_pos = vector(0, 0, 0)
					anonteam_0_55.dormant_memory[anonteam_350_15].last_update = globals.tickcount
				else
					local anonteam_350_18 = anonteam_350_14:get_bbox()

					if anonteam_0_55.dormant_memory[anonteam_350_15].last_alpha ~= 1 and anonteam_350_18.alpha == 1 then
						anonteam_350_16.miss_pos = vector(0, 0, 0)
						anonteam_0_55.dormant_memory[anonteam_350_15].last_update = globals.tickcount
					end

					anonteam_0_55.dormant_memory[anonteam_350_15].last_alpha = anonteam_350_18.alpha

					local anonteam_350_19 = anonteam_350_14:get_origin()
					local anonteam_350_20 = anonteam_350_14.m_vecMaxs
					local anonteam_350_21 = anonteam_350_14.m_vecMins

					anonteam_350_20 = anonteam_350_20 == vector(0, 0, 0) and vector(16, 16, 72) or anonteam_350_20
					anonteam_350_21 = anonteam_350_21 == vector(0, 0, 0) and vector(-16, -16, 0) or anonteam_350_21

					local anonteam_350_22 = anonteam_350_19 + vector((anonteam_350_21.x + anonteam_350_20.x) / 4, (anonteam_350_21.y + anonteam_350_20.y) / 16, anonteam_350_21.z)

					if anonteam_350_19:dist(anonteam_350_16.miss_pos) < 5 then
						-- block empty
					else
						local anonteam_350_23 = {
							{
								damage = 0,
								pos = vector(0, 0, 0),
								scale = vector(0, 0, anonteam_350_20.z / 1.8)
							},
							{
								damage = 0,
								pos = vector(0, 0, 0),
								scale = vector(0, 0, anonteam_350_20.z / 1.35)
							}
						}

						for iter_350_1 = 1, 2 do
							local anonteam_350_24 = anonteam_350_23[iter_350_1]
							local anonteam_350_25, anonteam_350_26 = utils.trace_bullet(anonteam_350_0, anonteam_350_1, anonteam_350_22 + anonteam_350_24.scale)

							anonteam_350_23[iter_350_1].pos = anonteam_350_22 + anonteam_350_24.scale
							anonteam_350_23[iter_350_1].damage = anonteam_350_26.entity ~= entity.get(0) and (anonteam_350_26.entity == anonteam_350_14 and anonteam_350_25 or 0) or anonteam_350_25
						end

						local anonteam_350_27 = 0
						local anonteam_350_28 = {
							index = anonteam_350_14:get_index(),
							l_pos = anonteam_350_1,
							player_pos = anonteam_350_22
						}

						if anonteam_350_23[2].damage > anonteam_350_23[1].damage then
							anonteam_350_22 = anonteam_350_23[2].pos
							anonteam_350_27 = anonteam_350_23[2].damage
						else
							anonteam_350_22 = anonteam_350_23[1].pos
							anonteam_350_27 = anonteam_350_23[1].damage
						end

						if anonteam_350_27 <= 0 or anonteam_350_27 < anonteam_350_6 then
							-- block empty
						else
							if anonteam_350_8 ~= 64 and not anonteam_350_0.m_bIsScoped then
								arg_350_0.buttons = anonteam_0_15(arg_350_0.buttons, anonteam_0_32.flags.IN_ZOOM)

								return
							end

							anonteam_0_55.player_pos_visual = anonteam_350_22

							local anonteam_350_29 = anonteam_0_42(anonteam_350_1, anonteam_350_22)
							local anonteam_350_30 = anonteam_0_12(anonteam_0_55.hitchance_calc(vector():angles(anonteam_350_29), anonteam_350_1 - anonteam_350_22, anonteam_350_22))

							arg_350_0.block_movement = 1

							if anonteam_350_30 >= (anonteam_350_3 and 70 or 40) and anonteam_350_11 then
								arg_350_0.view_angles.x = anonteam_350_29.x
								arg_350_0.view_angles.y = anonteam_350_29.y
								arg_350_0.view_angles.z = 0
								anonteam_350_28.viewangles = arg_350_0.view_angles
								anonteam_350_28.hitchance = anonteam_350_30
								anonteam_350_28.shooting_pos = anonteam_350_22
								anonteam_350_28.damage = anonteam_350_27

								if anonteam_350_8 ~= 64 or anonteam_0_56 > 16 - anonteam_350_12 and anonteam_0_56 < 18 - anonteam_350_12 then
									arg_350_0.buttons = anonteam_0_15(arg_350_0.buttons, 1)

									if anonteam_350_8 ~= 64 or anonteam_0_56 == 17 - anonteam_350_12 then
										anonteam_0_55.dormant_shot(anonteam_350_28)
									end
								end

								break
							else
								return
							end
						end
					end
				end
			end
		end
	end
end

anonteam_0_47.ui_tables.ragebot.dormant_switch:set_callback(function()
	-- function 351
	if anonteam_0_47.ui_tables.ragebot.dormant_switch.value then
		events.createmove:set(anonteam_0_55.dormant_aimbot_func)
		events.bullet_impact:set(anonteam_0_55.dormant_bullet_impact)
		events.player_hurt:set(anonteam_0_55.dormant_player_hurt)
		events.render:set(anonteam_0_55.dormant_registered_shot)
		ui.find("Aimbot", "Ragebot", "Main", "Enabled", "Dormant Aimbot"):override(false)
	else
		events.createmove:unset(anonteam_0_55.dormant_aimbot_func)
		events.bullet_impact:unset(anonteam_0_55.dormant_bullet_impact)
		events.player_hurt:unset(anonteam_0_55.dormant_player_hurt)
		events.render:unset(anonteam_0_55.dormant_registered_shot)
		ui.find("Aimbot", "Ragebot", "Main", "Enabled", "Dormant Aimbot"):override()
	end
end, true)
events.shutdown:set(function()
	-- function 352
	ui.find("Aimbot", "Ragebot", "Main", "Enabled", "Dormant Aimbot"):override()
end)

anonteam_0_55.ai_cache = {}

function anonteam_0_55.go_to_pos(arg_353_0, arg_353_1)
	-- function 353
	local anonteam_353_0 = anonteam_0_41.ref:get_origin()
	local anonteam_353_1 = anonteam_353_0.x - arg_353_1.x
	local anonteam_353_2 = anonteam_353_0.y - arg_353_1.y
	local anonteam_353_3 = render.camera_angles().y

	arg_353_0.forwardmove = -22 * (anonteam_353_1 * anonteam_0_10(anonteam_353_3 / 180 * anonteam_0_8) + anonteam_353_2 * anonteam_0_9(anonteam_353_3 / 180 * anonteam_0_8))
	arg_353_0.sidemove = 22 * (anonteam_353_2 * anonteam_0_10(anonteam_353_3 / 180 * anonteam_0_8) - anonteam_353_1 * anonteam_0_9(anonteam_353_3 / 180 * anonteam_0_8))
end

local anonteam_0_57 = {}

anonteam_0_55.ai_peek_start_pos = nil
anonteam_0_55.ai_peek_side = nil
anonteam_0_55.ai_peek_ent_idx = nil
anonteam_0_55.ai_peek_cache_tickcount = 0
anonteam_0_55.ai_peek_cache_dt = nil
anonteam_0_55.ai_peek_damage_tick_cache = 0
anonteam_0_55.ai_peek_shoot_points = nil

function anonteam_0_55.ai_peek_func(arg_354_0)
	-- function 354
	local anonteam_354_0 = anonteam_0_41.ref
	local anonteam_354_1 = anonteam_354_0:get_origin()

	if not anonteam_0_55.ai_peek_start_pos then
		anonteam_0_55.ai_peek_start_pos = anonteam_354_1
	end

	if not entity.get_threat() or anonteam_0_41.ground_tickcount <= 1 then
		anonteam_0_57 = {}

		return
	end

	local anonteam_354_2 = anonteam_354_0:get_player_weapon()

	if not anonteam_354_2 then
		return
	end

	local anonteam_354_3 = anonteam_354_0.m_vecMins
	local anonteam_354_4 = anonteam_354_0.m_vecMaxs
	local anonteam_354_5 = rage.antiaim:get_target()
	local anonteam_354_6 = anonteam_354_0:get_eye_position()

	anonteam_0_57 = {}

	for iter_354_0 = 0, 1 do
		local anonteam_354_7
		local anonteam_354_8 = anonteam_0_55.ai_peek_start_pos
		local anonteam_354_9 = anonteam_0_55.ai_peek_side ~= nil and 5 or anonteam_0_47.ui_tables.ragebot.aipeek_dist.value

		if anonteam_0_55.ai_peek_side ~= nil then
			if anonteam_0_55.ai_peek_side == 0 then
				anonteam_354_7 = vector():angles(0, anonteam_354_5 - 90, 0)
				anonteam_354_8 = anonteam_0_21(anonteam_354_8, anonteam_354_8 + anonteam_354_7 * anonteam_354_9 / 2, anonteam_354_0, nil, 1).end_pos
			else
				anonteam_354_7 = vector():angles(0, anonteam_354_5 + 90, 0)
				anonteam_354_8 = anonteam_0_21(anonteam_354_8, anonteam_354_8 + anonteam_354_7 * anonteam_354_9 / 2, anonteam_354_0, nil, 1).end_pos
			end
		elseif iter_354_0 == 0 then
			anonteam_354_7 = vector():angles(0, anonteam_354_5 - 90, 0)
			anonteam_354_8 = anonteam_0_21(anonteam_354_8, anonteam_354_8 + anonteam_354_7 * anonteam_354_9, anonteam_354_0, nil, 1).end_pos
		else
			anonteam_354_7 = vector():angles(0, anonteam_354_5 + 90, 0)
			anonteam_354_8 = anonteam_0_21(anonteam_354_8, anonteam_354_8 + anonteam_354_7 * anonteam_354_9, anonteam_354_0, nil, 1).end_pos
		end

		local anonteam_354_10 = anonteam_354_8
		local anonteam_354_11 = anonteam_354_0:simulate_movement(anonteam_0_55.ai_peek_start_pos, vector(0, 0, 0))

		anonteam_354_11:think(1)

		local anonteam_354_12 = anonteam_354_11.view_offset

		anonteam_354_10.z = anonteam_354_10.z + anonteam_354_12

		for iter_354_1 = 0, anonteam_0_55.ai_peek_side ~= nil and 6 or 0 do
			local anonteam_354_13 = anonteam_0_55.ai_peek_side ~= nil and anonteam_354_10 + anonteam_354_7 * anonteam_0_47.ui_tables.ragebot.aipeek_dist.value / 7 or anonteam_354_10
			local anonteam_354_14 = anonteam_0_21(anonteam_354_10, anonteam_354_13, anonteam_354_0, nil, 1)
			local anonteam_354_15 = anonteam_0_21(anonteam_354_14.end_pos, anonteam_354_14.end_pos - vector(0, 0, anonteam_354_12 + 50), anonteam_354_0, nil, 0)
			local anonteam_354_16 = anonteam_354_14.end_pos

			anonteam_354_10 = anonteam_354_16
			anonteam_354_16.z = anonteam_354_6.z

			anonteam_0_4(anonteam_0_57, {
				pos = anonteam_354_16,
				side = anonteam_0_55.ai_peek_side ~= nil and anonteam_0_55.ai_peek_side or iter_354_0
			})

			if anonteam_0_55.ai_peek_side ~= nil and anonteam_354_14.fraction ~= 1 then
				break
			end
		end

		if anonteam_0_55.ai_peek_side then
			break
		end
	end

	weap_type = anonteam_354_2:get_weapon_info().weapon_type
	weap_type = weap_type ~= 0 and weap_type ~= 9 and weap_type ~= 7 and weap_type ~= 11

	if anonteam_0_47.ui_tables.ragebot.aipeek_keys.value and (arg_354_0.sidemove ~= 0 or arg_354_0.forwardmove ~= 0) then
		return
	end

	if anonteam_0_47.ui_tables.ragebot.aipeek_dt.value and anonteam_0_37.double_tap.value and rage.exploit:get() ~= 1 then
		return
	end

	if anonteam_354_2.m_iIronSightMode == 2 or anonteam_354_2.m_flNextPrimaryAttack > globals.curtime or not weap_type or anonteam_354_2.m_iClip1 == 0 then
		anonteam_0_55.ai_cache = {}
		anonteam_0_55.ai_peek_damage_tick_cache = 0
		anonteam_0_55.ai_peek_shoot_points = nil

		return
	end

	local anonteam_354_17 = entity.get_players(true)
	local anonteam_354_18
	local anonteam_354_19 = globals.tickcount
	local anonteam_354_20 = math.max(anonteam_0_35.dmg:get() - 5, 5)
	local anonteam_354_21 = {}
	local anonteam_354_22 = entity.get_players()

	for iter_354_2 = 1, #anonteam_354_22 do
		if not anonteam_354_22[iter_354_2]:is_enemy() then
			anonteam_0_4(anonteam_354_21, anonteam_354_22[iter_354_2])
		end
	end

	local anonteam_354_23 = anonteam_0_35.hitboxes:get(1)
	local anonteam_354_24 = anonteam_0_35.hitboxes:get(2)
	local anonteam_354_25 = anonteam_0_35.hitboxes:get(3)
	local anonteam_354_26 = anonteam_0_47.ui_tables.ragebot.aipeek_delay.value

	if anonteam_0_55.ai_peek_ent_idx then
		local anonteam_354_27 = entity.get(anonteam_0_55.ai_peek_ent_idx)
		local anonteam_354_28 = anonteam_0_55.ai_peek_ent_idx

		if anonteam_354_27 and anonteam_354_27:is_alive() and not anonteam_354_27:is_dormant() then
			local anonteam_354_29 = anonteam_354_27:get_simulation_time()
			local anonteam_354_30 = anonteam_354_29.current - anonteam_354_29.old

			if not anonteam_0_55.ai_cache[anonteam_354_28] then
				anonteam_0_55.ai_cache[anonteam_354_28] = {
					tickcount = 0,
					backtrack = {}
				}
			end

			if anonteam_354_30 <= -0.01 then
				anonteam_0_55.ai_cache[anonteam_354_28].tickcount = anonteam_354_19 + 12
			end

			if (anonteam_0_55.ai_cache[anonteam_354_28].tickcount and anonteam_354_19 < anonteam_0_55.ai_cache[anonteam_354_28].tickcount or false) and anonteam_354_27.m_hGroundEntity then
				local anonteam_354_31 = {}

				if anonteam_354_24 then
					anonteam_354_31[#anonteam_354_31 + 1] = anonteam_354_27:get_hitbox_position(5)
				end

				if anonteam_354_25 then
					anonteam_354_31[#anonteam_354_31 + 1] = anonteam_354_27:get_hitbox_position(2)
				end

				if #anonteam_354_31 == 0 then
					return
				end

				for iter_354_3 = 1, #anonteam_0_57 do
					for iter_354_4 = 1, #anonteam_354_31 do
						local anonteam_354_32, anonteam_354_33 = utils.trace_bullet(anonteam_354_0, anonteam_0_57[iter_354_3].pos, anonteam_354_31[iter_354_4], anonteam_354_0)

						if anonteam_354_33.entity and anonteam_354_33.entity == anonteam_354_27 and anonteam_354_32 >= math.min(anonteam_354_20, anonteam_354_27.m_iHealth) then
							anonteam_354_18 = {
								pos = anonteam_0_57[iter_354_3].pos,
								hitbox_pos = anonteam_354_31[iter_354_4],
								side = anonteam_0_57[iter_354_3].side
							}

							break
						end
					end

					if anonteam_354_18 then
						break
					end
				end
			else
				anonteam_0_55.ai_cache[anonteam_354_28].hitbox_def = nil

				local anonteam_354_34 = {}

				if anonteam_354_23 then
					local anonteam_354_35 = anonteam_354_27:get_hitbox_position(0)

					anonteam_354_35.z = anonteam_354_35.z + 2
					anonteam_354_34[#anonteam_354_34 + 1] = anonteam_354_35
				end

				if anonteam_354_24 then
					anonteam_354_34[#anonteam_354_34 + 1] = anonteam_354_27:get_hitbox_position(5)
				end

				if anonteam_354_25 then
					anonteam_354_34[#anonteam_354_34 + 1] = anonteam_354_27:get_hitbox_position(2)
				end

				if #anonteam_354_34 == 0 then
					return
				end

				if anonteam_354_30 ~= 0 and anonteam_354_27.m_vecVelocity:length2d() < 300 then
					local anonteam_354_36 = {}

					if anonteam_354_24 then
						anonteam_354_36[#anonteam_354_36 + 1] = anonteam_354_27:get_hitbox_position(5)
					end

					if anonteam_354_25 then
						anonteam_354_36[#anonteam_354_36 + 1] = anonteam_354_27:get_hitbox_position(2)
					end

					anonteam_0_4(anonteam_0_55.ai_cache[anonteam_354_28].backtrack, 1, {
						hitboxes = anonteam_354_36,
						tickcount = anonteam_354_19
					})
				end

				local anonteam_354_37 = anonteam_0_55.ai_cache[anonteam_354_28].backtrack

				for iter_354_5 = 1, #anonteam_354_37 do
					if anonteam_0_11(anonteam_354_37[iter_354_5].tickcount) - anonteam_354_19 > 20 then
						anonteam_0_5(anonteam_0_55.ai_cache[anonteam_354_28].backtrack, iter_354_5)
					end
				end

				for iter_354_6 = 1, #anonteam_0_57 do
					for iter_354_7 = 1, #anonteam_354_34 do
						local anonteam_354_38, anonteam_354_39 = utils.trace_bullet(anonteam_354_0, anonteam_0_57[iter_354_6].pos, anonteam_354_34[iter_354_7], anonteam_354_0)

						if anonteam_354_39.entity and anonteam_354_39.entity == anonteam_354_27 and anonteam_354_38 >= math.min(anonteam_354_20, anonteam_354_27.m_iHealth) then
							anonteam_354_18 = {
								pos = anonteam_0_57[iter_354_6].pos,
								hitbox_pos = anonteam_354_34[iter_354_7],
								side = anonteam_0_57[iter_354_6].side
							}

							break
						end
					end

					if anonteam_354_18 then
						break
					end
				end
			end
		end

		local anonteam_354_40 = anonteam_354_27 and anonteam_354_27:is_alive()
		local anonteam_354_41 = anonteam_354_27 and anonteam_354_27:is_dormant()

		if anonteam_354_18 and anonteam_354_40 and not anonteam_354_41 then
			anonteam_0_55.ai_peek_damage_tick_cache = anonteam_0_55.ai_peek_damage_tick_cache + 1

			if anonteam_354_26 <= anonteam_0_55.ai_peek_damage_tick_cache then
				anonteam_0_55.ai_peek_side = anonteam_354_18.side
				anonteam_0_55.ai_peek_ent_idx = anonteam_354_28
				anonteam_0_55.ai_peek_cache_tickcount = anonteam_354_19
			else
				anonteam_354_18 = nil
			end
		else
			if anonteam_0_11(anonteam_0_55.ai_peek_cache_tickcount - anonteam_354_19) > 25 or not anonteam_354_40 or anonteam_354_41 then
				anonteam_0_55.ai_peek_side = nil
				anonteam_0_55.ai_peek_ent_idx = nil
			end

			anonteam_0_55.ai_peek_damage_tick_cache = 0
		end
	else
		for iter_354_8 = 1, #anonteam_354_17 do
			local anonteam_354_42 = anonteam_354_17[iter_354_8]

			if not anonteam_354_42 or not anonteam_354_42:is_alive() or anonteam_354_42:is_dormant() then
				-- block empty
			else
				local anonteam_354_43 = anonteam_354_42:get_index()
				local anonteam_354_44 = anonteam_354_42:get_simulation_time()
				local anonteam_354_45 = anonteam_354_44.current - anonteam_354_44.old

				if not anonteam_0_55.ai_cache[anonteam_354_43] then
					anonteam_0_55.ai_cache[anonteam_354_43] = {
						trigger_tickcount = 0,
						tickcount = 0,
						backtrack = {}
					}
				end

				if anonteam_354_45 <= -0.01 then
					anonteam_0_55.ai_cache[anonteam_354_43].tickcount = anonteam_354_19 + 12
				end

				if anonteam_354_19 < anonteam_0_55.ai_cache[anonteam_354_43].tickcount and anonteam_354_42.m_hGroundEntity then
					local anonteam_354_46 = {}

					if anonteam_354_24 then
						anonteam_354_46[#anonteam_354_46 + 1] = anonteam_354_42:get_hitbox_position(5)
					end

					if anonteam_354_25 then
						anonteam_354_46[#anonteam_354_46 + 1] = anonteam_354_42:get_hitbox_position(2)
					end

					if #anonteam_354_46 == 0 then
						return
					end

					for iter_354_9 = 1, #anonteam_0_57 do
						for iter_354_10 = 1, #anonteam_354_46 do
							local anonteam_354_47, anonteam_354_48 = utils.trace_bullet(anonteam_354_0, anonteam_0_57[iter_354_9].pos, anonteam_354_46[iter_354_10], anonteam_354_0)

							if anonteam_354_48.entity and anonteam_354_48.entity == anonteam_354_42 and anonteam_354_47 >= math.min(anonteam_354_20, anonteam_354_42.m_iHealth) then
								anonteam_354_18 = {
									pos = anonteam_0_57[iter_354_9].pos,
									hitbox_pos = anonteam_354_46[iter_354_10],
									side = anonteam_0_57[iter_354_9].side
								}

								break
							end
						end

						if anonteam_354_18 then
							break
						end
					end
				else
					anonteam_0_55.ai_cache[anonteam_354_43].hitbox_def = nil

					local anonteam_354_49 = {}

					if anonteam_354_23 then
						local anonteam_354_50 = anonteam_354_42:get_hitbox_position(0)

						anonteam_354_50.z = anonteam_354_50.z + 2
						anonteam_354_49[#anonteam_354_49 + 1] = anonteam_354_50
					end

					if anonteam_354_24 then
						anonteam_354_49[#anonteam_354_49 + 1] = anonteam_354_42:get_hitbox_position(5)
					end

					if anonteam_354_25 then
						anonteam_354_49[#anonteam_354_49 + 1] = anonteam_354_42:get_hitbox_position(2)
					end

					if #anonteam_354_49 == 0 then
						return
					end

					if anonteam_354_45 ~= 0 and anonteam_354_42.m_vecVelocity:length2d() < 300 then
						local anonteam_354_51 = {}

						if anonteam_354_24 then
							anonteam_354_51[#anonteam_354_51 + 1] = anonteam_354_42:get_hitbox_position(5)
						end

						if anonteam_354_25 then
							anonteam_354_51[#anonteam_354_51 + 1] = anonteam_354_42:get_hitbox_position(2)
						end

						anonteam_0_4(anonteam_0_55.ai_cache[anonteam_354_43].backtrack, 1, {
							hitboxes = anonteam_354_51,
							tickcount = anonteam_354_19
						})
					end

					local anonteam_354_52 = anonteam_0_55.ai_cache[anonteam_354_43].backtrack

					for iter_354_11 = 1, #anonteam_354_52 do
						if anonteam_0_11(anonteam_354_52[iter_354_11].tickcount) - anonteam_354_19 > 20 then
							anonteam_0_5(anonteam_0_55.ai_cache[anonteam_354_43].backtrack, iter_354_11)
						end
					end

					for iter_354_12 = 1, #anonteam_0_57 do
						for iter_354_13 = 1, #anonteam_354_49 do
							local anonteam_354_53, anonteam_354_54 = utils.trace_bullet(anonteam_354_0, anonteam_0_57[iter_354_12].pos, anonteam_354_49[iter_354_13], anonteam_354_0)

							if anonteam_354_54.entity and anonteam_354_54.entity == anonteam_354_42 and anonteam_354_53 >= math.min(anonteam_354_20, anonteam_354_42.m_iHealth) then
								anonteam_354_18 = {
									pos = anonteam_0_57[iter_354_12].pos,
									hitbox_pos = anonteam_354_49[iter_354_13],
									side = anonteam_0_57[iter_354_12].side
								}

								break
							end
						end

						if anonteam_354_18 then
							break
						end
					end
				end

				local anonteam_354_55 = anonteam_354_42:is_alive()
				local anonteam_354_56 = anonteam_354_42:is_dormant()

				if anonteam_354_18 and anonteam_354_55 and not anonteam_354_56 then
					anonteam_0_55.ai_peek_side = anonteam_354_18.side
					anonteam_0_55.ai_peek_ent_idx = anonteam_354_43
					anonteam_0_55.ai_peek_cache_tickcount = anonteam_354_19
					anonteam_354_18 = nil

					break
				elseif anonteam_0_11(anonteam_0_55.ai_peek_cache_tickcount - anonteam_354_19) > 25 or not anonteam_354_55 or anonteam_354_56 then
					anonteam_0_55.ai_peek_side = nil
					anonteam_0_55.ai_peek_ent_idx = nil
				end
			end
		end
	end

	if anonteam_354_18 then
		anonteam_0_55.go_to_pos(arg_354_0, anonteam_354_18.pos)
	elseif anonteam_0_55.ai_peek_start_pos:dist(anonteam_354_1) > 3 then
		anonteam_0_55.go_to_pos(arg_354_0, anonteam_0_55.ai_peek_start_pos)

		if anonteam_354_18 ~= anonteam_0_55.ai_peek_cache_dt and rage.exploit:get() == 1 then
			rage.exploit:force_teleport()
		end
	end

	anonteam_0_55.ai_peek_shoot_points = anonteam_354_18
	anonteam_0_55.ai_peek_cache_dt = anonteam_354_18
end

function anonteam_0_55.ai_peek_visualize(arg_355_0)
	-- function 355
	if #anonteam_0_57 <= 1 then
		return
	end

	local anonteam_355_0 = (anonteam_0_57[1].pos - anonteam_0_57[2].pos):normalized() + vector():angles(0, -90, 0)
	local anonteam_355_1 = anonteam_0_55.ai_peek_ent_idx

	if anonteam_0_55.ai_peek_shoot_points and anonteam_0_55.ai_peek_shoot_points.hitbox_pos and anonteam_0_55.ai_peek_shoot_points.pos then
		local anonteam_355_2 = anonteam_0_55.ai_peek_shoot_points.pos:to_screen()
		local anonteam_355_3 = anonteam_0_55.ai_peek_shoot_points.hitbox_pos:to_screen()

		render.circle_3d(anonteam_0_55.ai_peek_shoot_points.hitbox_pos, color(255, 0, 0), 2, 0, 1)
		render.circle_3d(anonteam_0_55.ai_peek_shoot_points.pos, color(0, 255, 0), 2, 0, 1)

		if anonteam_355_2 and anonteam_355_3 then
			render.line(anonteam_355_2, anonteam_355_3, color(0, 255, 0))
		end
	end

	if anonteam_0_47.ui_tables.ragebot.aipeek_vis.value then
		for iter_355_0 = 1, #anonteam_0_57 do
			render.circle_3d(anonteam_0_57[iter_355_0].pos, color(255), 2, 0, 1)
		end
	end
end

function anonteam_0_55.ai_peek_on_death(arg_356_0)
	-- function 356
	local anonteam_356_0 = entity.get(arg_356_0.userid, true)
	local anonteam_356_1 = anonteam_356_0:get_index()
	local anonteam_356_2 = anonteam_0_55.ai_cache[anonteam_356_1]

	if anonteam_356_0:is_enemy() then
		if not anonteam_356_2 then
			anonteam_0_55.ai_cache[anonteam_356_1] = {
				tickcount = 0,
				backtrack = {}
			}
		else
			anonteam_0_55.ai_cache[anonteam_356_1].backtrack = {}
		end
	end
end

events.player_death:set(anonteam_0_55.save_pos_on_death)
anonteam_0_47.ui_tables.ragebot.aipeek_switch:set_callback(function()
	-- function 357
	anonteam_0_55.ai_peek_start_pos = nil

	if anonteam_0_47.ui_tables.ragebot.aipeek_switch.value then
		events.createmove:set(anonteam_0_55.ai_peek_func)
		events.render:set(anonteam_0_55.ai_peek_visualize)
		anonteam_0_37.peek_assist:override(true)
		anonteam_0_37.peek_assist_return:override({
			"On Shot"
		})
	else
		anonteam_0_55.ai_peek_damage_tick_cache = 0

		events.createmove:unset(anonteam_0_55.ai_peek_func)
		events.render:unset(anonteam_0_55.ai_peek_visualize)

		anonteam_0_55.ai_cache = {}

		anonteam_0_37.retreat_mode:override()
		anonteam_0_37.peek_assist:override()

		anonteam_0_55.enemy_point = nil
		anonteam_0_55.ai_peek_side = nil
		anonteam_0_55.ai_peek_ent_idx = nil
		anonteam_0_55.ai_peek_cache_tickcount = 0

		anonteam_0_37.peek_assist_return:override()
	end
end, true)

anonteam_0_55.telep_array = anonteam_0_47.ui_tables.ragebot.discharge_combo.elements_array
anonteam_0_55.telep_func_array = {
	7,
	8,
	8,
	8,
	nil,
	nil,
	nil,
	nil,
	2,
	nil,
	3,
	nil,
	nil,
	nil,
	nil,
	nil,
	5,
	nil,
	nil,
	nil,
	nil,
	nil,
	5,
	5,
	4,
	5,
	4,
	nil,
	4,
	8,
	10,
	8,
	5,
	5,
	4,
	8,
	nil,
	3,
	nil,
	1,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	8,
	nil,
	8,
	6,
	knife = 9
}
anonteam_0_55.telep_delay_cache = 0
anonteam_0_55.lc_timer = 0
anonteam_0_55.lc_tickbase = 999999

function anonteam_0_55.discharge_func(arg_358_0)
	-- function 358
	if not anonteam_0_35.double_tap:get() and anonteam_0_35.hide_shots:get() then
		return
	end

	local anonteam_358_0 = anonteam_0_41.ref
	local anonteam_358_1 = anonteam_0_41.on_ground

	if anonteam_0_47.ui_tables.ragebot.discharge_mode.value == 3 then
		local anonteam_358_2 = anonteam_358_0.m_nTickBase

		if anonteam_358_2 - 3 > anonteam_0_55.lc_tickbase then
			anonteam_0_55.lc_timer = globals.tickcount + 11
		end

		anonteam_0_55.lc_tickbase = anonteam_358_2
	end

	if anonteam_358_1 then
		return
	end

	if anonteam_0_11(anonteam_0_55.telep_delay_cache - globals.curtime) < anonteam_0_47.ui_tables.ragebot.discharge_delay.value / 10 then
		return
	elseif rage.exploit:get() == 0 and anonteam_0_47.ui_tables.ragebot.discharge_delay.value ~= 11 and anonteam_0_11(anonteam_0_55.telep_delay_cache - globals.curtime) < 1.5 then
		rage.exploit:force_charge()
	end

	if rage.exploit:get() ~= 1 then
		return
	end

	if not entity.get_threat(true) then
		return
	end

	local anonteam_358_3 = anonteam_358_0:get_player_weapon()

	if not anonteam_358_3 then
		return
	end

	local anonteam_358_4 = anonteam_358_3:get_weapon_index()

	anonteam_358_4 = anonteam_358_3:get_classname() == "CKnife" and "knife" or anonteam_358_4

	local anonteam_358_5 = anonteam_0_55.telep_func_array[anonteam_358_4]

	if not anonteam_358_5 or not anonteam_0_47.ui_tables.ragebot.discharge_combo.ref:get(anonteam_358_5) then
		return
	end

	if anonteam_0_47.ui_tables.ragebot.discharge_mode.value == 2 then
		local anonteam_358_6 = anonteam_358_0:simulate_movement()

		anonteam_358_6:think(13)

		if anonteam_358_6.velocity.z ~= 0 then
			return
		end

		arg_358_0.in_jump = false
	end

	if anonteam_0_47.ui_tables.ragebot.discharge_mode.value == 3 then
		if anonteam_0_55.lc_timer - globals.tickcount > 0 then
			return
		elseif anonteam_0_55.lc_timer - globals.tickcount < -5 then
			return
		end
	end

	rage.exploit:force_teleport()

	anonteam_0_55.telep_delay_cache = globals.curtime - 0.02
end

anonteam_0_47.ui_tables.ragebot.discharge_switch:set_callback(function()
	-- function 359
	if anonteam_0_47.ui_tables.ragebot.discharge_switch.value then
		events.createmove:set(anonteam_0_55.discharge_func)
	else
		events.createmove:unset(anonteam_0_55.discharge_func)
	end
end, true)

anonteam_0_55.anti_def_curtime = 1
anonteam_0_55.anti_def_cache_team = 0
anonteam_0_55.need_join_team = false

function anonteam_0_55.anti_def_func()
	-- function 360
	local anonteam_360_0 = anonteam_0_47.ui_tables.ragebot.antidef_switch.value
	local anonteam_360_1 = cvar.cl_lagcompensation
	local anonteam_360_2 = anonteam_0_39(globals.curtime % 0.4, 0.1)
	local anonteam_360_3 = anonteam_0_23()
	local anonteam_360_4 = anonteam_360_3

	if not anonteam_360_3 then
		return
	end

	if anonteam_360_2 == 0 then
		if anonteam_360_2 == anonteam_0_55.anti_def_curtime then
			return
		end

		local anonteam_360_5

		if anonteam_360_4 then
			anonteam_360_5 = anonteam_360_3.m_iTeamNum
		end

		anonteam_0_55.anti_def_curtime = anonteam_360_2

		if anonteam_360_0 and anonteam_360_1:int() ~= 0 then
			if not anonteam_360_4 then
				anonteam_360_1:int(0)

				return
			end

			if anonteam_360_5 ~= 1 then
				anonteam_0_55.anti_def_cache_team = anonteam_360_3.m_iTeamNum

				utils.console_exec("jointeam 1")
			else
				anonteam_360_1:int(0)

				anonteam_0_55.need_join_team = true
			end
		else
			if anonteam_0_55.need_join_team then
				utils.console_exec("jointeam " .. anonteam_0_55.anti_def_cache_team .. " 2")

				anonteam_0_55.need_join_team = false
			end

			if not anonteam_360_0 and anonteam_360_1:int() ~= 1 then
				if not anonteam_360_4 then
					anonteam_360_1:int(1)

					return
				end

				if anonteam_360_5 ~= 1 then
					anonteam_0_55.anti_def_cache_team = anonteam_360_5

					utils.console_exec("jointeam 1")
				else
					anonteam_360_1:int(1)

					anonteam_0_55.need_join_team = true
				end
			end
		end
	else
		anonteam_0_55.anti_def_curtime = 1
	end
end

events.render:set(anonteam_0_55.anti_def_func)

anonteam_0_55.delay = 0

function anonteam_0_55.air_breaklc_func(arg_361_0)
	-- function 361
	if not anonteam_0_35.double_tap:get() then
		return
	end

	if anonteam_0_41.on_ground then
		return
	end

	if math.abs(anonteam_0_55.delay - globals.tickcount) > 17 then
		rage.exploit:force_teleport()
	end

	if rage.exploit:get() == 0 then
		rage.exploit:force_charge()
	end

	if rage.exploit:get() < 0.08 then
		anonteam_0_55.delay = globals.tickcount
	end
end

anonteam_0_47.ui_tables.ragebot.air_exploit:set_callback(function()
	-- function 362
	if anonteam_0_47.ui_tables.ragebot.air_exploit.value then
		events.createmove:set(anonteam_0_55.air_breaklc_func)
	else
		events.createmove:unset(anonteam_0_55.air_breaklc_func)
	end
end, true)

function anonteam_0_55.rollres_func()
	-- function 363
	for iter_363_0 = 1, 64 do
		local anonteam_363_0 = entity.get(iter_363_0)

		if not anonteam_363_0 then
			-- block empty
		elseif not anonteam_363_0:is_enemy() or not anonteam_363_0:is_alive() or anonteam_363_0:is_dormant() then
			-- block empty
		else
			local anonteam_363_1 = anonteam_0_44.m_eye_angle(anonteam_363_0[0])

			anonteam_363_1.z = anonteam_0_47.ui_tables.ragebot.roll_deg.value
			anonteam_363_1.x = anonteam_0_47.ui_tables.ragebot.roll_pitch_switch.value and anonteam_0_47.ui_tables.ragebot.roll_pitch_deg.value or anonteam_363_1.x
		end
	end
end

anonteam_0_47.ui_tables.ragebot.roll_resolver:set_callback(function()
	-- function 364
	if anonteam_0_47.ui_tables.ragebot.roll_resolver.value then
		events.net_update_end:set(anonteam_0_55.rollres_func)
	else
		events.net_update_end:unset(anonteam_0_55.rollres_func)
	end
end, true)

function anonteam_0_55.jumpscout_func(arg_365_0)
	-- function 365
	local anonteam_365_0 = anonteam_0_41.ref
	local anonteam_365_1 = anonteam_0_41.velocity
	local anonteam_365_2 = arg_365_0.forwardmove ~= 0 or arg_365_0.sidemove ~= 0 or anonteam_365_1 > 100
	local anonteam_365_3 = anonteam_365_0:get_player_weapon()

	if not anonteam_365_3 or anonteam_365_3:get_weapon_index() ~= 40 then
		anonteam_365_2 = true
	end

	if not anonteam_365_2 then
		anonteam_0_37.autostop:override("In Air")
	else
		anonteam_0_37.autostop:override()
	end

	anonteam_0_37.airstrafe:override(anonteam_365_2)
end

anonteam_0_47.ui_tables.ragebot.jumpscout:set_callback(function()
	-- function 366
	if anonteam_0_47.ui_tables.ragebot.jumpscout.value then
		utils.execute_after(0.5, function()
			-- function 367
			events.createmove:set(anonteam_0_55.jumpscout_func)
		end)
	else
		events.createmove:unset(anonteam_0_55.jumpscout_func)
		anonteam_0_37.airstrafe:override()
	end

	anonteam_0_37.airstrafe:override()
end, true)

anonteam_0_55.hc_func_array = {
	7,
	8,
	8,
	8,
	nil,
	nil,
	nil,
	nil,
	2,
	nil,
	3,
	nil,
	nil,
	nil,
	nil,
	nil,
	5,
	nil,
	nil,
	nil,
	nil,
	nil,
	5,
	5,
	4,
	5,
	4,
	nil,
	4,
	8,
	nil,
	8,
	5,
	5,
	4,
	8,
	nil,
	3,
	nil,
	1,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	8,
	nil,
	8,
	6
}
anonteam_0_55.hc_isoverriden = false

function anonteam_0_55.hitchance_func()
	-- function 368
	local anonteam_368_0 = anonteam_0_41.ref
	local anonteam_368_1 = anonteam_0_41.on_ground

	if anonteam_368_1 then
		if anonteam_0_55.hc_isoverriden then
			anonteam_0_37.hitchance:override()

			anonteam_0_55.hc_isoverriden = false
		end

		return
	end

	local anonteam_368_2 = anonteam_368_0:get_player_weapon()

	if not anonteam_368_2 then
		return
	end

	local anonteam_368_3 = anonteam_368_2:get_weapon_index()
	local anonteam_368_4 = anonteam_0_55.hc_func_array[anonteam_368_3]

	if not anonteam_368_4 then
		if anonteam_0_55.hc_isoverriden then
			anonteam_0_35.hitchance:override()

			anonteam_0_55.hc_isoverriden = false
		end

		return
	end

	local anonteam_368_5 = anonteam_0_47.ui_tables.ragebot["air_" .. anonteam_368_4]

	if not anonteam_368_5 or anonteam_368_5.value <= 0 or anonteam_368_1 then
		if anonteam_0_55.hc_isoverriden then
			anonteam_0_35.hitchance:override()

			anonteam_0_55.hc_isoverriden = false
		end

		return
	end

	anonteam_0_37.hitchance:override(anonteam_368_5.value)

	anonteam_0_55.hc_isoverriden = true
end

events.createmove:set(anonteam_0_55.hitchance_func)
events.shutdown:set(function()
	-- function 369
	if anonteam_0_55.hc_isoverriden then
		for iter_369_0 = 1, #anonteam_0_55.refs_hc do
			anonteam_0_55.refs_hc[iter_369_0]:override()
		end

		anonteam_0_55.hc_isoverriden = false
	end
end)

anonteam_0_55.nshc_array = {
	"SSG-08",
	"AWP",
	"AutoSnipers"
}
anonteam_0_55.refs_nshc = {
	ui.find("Aimbot", "Ragebot", "Selection", "AutoSnipers", "Hit Chance"),
	ui.find("Aimbot", "Ragebot", "Selection", "AWP", "Hit Chance"),
	ui.find("Aimbot", "Ragebot", "Selection", "SSG-08", "Hit Chance")
}
anonteam_0_55.refs_s_nshc = {
	ui.find("Aimbot", "Ragebot", "Accuracy", "AutoSnipers", "Auto Scope"),
	ui.find("Aimbot", "Ragebot", "Accuracy", "AWP", "Auto Scope"),
	ui.find("Aimbot", "Ragebot", "Accuracy", "SSG-08", "Auto Scope")
}
anonteam_0_55.hc_func_array = {
	[38] = 3,
	[40] = 1,
	[9] = 2,
	[11] = 3
}
anonteam_0_55.nshc_isoverriden = false

function anonteam_0_55.no_scope_func()
	-- function 370
	local anonteam_370_0 = anonteam_0_41.ref
	local anonteam_370_1 = anonteam_0_41.on_ground
	local anonteam_370_2 = entity.get_threat()
	local anonteam_370_3 = 0

	if anonteam_370_2 and anonteam_370_0 then
		anonteam_370_3 = (anonteam_370_0:get_origin() - anonteam_370_2:get_origin()):length() / 100
	end

	local anonteam_370_4 = anonteam_370_0:get_player_weapon()

	if not anonteam_370_4 then
		return
	end

	local anonteam_370_5 = anonteam_370_4:get_weapon_index()
	local anonteam_370_6 = anonteam_0_55.hc_func_array[anonteam_370_5]

	if not anonteam_370_6 then
		if anonteam_0_55.nshc_isoverriden then
			anonteam_0_35.hitchance:override()
			anonteam_0_35.no_scope:override()

			anonteam_0_55.nshc_isoverriden = false
		end

		return
	end

	local anonteam_370_7 = anonteam_0_47.ui_tables.ragebot["noscope_" .. anonteam_370_6]

	if not anonteam_370_2 or not anonteam_370_7 or anonteam_370_7.value <= -1 then
		if anonteam_0_55.nshc_isoverriden then
			anonteam_0_35.hitchance:override()
			anonteam_0_35.no_scope:override()

			anonteam_0_55.nshc_isoverriden = false
		end

		return
	end

	if anonteam_370_0.m_bIsScoped or anonteam_370_3 > anonteam_0_47.ui_tables.ragebot["noscope_dist" .. anonteam_370_6].value / 10 and anonteam_0_47.ui_tables.ragebot["noscope_dist" .. anonteam_370_6].value / 10 < 10.1 then
		if anonteam_0_55.nshc_isoverriden then
			anonteam_0_35.hitchance:override()
			anonteam_0_35.no_scope:override()

			anonteam_0_55.nshc_isoverriden = false
		end

		return
	end

	anonteam_0_35.hitchance:override(anonteam_370_7.value)
	anonteam_0_35.no_scope:override(false)

	anonteam_0_55.nshc_isoverriden = true
end

events.createmove:set(anonteam_0_55.no_scope_func)

anonteam_0_55.airstop_cache = nil

function anonteam_0_55.airstop_func()
	-- function 371
	local anonteam_371_0 = anonteam_0_41.ref

	if anonteam_0_41.on_ground then
		if anonteam_0_55.airstop_cache then
			anonteam_0_35.autostop:override()

			anonteam_0_55.airstop_cache = nil
		end

		return
	end

	local anonteam_371_1 = anonteam_0_47.ui_tables.ragebot.airstop_cond.value_by_name

	if anonteam_371_1[1] and anonteam_0_36.slowwalk then
		local anonteam_371_2 = anonteam_0_35.autostop:get()

		anonteam_371_2[#anonteam_371_2] = "In Air"

		anonteam_0_35.autostop:override(anonteam_371_2)

		anonteam_0_55.airstop_cache = true

		return
	end

	if anonteam_371_1[2] then
		local anonteam_371_3 = entity.get_threat()

		if anonteam_371_3 and not anonteam_371_3:is_dormant() and anonteam_371_3:get_origin():dist(anonteam_371_0:get_origin()) < 300 then
			local anonteam_371_4 = anonteam_0_35.autostop:get()

			anonteam_371_4[#anonteam_371_4] = "In Air"

			anonteam_0_35.autostop:override(anonteam_371_4)

			anonteam_0_55.airstop_cache = true

			return
		end
	end

	if anonteam_0_55.airstop_cache then
		anonteam_0_35.autostop:override()

		anonteam_0_55.airstop_cache = nil
	end
end

anonteam_0_47.ui_tables.ragebot.airstop_switch:set_callback(function()
	-- function 372
	if anonteam_0_47.ui_tables.ragebot.airstop_switch.value then
		events.createmove:set(anonteam_0_55.airstop_func)
	else
		events.createmove:unset(anonteam_0_55.airstop_func)
	end

	anonteam_0_35.autostop:override()

	anonteam_0_55.airstop_cache = nil
end, true)

anonteam_0_55.need_throw = false

function anonteam_0_55.grenade_release_func_nade(arg_373_0)
	-- function 373
	anonteam_0_55.need_throw = false

	if arg_373_0.type == "Frag" and arg_373_0.target then
		local anonteam_373_0 = arg_373_0.target.m_ArmorValue > 0 and 50 or 100

		if arg_373_0.damage / anonteam_373_0 >= anonteam_0_47.ui_tables.ragebot.grenade_damage.value / 100 or arg_373_0.fatal then
			anonteam_0_55.need_throw = true
		end
	end
end

function anonteam_0_55.grenade_release_func_createmove(arg_374_0)
	-- function 374
	if anonteam_0_55.need_throw then
		arg_374_0.in_attack = true
	end
end

anonteam_0_47.ui_tables.ragebot.grenade_switch:set_callback(function()
	-- function 375
	if anonteam_0_47.ui_tables.ragebot.grenade_switch.value then
		events.grenade_prediction:set(anonteam_0_55.grenade_release_func_nade)
		events.createmove:set(anonteam_0_55.grenade_release_func_createmove)
	else
		events.grenade_prediction:unset(anonteam_0_55.grenade_release_func_nade)
		events.createmove:unset(anonteam_0_55.grenade_release_func_createmove)
	end

	anonteam_0_55.need_throw = false
end, true)

anonteam_0_31.screen_size = render.screen_size()
anonteam_0_31.animation_value = 6.666666666666667 * globals.frametime * 100 / 200
anonteam_0_31.global_alpha = 0

function anonteam_0_31.update_consts()
	-- function 376
	anonteam_0_31.screen_size = render.screen_size()
	anonteam_0_31.animation_value = 6.666666666666667 * globals.frametime * 100 / 200

	local anonteam_376_0 = anonteam_0_23()

	anonteam_0_31.global_alpha = anonteam_0_31.calculate_value("global_alpha", anonteam_376_0 and anonteam_376_0:is_alive(), 2)
end

events.render:set(anonteam_0_31.update_consts)

anonteam_0_31.easings = {
	out_quart = function(arg_377_0)
		-- function 377
		return 1 - anonteam_0_17(1 - arg_377_0, 4)
	end,
	in_quart = function(arg_378_0)
		-- function 378
		return arg_378_0 * arg_378_0 * arg_378_0 * arg_378_0
	end,
	in_out_quart = function(arg_379_0)
		-- function 379
		return arg_379_0 < 0.5 and 8 * arg_379_0 * arg_379_0 * arg_379_0 * arg_379_0 or 1 - anonteam_0_17(-2 * arg_379_0 + 2, 4) / 2
	end
}
anonteam_0_31.anim_values = {}

function anonteam_0_31.calculate_color(arg_380_0, arg_380_1, arg_380_2)
	-- function 380
	arg_380_2 = math.min(1, arg_380_2)
	s_r, s_g, s_b, s_a = arg_380_1:unpack()
	s2_r, s2_g, s2_b, s2_a = arg_380_0:unpack()

	local anonteam_380_0 = 0
	local anonteam_380_1 = 0
	local anonteam_380_2 = 0
	local anonteam_380_3 = 0

	if s_r > s2_r then
		local anonteam_380_4 = s_r - s2_r

		anonteam_380_0 = anonteam_0_19(s_r - anonteam_380_4 * arg_380_2, s2_r, s_r)
	else
		local anonteam_380_5 = s2_r - s_r

		anonteam_380_0 = anonteam_0_19(s_r + anonteam_380_5 * arg_380_2, s_r, s2_r)
	end

	if s_g > s2_g then
		local anonteam_380_6 = s_g - s2_g

		anonteam_380_1 = anonteam_0_19(s_g - anonteam_380_6 * arg_380_2, s2_g, s_g)
	else
		local anonteam_380_7 = s2_g - s_g

		anonteam_380_1 = anonteam_0_19(s_g + anonteam_380_7 * arg_380_2, s_g, s2_g)
	end

	if s_b > s2_b then
		local anonteam_380_8 = s_b - s2_b

		anonteam_380_2 = anonteam_0_19(s_b - anonteam_380_8 * arg_380_2, s2_b, s_b)
	else
		local anonteam_380_9 = s2_b - s_b

		anonteam_380_2 = anonteam_0_19(s_b + anonteam_380_9 * arg_380_2, s_b, s2_b)
	end

	if s_a > s2_a then
		local anonteam_380_10 = s_a - s2_a

		anonteam_380_3 = anonteam_0_19(s_a - anonteam_380_10 * arg_380_2, s2_a, s_a)
	else
		local anonteam_380_11 = s2_a - s_a

		anonteam_380_3 = anonteam_0_19(s_a + anonteam_380_11 * arg_380_2, s_a, s2_a)
	end

	return color(anonteam_380_0, anonteam_380_1, anonteam_380_2, anonteam_380_3)
end

function anonteam_0_31.print_color_text(arg_381_0, arg_381_1)
	-- function 381
	local anonteam_381_0 = {}

	for iter_381_0 = 1, #arg_381_0 do
		local anonteam_381_1 = iter_381_0 % 2 == 1 and arg_381_1:to_hex() or "\aedededFF"

		anonteam_0_4(anonteam_381_0, "\a" .. anonteam_381_1)
		anonteam_0_4(anonteam_381_0, arg_381_0[iter_381_0])
		anonteam_0_4(anonteam_381_0, "\aedededFF")
	end

	anonteam_0_2(table.concat(anonteam_381_0))
end

function anonteam_0_31.calculate_gradient(arg_382_0, arg_382_1, arg_382_2)
	-- function 382
	local anonteam_382_0 = #arg_382_0
	local anonteam_382_1 = {}

	for iter_382_0 = 1, anonteam_382_0 do
		local anonteam_382_2 = (iter_382_0 + 1) / anonteam_382_0
		local anonteam_382_3 = anonteam_0_31.calculate_color(arg_382_1, arg_382_2, anonteam_382_2)

		anonteam_382_1[iter_382_0] = "\a" .. anonteam_382_3:to_hex():sub(1, 6) .. arg_382_0:sub(iter_382_0, iter_382_0)
	end

	return table.concat(anonteam_382_1)
end

function anonteam_0_31.calculate_value(arg_383_0, arg_383_1, arg_383_2, arg_383_3, arg_383_4)
	-- function 383
	local anonteam_383_0 = anonteam_0_31.anim_values[arg_383_0]

	if not anonteam_383_0 then
		anonteam_0_31.anim_values[arg_383_0] = 0
		anonteam_383_0 = anonteam_0_31.anim_values[arg_383_0]
	end

	arg_383_2 = arg_383_2 and arg_383_2 or 1
	arg_383_3 = arg_383_3 and arg_383_3 or 0
	arg_383_4 = arg_383_4 and arg_383_4 or 1

	if arg_383_1 then
		anonteam_0_31.anim_values[arg_383_0] = anonteam_0_19(anonteam_383_0 + anonteam_0_31.animation_value * arg_383_2, arg_383_3, arg_383_4)
	else
		anonteam_0_31.anim_values[arg_383_0] = anonteam_0_19(anonteam_383_0 - anonteam_0_31.animation_value * arg_383_2, arg_383_3, arg_383_4)
	end

	return anonteam_0_31.anim_values[arg_383_0]
end

drag_system = {}
drag_system.list_names = {}
drag_system.list = {}

function drag_system.in_bounds(arg_384_0, arg_384_1, arg_384_2)
	-- function 384
	if arg_384_2.x > arg_384_0.x and arg_384_2.y > arg_384_0.y and arg_384_2.x < arg_384_1.x and arg_384_2.y < arg_384_1.y then
		return true
	end

	return false
end

function drag_system.add_drag(arg_385_0, arg_385_1, arg_385_2, arg_385_3, arg_385_4, arg_385_5)
	-- function 385
	if drag_system.list[arg_385_0] then
		error("drag system " .. arg_385_0 .. " already exists")
	end

	anonteam_0_0.drag_memory[arg_385_0 .. "_x"] = anonteam_0_0.drag_memory[arg_385_0 .. "_x"] == nil and arg_385_3.x or anonteam_0_0.drag_memory[arg_385_0 .. "_x"]
	anonteam_0_0.drag_memory[arg_385_0 .. "_y"] = anonteam_0_0.drag_memory[arg_385_0 .. "_y"] == nil and arg_385_3.y or anonteam_0_0.drag_memory[arg_385_0 .. "_y"]

	if arg_385_5 == nil then
		function arg_385_5()
			-- function 386
			return true
		end
	end

	drag_system.list[arg_385_0] = {
		drag = false,
		tab = tab,
		adjust_start_point = arg_385_1,
		adjust_finish_point = arg_385_2,
		name = arg_385_0,
		diff = vector(0, 0),
		lock_x = arg_385_4,
		state = arg_385_5
	}

	anonteam_0_4(drag_system.list_names, arg_385_0)
end

drag_system.last_element = nil
drag_system.active_element = nil

function drag_system.check_drags()
	-- function 387
	if ui.get_alpha() == 0 then
		return
	end

	local anonteam_387_0 = anonteam_0_31.screen_size
	local anonteam_387_1 = common.is_button_down(1)

	if not anonteam_387_1 then
		drag_system.last_element = nil
		drag_system.active_element = nil
	end

	local anonteam_387_2 = ui.get_mouse_position()

	for iter_387_0 = 1, #drag_system.list_names do
		if drag_system.last_element and drag_system.last_element ~= iter_387_0 then
			-- block empty
		else
			local anonteam_387_3 = drag_system.list[drag_system.list_names[iter_387_0]]

			if not anonteam_387_3.state() then
				-- block empty
			elseif not anonteam_387_1 then
				anonteam_387_3.drag = false
				anonteam_387_3.diff = vector(0, 0)
			else
				local anonteam_387_4 = anonteam_387_3.name
				local anonteam_387_5 = anonteam_387_3.tab
				local anonteam_387_6 = vector(anonteam_387_3.lock_x and anonteam_387_0.x / 2 or anonteam_0_0.drag_memory[anonteam_387_4 .. "_x"], anonteam_0_0.drag_memory[anonteam_387_4 .. "_y"]) + anonteam_387_3.adjust_start_point
				local anonteam_387_7 = anonteam_387_6 + anonteam_387_3.adjust_finish_point

				if drag_system.in_bounds(anonteam_387_6, anonteam_387_7, anonteam_387_2) or anonteam_387_3.drag then
					if not anonteam_387_3.drag then
						anonteam_387_3.diff = anonteam_387_2 - anonteam_387_6
						anonteam_387_3.drag = true
					end

					local anonteam_387_8 = anonteam_387_2 - anonteam_387_3.diff
					local anonteam_387_9 = vector(math.max(0, anonteam_387_8.x), math.max(0, anonteam_387_8.y)) - anonteam_387_3.adjust_start_point

					if anonteam_387_9.x + anonteam_387_3.adjust_finish_point.x / 2 > anonteam_387_0.x then
						anonteam_387_9.x = anonteam_387_0.x - anonteam_387_3.adjust_finish_point.x / 2
					end

					if anonteam_387_9.y + anonteam_387_3.adjust_finish_point.y > anonteam_387_0.y then
						anonteam_387_9.y = anonteam_387_0.y - anonteam_387_3.adjust_finish_point.y
					end

					local anonteam_387_10 = anonteam_387_9

					anonteam_0_0.drag_memory[anonteam_387_4 .. "_x"] = anonteam_387_3.lock_x and anonteam_0_31.screen_size.x / 2 or anonteam_387_10.x
					anonteam_0_0.drag_memory[anonteam_387_4 .. "_y"] = anonteam_387_10.y
					drag_system.active_element = anonteam_387_4
					drag_system.last_element = iter_387_0
				end
			end
		end
	end
end

events.render:set(drag_system.check_drags)
events.createmove:set(function(arg_388_0)
	-- function 388
	if drag_system.last_element then
		arg_388_0.in_attack = 0
	end
end)

anonteam_0_31.smoke_array = {}
anonteam_0_31.molotov_array = {}

function anonteam_0_31.grenade_smoke_func()
	-- function 389
	local anonteam_389_0 = anonteam_0_23()

	if not anonteam_389_0 then
		return
	end

	local anonteam_389_1 = anonteam_389_0:get_origin()
	local anonteam_389_2 = 600
	local anonteam_389_3 = entity.get_entities("CSmokeGrenadeProjectile")
	local anonteam_389_4 = anonteam_0_47.ui_tables.visuals.nade_smoke_c.value
	local anonteam_389_5 = anonteam_0_47.ui_tables.visuals.nade_style.value

	for iter_389_0 = #anonteam_389_3, 0, -1 do
		local anonteam_389_6 = anonteam_389_3[iter_389_0]

		if not anonteam_389_6 or not anonteam_389_6.m_bDidSmokeEffect then
			-- block empty
		else
			local anonteam_389_7 = anonteam_389_6:get_index()

			if not anonteam_0_31.smoke_array[anonteam_389_7] then
				anonteam_0_31.smoke_array[anonteam_389_7] = {
					alpha = 0,
					anim = 0
				}
			end

			local anonteam_389_8 = anonteam_0_31.smoke_array[anonteam_389_7]
			local anonteam_389_9 = 1 - (globals.tickcount - anonteam_389_6.m_nSmokeEffectTickBegin) / 1155
			local anonteam_389_10 = anonteam_389_6.m_vecOrigin

			anonteam_389_8.anim = anonteam_0_19(anonteam_389_8.anim + anonteam_0_31.animation_value, 0, 1)
			anonteam_389_8.alpha = anonteam_389_9 > 0.02 and anonteam_0_19(anonteam_389_8.alpha + anonteam_0_31.animation_value, 0, 1) or anonteam_0_19(anonteam_389_8.alpha - anonteam_0_31.animation_value, 0, 1)

			if anonteam_389_9 == 0 then
				anonteam_0_31.smoke_array[anonteam_389_7] = nil
			else
				local anonteam_389_11 = anonteam_389_1:dist2d(anonteam_389_10) - anonteam_389_2
				local anonteam_389_12

				anonteam_389_12 = anonteam_389_11 > 0 and 1 - anonteam_389_11 / 80 or 1

				local anonteam_389_13 = anonteam_0_31.easings.out_quart(anonteam_389_8.alpha) * anonteam_389_12
				local anonteam_389_14 = anonteam_0_31.easings.out_quart(anonteam_389_8.anim)

				if anonteam_389_13 == 0 then
					-- block empty
				else
					local anonteam_389_15 = anonteam_389_4:clone()

					anonteam_389_15.a = anonteam_389_15.a * anonteam_389_13

					local anonteam_389_16 = anonteam_389_15:clone()

					anonteam_389_16.a = 0

					render.circle_3d_outline(anonteam_389_10, anonteam_389_15, 125 * anonteam_389_14, 90, anonteam_389_5 == 2 and anonteam_389_9 or 1, anonteam_389_5 == 2 and 2 or 1)

					anonteam_389_15.a = anonteam_389_15.a - 20

					if anonteam_389_5 == 2 then
						render.circle_3d_gradient(anonteam_389_10, anonteam_389_15, anonteam_389_16, 125 * anonteam_389_14, 0, 1, 1)
					end
				end
			end
		end
	end
end

function anonteam_0_31.grenade_molotov_func()
	-- function 390
	local anonteam_390_0 = anonteam_0_23()

	if not anonteam_390_0 then
		return
	end

	local anonteam_390_1 = anonteam_390_0:get_origin()
	local anonteam_390_2 = 525
	local anonteam_390_3 = anonteam_0_47.ui_tables.visuals.nade_molotov_c.value
	local anonteam_390_4 = anonteam_0_47.ui_tables.visuals.nade_molotov_cf.value
	local anonteam_390_5 = entity.get_entities("CInferno")
	local anonteam_390_6 = anonteam_0_47.ui_tables.visuals.nade_style.value

	for iter_390_0 = #anonteam_390_5, 0, -1 do
		local anonteam_390_7 = anonteam_390_5[iter_390_0]

		if not anonteam_390_7 then
			-- block empty
		else
			local anonteam_390_8 = anonteam_390_7:get_index()

			if not anonteam_0_31.molotov_array[anonteam_390_8] then
				anonteam_0_31.molotov_array[anonteam_390_8] = {
					alpha = 0,
					anim = 0
				}
			end

			local anonteam_390_9 = anonteam_0_31.molotov_array[anonteam_390_8]
			local anonteam_390_10 = 1 - (globals.tickcount - anonteam_390_7.m_nFireEffectTickBegin) / 449
			local anonteam_390_11 = anonteam_390_7.m_vecOrigin

			anonteam_390_9.alpha = anonteam_390_10 > 0.06 and anonteam_0_19(anonteam_390_9.alpha + anonteam_0_31.animation_value / 2, 0, 1) or anonteam_0_19(anonteam_390_9.alpha - anonteam_0_31.animation_value, 0, 1)

			local anonteam_390_12 = anonteam_390_1:dist2d(anonteam_390_11) - anonteam_390_2
			local anonteam_390_13

			anonteam_390_13 = anonteam_390_12 > 0 and 1 - anonteam_390_12 / 80 or 1

			local anonteam_390_14 = anonteam_0_31.easings.out_quart(anonteam_390_9.alpha) * anonteam_390_13

			if anonteam_390_14 == 0 then
				-- block empty
			else
				local anonteam_390_15 = anonteam_390_7.m_hOwnerEntity
				local anonteam_390_16 = false

				if anonteam_390_15 then
					anonteam_390_16 = anonteam_390_15.m_iTeamNum == anonteam_390_0.m_iTeamNum and anonteam_390_15 ~= anonteam_390_0
				end

				local anonteam_390_17 = anonteam_390_16 and anonteam_390_4:clone() or anonteam_390_3:clone()

				anonteam_390_17.a = anonteam_390_17.a * anonteam_390_14

				local anonteam_390_18 = anonteam_390_17:clone()

				anonteam_390_18.a = 0

				local anonteam_390_19 = {}

				for iter_390_1 = 1, 20 do
					anonteam_390_19[iter_390_1] = anonteam_390_11 + vector(anonteam_390_7.m_fireXDelta[iter_390_1], anonteam_390_7.m_fireYDelta[iter_390_1], anonteam_390_7.m_fireZDelta[iter_390_1])
				end

				local anonteam_390_20 = 0
				local anonteam_390_21 = vector(0, 0, 0)
				local anonteam_390_22 = vector(0, 0, 0)

				for iter_390_2 = 1, #anonteam_390_19 do
					for iter_390_3 = 1, #anonteam_390_19 do
						local anonteam_390_23 = anonteam_390_19[iter_390_2]:dist2d(anonteam_390_19[iter_390_3])

						if anonteam_390_20 < anonteam_390_23 then
							anonteam_390_21 = anonteam_390_19[iter_390_2]
							anonteam_390_22 = anonteam_390_19[iter_390_3]
							anonteam_390_20 = anonteam_390_23
						end
					end
				end

				local anonteam_390_24 = (anonteam_390_21 + anonteam_390_22) / 2

				anonteam_390_24.z = anonteam_390_11.z

				local anonteam_390_25 = anonteam_390_20 / 2

				anonteam_390_9.anim = anonteam_390_25 > 50 and anonteam_0_19(anonteam_390_9.anim + anonteam_0_31.animation_value / 3, 0, 1) or anonteam_390_9.anim

				local anonteam_390_26 = anonteam_0_31.easings.out_quart(anonteam_390_9.anim)

				if anonteam_390_10 <= 0.018 then
					anonteam_0_31.molotov_array[anonteam_390_8] = nil
				else
					render.circle_3d_outline(anonteam_390_24, anonteam_390_17, anonteam_390_25 * anonteam_390_26, 90, anonteam_390_6 == 2 and anonteam_390_10 or 1, anonteam_390_6 == 2 and 2 or 1)

					anonteam_390_17.a = anonteam_390_17.a - 20

					if anonteam_390_6 == 2 then
						render.circle_3d_gradient(anonteam_390_24, anonteam_390_17, anonteam_390_18, anonteam_390_25 * anonteam_390_26, 0, 1, 1)
					end
				end
			end
		end
	end
end

anonteam_0_47.ui_tables.visuals.nade_switch:set_callback(function()
	-- function 391
	if anonteam_0_47.ui_tables.visuals.nade_switch.value then
		events.round_start:unset(function()
			-- function 392
			anonteam_0_31.smoke_array = {}
			anonteam_0_31.molotov_array = {}
		end)
	else
		events.round_start:unset(function()
			-- function 393
			anonteam_0_31.smoke_array = {}
			anonteam_0_31.molotov_array = {}
		end)
	end

	if anonteam_0_47.ui_tables.visuals.nade_switch.value and anonteam_0_47.ui_tables.visuals.nade_smoke.value then
		events.render:set(anonteam_0_31.grenade_smoke_func)
	else
		events.render:unset(anonteam_0_31.grenade_smoke_func)
	end

	if anonteam_0_47.ui_tables.visuals.nade_switch.value and anonteam_0_47.ui_tables.visuals.nade_molotov.value then
		events.render:set(anonteam_0_31.grenade_molotov_func)
	else
		events.render:unset(anonteam_0_31.grenade_molotov_func)
	end
end, true)
anonteam_0_47.ui_tables.visuals.nade_molotov:set_callback(function()
	-- function 394
	if anonteam_0_47.ui_tables.visuals.nade_switch.value and anonteam_0_47.ui_tables.visuals.nade_molotov.value then
		events.render:set(anonteam_0_31.grenade_molotov_func)
	else
		events.render:unset(anonteam_0_31.grenade_molotov_func)
	end
end, true)
anonteam_0_47.ui_tables.visuals.nade_smoke:set_callback(function()
	-- function 395
	if anonteam_0_47.ui_tables.visuals.nade_switch.value and anonteam_0_47.ui_tables.visuals.nade_smoke.value then
		events.render:set(anonteam_0_31.grenade_smoke_func)
	else
		events.render:unset(anonteam_0_31.grenade_smoke_func)
	end
end)

anonteam_0_31.hitmarkers_list = {}
anonteam_0_31.png_hex = "\x89PNG\r\n\x1A\n\x00\x00\x00\rIHDR\x00\x00\x00\r\x00\x00\x00\r\b\x06\x00\x00\x00r\xEB\xE4|\x00\x00\x00\tpHYs\x00\x00\v\x13\x00\x00\v\x13\x01\x00\x9A\x9C\x18\x00\x00\x00\x8EIDAT(\x91\x9D\x92\xCD\x15\x020\b\x83\xD3\x15z`\x85\f\xC0:]YV\x8A\a\x8D\xAFV\xFCy\xE6\b|PB\x87$\x00\xC0\x18#q\xD3\xC51\xAB\xCBM\x00\x8B\xA4\"B\x00\x12\x00$\xE1^\x90\x11!\x92\x02\xB0\xDC(IJ\x92\xAAj\a\xA7\x81\xAA\x92$\x83\x893\xB1\x81\xEBM<\x1F\xD3\xCE\x02\x92\x1F\x81\x16\xB4\x9A'\xC3\xCBZ\xCB\xFBY\x9B\x01\xF3\t\xDA]\xFA6I\x12Z\xE0\x97\x9D\xFEr\xEF\xDD\x9D^\x1A\xEEwj\x7F\xC4\xE9\xEA\xF9#\xA6\x93\xDD\x1D\xBA\xDC\x15!\xA5\xFD\xFA\xC3\xDAX:\x00\x00\x00\x00IEND\xAEB`\x82"
anonteam_0_31.loaded_image = render.load_image(anonteam_0_31.png_hex, vector(13, 13))

function anonteam_0_31.hitmarker_register(arg_396_0)
	-- function 396
	local anonteam_396_0 = arg_396_0.state

	anonteam_396_0 = anonteam_396_0 == "correction" and "resolver" or anonteam_396_0
	anonteam_396_0 = anonteam_396_0 == "misprediction" and "jitter resolver" or anonteam_396_0
	anonteam_396_0 = not anonteam_396_0 and "hit" or anonteam_396_0

	anonteam_0_4(anonteam_0_31.hitmarkers_list, #anonteam_0_31.hitmarkers_list, {
		alpha = 0.1,
		pos = arg_396_0.aim,
		reason = arg_396_0.state and string.upper(anonteam_396_0) or arg_396_0.damage,
		curtime = globals.curtime,
		color = anonteam_396_0
	})
end

function anonteam_0_31.hitmarker_func()
	-- function 397
	local anonteam_397_0 = anonteam_0_47.ui_tables.visuals.hitmarker_duration.value / 10
	local anonteam_397_1 = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value:clone()
	local anonteam_397_2 = anonteam_0_47.ui_tables.visuals.hitmarker_theme_hit.value and (anonteam_0_47.ui_tables.visuals.color_use_theme.value and ui.get_style("Link Active") or anonteam_0_47.ui_tables.visuals.main_color.value) or anonteam_0_47.ui_tables.visuals.hitmarker_hit.value:clone()
	local anonteam_397_3 = anonteam_0_47.ui_tables.visuals.hitmarker_lastshot.value
	local anonteam_397_4 = anonteam_0_47.ui_tables.visuals.hitmarker_color_hitlog.value
	local anonteam_397_5 = anonteam_0_47.ui_tables.visuals.hitmarker_glow.value
	local anonteam_397_6 = 25
	local anonteam_397_7 = 0.75

	if anonteam_397_4 then
		if anonteam_0_47.ui_tables.visuals.hitlog_color_mode.value == 1 then
			anonteam_0_55.log_colors = {
				hit = anonteam_0_47.ui_tables.visuals.hitlog_theme_hit.value and ui.get_style("Link Active") or anonteam_0_47.ui_tables.visuals.hitlog_hit.value,
				["lagcomp failure"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
				["prediction error"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
				["jitter resolver"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
				resolver = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
				spread = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
				["unregistered shot"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
				["player death"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
				death = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
				dormancy = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
				error = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
				["damage rejection"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
				["backtrack failure"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value
			}
		else
			anonteam_0_55.log_colors = {
				hit = anonteam_0_47.ui_tables.visuals.hitlog_theme_hit.value and ui.get_style("Link Active") or anonteam_0_47.ui_tables.visuals.hitlog_hit.value,
				["lagcomp failure"] = anonteam_0_47.ui_tables.visuals.hitlog_pred.value,
				["prediction error"] = anonteam_0_47.ui_tables.visuals.hitlog_pred.value,
				["jitter resolver"] = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
				resolver = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
				spread = anonteam_0_47.ui_tables.visuals.hitlog_spread.value,
				["unregistered shot"] = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
				["player death"] = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
				death = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
				dormancy = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
				error = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
				["damage rejection"] = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
				["backtrack failure"] = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value
			}
		end
	else
		anonteam_0_55.log_colors = {
			hit = anonteam_0_47.ui_tables.visuals.hitmarker_theme_hit.value and ui.get_style("Link Active") or anonteam_0_47.ui_tables.visuals.hitmarker_hit.value,
			["lagcomp failure"] = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value,
			["prediction error"] = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value,
			["jitter resolver"] = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value,
			resolver = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value,
			spread = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value,
			["unregistered shot"] = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value,
			["player death"] = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value,
			death = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value,
			dormancy = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value,
			error = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value,
			["damage rejection"] = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value,
			["backtrack failure"] = anonteam_0_47.ui_tables.visuals.hitmarker_miss.value
		}
	end

	for iter_397_0 = #anonteam_0_31.hitmarkers_list, 0, -1 do
		local anonteam_397_8 = anonteam_0_31.hitmarkers_list[iter_397_0]

		if not anonteam_397_8 then
			-- block empty
		elseif anonteam_397_8.alpha == 0 then
			table.remove(anonteam_0_31.hitmarkers_list, iter_397_0)
		else
			if anonteam_397_0 < anonteam_0_11(anonteam_397_8.curtime - globals.curtime) or anonteam_397_3 and iter_397_0 > 0 then
				anonteam_397_8.alpha = anonteam_0_19(anonteam_397_8.alpha - anonteam_0_31.animation_value * 2, 0, 1)
			else
				anonteam_397_8.alpha = anonteam_0_19(anonteam_397_8.alpha + anonteam_0_31.animation_value * 2, 0, 1)
			end

			local anonteam_397_9 = anonteam_397_8.alpha
			local anonteam_397_10 = anonteam_397_8.pos:to_screen()

			if not anonteam_397_10 then
				-- block empty
			else
				local anonteam_397_11 = anonteam_397_10 - vector(6.5, 6.5)
				local anonteam_397_12 = anonteam_397_8.color == "hit" and anonteam_397_2 or anonteam_397_1

				anonteam_397_12 = anonteam_397_4 and anonteam_0_55.log_colors[anonteam_397_8.color] or anonteam_397_12

				local anonteam_397_13 = color(anonteam_397_12.r, anonteam_397_12.g, anonteam_397_12.b, anonteam_397_12.a * anonteam_397_9)

				if anonteam_397_5 then
					local anonteam_397_14 = anonteam_397_13:clone()

					anonteam_397_14.a = 255 * anonteam_397_7 * anonteam_397_9

					render.shadow(anonteam_397_11 + vector(4, 5), anonteam_397_11 + vector(5, 7), anonteam_397_14, anonteam_397_6 * 2)
				end

				render.texture(anonteam_0_31.loaded_image, anonteam_397_11, vector(13, 13), anonteam_397_13)

				local anonteam_397_15 = anonteam_397_8.color ~= "hit" and anonteam_397_13 or color(255, 255 * anonteam_397_9)

				if anonteam_397_5 then
					local anonteam_397_16 = render.measure_text(2, nil, anonteam_397_8.reason)
					local anonteam_397_17 = anonteam_397_15:clone()

					anonteam_397_17.a = 255 * anonteam_397_7 * anonteam_397_9

					render.shadow(anonteam_397_11 + vector(18, 4), anonteam_397_11 + vector(16, 1) + anonteam_397_16 / 1.6, anonteam_397_17, anonteam_397_6)
				end

				anonteam_0_25(2, anonteam_397_11 + vector(15, 1), anonteam_397_15, nil, anonteam_397_8.reason)
			end
		end
	end
end

anonteam_0_47.ui_tables.visuals.hitmarker_switch:set_callback(function()
	-- function 398
	if anonteam_0_47.ui_tables.visuals.hitmarker_switch.value then
		events.aim_ack:set(anonteam_0_31.hitmarker_register)
		events.render:set(anonteam_0_31.hitmarker_func)
		anonteam_0_35.world_hitmarker:override(false)
	else
		events.aim_ack:unset(anonteam_0_31.hitmarker_register)
		events.render:unset(anonteam_0_31.hitmarker_func)
		anonteam_0_35.world_hitmarker:override()
	end
end, true)
events.shutdown:set(function()
	-- function 399
	anonteam_0_35.world_hitmarker:override()
end)

anonteam_0_31.logs_array = {}

function anonteam_0_31.register_hitlog(arg_400_0)
	-- function 400
	local anonteam_400_0 = anonteam_0_47.ui_tables.visuals.hitlog_vis_type.value_by_name
	local anonteam_400_1 = anonteam_400_0[2]
	local anonteam_400_2 = anonteam_400_0[3]
	local anonteam_400_3 = anonteam_400_0[1]
	local anonteam_400_4 = arg_400_0.id
	local anonteam_400_5 = tostring(arg_400_0.target:get_name())
	local anonteam_400_6 = tostring(arg_400_0.damage)
	local anonteam_400_7 = tostring(arg_400_0.hitchance)
	local anonteam_400_8 = tostring(anonteam_0_55.hitgroup_str[arg_400_0.hitgroup])
	local anonteam_400_9 = tostring(arg_400_0.backtrack)
	local anonteam_400_10 = tostring(arg_400_0.wanted_damage)
	local anonteam_400_11 = tostring(anonteam_0_55.hitgroup_str[arg_400_0.wanted_hitgroup])
	local anonteam_400_12 = arg_400_0.state

	anonteam_400_12 = anonteam_400_12 == "correction" and "resolver" or anonteam_400_12
	anonteam_400_12 = anonteam_400_12 == "misprediction" and "jitter resolver" or anonteam_400_12

	if not anonteam_400_6 then
		return
	end

	if anonteam_0_47.ui_tables.visuals.hitlog_color_mode.value == 1 then
		anonteam_0_55.log_colors = {
			hit = anonteam_0_47.ui_tables.visuals.hitlog_theme_hit.value and ui.get_style("Link Active") or anonteam_0_47.ui_tables.visuals.hitlog_hit.value,
			["lagcomp failure"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["prediction error"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["jitter resolver"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			resolver = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			spread = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["unregistered shot"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["player death"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			death = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			dormancy = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			error = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["damage rejection"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["backtrack failure"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value
		}
	else
		anonteam_0_55.log_colors = {
			hit = anonteam_0_47.ui_tables.visuals.hitlog_theme_hit.value and ui.get_style("Link Active") or anonteam_0_47.ui_tables.visuals.hitlog_hit.value,
			["lagcomp failure"] = anonteam_0_47.ui_tables.visuals.hitlog_pred.value,
			["prediction error"] = anonteam_0_47.ui_tables.visuals.hitlog_pred.value,
			["jitter resolver"] = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
			resolver = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
			spread = anonteam_0_47.ui_tables.visuals.hitlog_spread.value,
			["unregistered shot"] = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
			["player death"] = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
			death = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
			dormancy = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
			error = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
			["damage rejection"] = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
			["backtrack failure"] = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value
		}
	end

	if not anonteam_400_12 and anonteam_400_8 then
		if anonteam_400_1 then
			local anonteam_400_13 = {
				anim_value = 0.01,
				color = anonteam_0_55.log_colors.hit,
				text_array = {
					"",
					anonteam_0_47.ui_tables.visuals.hitlog_extra.value_by_name.Icons and "\xEF\x81\x9B " or "",
					arg_400_0.target.m_iHealth ~= 0 and "Hit " or "Killed ",
					arg_400_0.target.m_iHealth ~= 0 and anonteam_400_5 or anonteam_400_5 .. "`s",
					" in the ",
					anonteam_400_8 == anonteam_400_11 and anonteam_400_8 or anonteam_400_8 .. "(" .. anonteam_400_11 .. ")",
					arg_400_0.target.m_iHealth ~= 0 and " for " or "",
					arg_400_0.target.m_iHealth ~= 0 and (anonteam_400_6 == anonteam_400_10 and anonteam_400_6 or anonteam_400_6 .. "(" .. anonteam_400_10 .. ")") or "",
					arg_400_0.target.m_iHealth ~= 0 and " (" or "",
					arg_400_0.target.m_iHealth ~= 0 and arg_400_0.target.m_iHealth or "",
					arg_400_0.target.m_iHealth ~= 0 and " hp remaining)" or ""
				},
				curtime = globals.curtime
			}

			anonteam_0_4(anonteam_0_31.logs_array, anonteam_400_13)
		end

		local anonteam_400_14 = ("Hit %s %s for %s (%s hp remaining) bt: %s hc: %s"):format(anonteam_400_5, anonteam_400_8 ~= anonteam_400_11 and anonteam_400_8 .. "(" .. anonteam_400_11 .. ")" or anonteam_400_8, anonteam_400_6, arg_400_0.target.m_iHealth, anonteam_400_9, anonteam_400_7)

		if anonteam_400_3 then
			anonteam_0_31.print_color_text({
				"",
				"\a" .. anonteam_0_55.log_colors.hit:to_hex() .. table.concat({
					"anonteam ",
					"-",
					" "
				}),
				"",
				arg_400_0.target.m_iHealth ~= 0 and "Hit    " or "Killed ",
				arg_400_0.target.m_iHealth ~= 0 and anonteam_400_5 .. "  " or anonteam_400_5 .. "`s",
				" in the ",
				anonteam_400_8,
				anonteam_400_8 ~= anonteam_400_11 and "(" .. anonteam_400_11 .. ")" or "",
				"",
				arg_400_0.target.m_iHealth ~= 0 and " for " or "",
				arg_400_0.target.m_iHealth ~= 0 and anonteam_400_6 or "",
				arg_400_0.target.m_iHealth ~= 0 and (anonteam_400_6 ~= anonteam_400_10 and "(" .. anonteam_400_10 .. ")" or "") or "",
				"",
				(arg_400_0.target.m_iHealth > 0 and " (" .. arg_400_0.target.m_iHealth .. " hp remaining)" or "") .. (anonteam_400_9 ~= "0" and " bt: " or ""),
				anonteam_400_9 ~= "0" and anonteam_400_9 or "",
				anonteam_400_7 ~= "100" and " hc: " or "",
				anonteam_400_7 ~= "100" and anonteam_400_7 or ""
			}, anonteam_0_55.log_colors.hit)
		end

		if anonteam_400_2 then
			print_dev(anonteam_400_14)
		end

		return
	end

	if anonteam_400_1 then
		local anonteam_400_15 = {
			anim_value = 0.01,
			color = anonteam_0_55.log_colors[anonteam_400_12],
			text_array = {
				"",
				anonteam_0_47.ui_tables.visuals.hitlog_extra.value_by_name.Icons and "\xEE\x89\x8C " or "",
				"Missed ",
				anonteam_400_5 .. "`s",
				" in the ",
				anonteam_400_11,
				" due to ",
				anonteam_400_12
			},
			curtime = globals.curtime
		}

		anonteam_0_4(anonteam_0_31.logs_array, anonteam_400_15)
	end

	if anonteam_400_3 then
		anonteam_0_31.print_color_text({
			"",
			"\a" .. anonteam_0_55.log_colors[anonteam_400_12]:to_hex() .. "extension " .. "\xC2\xBB" .. " ",
			"",
			"Missed ",
			anonteam_400_5 .. "`s",
			" in the ",
			anonteam_400_11,
			" due to ",
			"\a" .. anonteam_0_55.log_colors[anonteam_400_12]:to_hex() .. anonteam_400_12,
			anonteam_400_9 ~= "0" and " bt: " or "",
			anonteam_400_9 ~= "0" and anonteam_400_9 or "",
			anonteam_400_7 ~= "100" and " hc: " or "",
			anonteam_400_7 ~= "100" and anonteam_400_7 or ""
		}, anonteam_0_55.log_colors[anonteam_400_12])
	end

	local anonteam_400_16 = ("Miss %s %s due to %s bt: %s hc: %s"):format(anonteam_400_5, anonteam_400_11, anonteam_400_12, anonteam_400_9, anonteam_400_7)

	if anonteam_400_2 then
		print_dev(anonteam_400_16)
	end
end

function anonteam_0_31.player_hurt_hitlogs(arg_401_0)
	-- function 401
	local anonteam_401_0 = entity.get(arg_401_0.userid, true)

	if not anonteam_401_0 or anonteam_401_0 == anonteam_0_23() then
		return
	end

	if entity.get(arg_401_0.attacker, true) ~= anonteam_0_23() then
		return
	end

	if not arg_401_0.weapon:find("grenade") and arg_401_0.weapon ~= "inferno" and arg_401_0.weapon ~= "knife" then
		return
	end

	anonteam_0_55.log_colors = {
		hit = anonteam_0_47.ui_tables.visuals.hitlog_theme_hit.value and ui.get_style("Link Active") or anonteam_0_47.ui_tables.visuals.hitlog_hit.value
	}

	local anonteam_401_1 = anonteam_401_0:get_name()
	local anonteam_401_2 = arg_401_0.dmg_health
	local anonteam_401_3 = arg_401_0.health
	local anonteam_401_4 = anonteam_0_47.ui_tables.visuals.hitlog_vis_type.value_by_name[3]
	local anonteam_401_5 = anonteam_0_47.ui_tables.visuals.hitlog_vis_type.value_by_name[2]

	if arg_401_0.weapon:find("grenade") or arg_401_0.weapon == "inferno" then
		anonteam_0_31.print_color_text({
			"",
			"\a" .. anonteam_0_55.log_colors.hit:to_hex() .. table.concat({
				"extension ",
				"\xC2\xBB",
				" "
			}),
			"",
			arg_401_0.weapon:find("grenade") and "Naded  " or "Burned ",
			anonteam_401_1 .. "`s",
			anonteam_401_0.m_iHealth - anonteam_401_2 > 0 and " for " or " ",
			anonteam_401_0.m_iHealth - anonteam_401_2 > 0 and anonteam_401_2 or " ",
			anonteam_401_0.m_iHealth - anonteam_401_2 > 0 and " (" .. anonteam_401_3 .. " hp remaining)" or " "
		}, anonteam_0_55.log_colors.hit)

		if anonteam_401_4 then
			local anonteam_401_6 = ("%s %s for %s (%s hp remaining) "):format(arg_401_0.weapon:find("grenade") and "Naded" or "Burned", anonteam_401_1, anonteam_401_2, anonteam_401_3)

			print_dev(anonteam_401_6)
		end

		if anonteam_401_5 then
			local anonteam_401_7

			for iter_401_0 = 1, #anonteam_0_31.logs_array do
				local anonteam_401_8 = anonteam_0_31.logs_array[iter_401_0]

				if anonteam_401_8 then
					local anonteam_401_9 = anonteam_401_8.text_array

					if (anonteam_401_9[3] == "Burned " or anonteam_401_9[3] == "Naded ") and anonteam_401_9[4] == anonteam_401_1 .. "`s" then
						anonteam_401_7 = iter_401_0

						break
					end
				end
			end

			if not anonteam_401_7 then
				local anonteam_401_10 = {
					anim_value = 0.01,
					color = anonteam_0_55.log_colors.hit,
					text_array = {
						"",
						anonteam_0_47.ui_tables.visuals.hitlog_extra.value_by_name.Icons and (arg_401_0.weapon:find("grenade") and "\xEE\x93\x9C " or "\xEF\x81\xAD ") or "",
						arg_401_0.weapon:find("grenade") and "Naded " or "Burned ",
						anonteam_401_1 .. "`s",
						" for ",
						anonteam_401_2,
						" (",
						anonteam_401_3,
						" hp remaining)"
					},
					curtime = globals.curtime
				}

				anonteam_0_4(anonteam_0_31.logs_array, anonteam_401_10)
			else
				local anonteam_401_11 = anonteam_0_31.logs_array[anonteam_401_7].text_array[6]

				anonteam_0_31.logs_array[anonteam_401_7].text_array[3] = arg_401_0.weapon:find("grenade") and "Naded " or "Burned "
				anonteam_0_31.logs_array[anonteam_401_7].text_array[6] = anonteam_401_11 + anonteam_401_2
				anonteam_0_31.logs_array[anonteam_401_7].text_array[8] = anonteam_401_3
				anonteam_0_31.logs_array[anonteam_401_7].curtime = globals.curtime
			end
		end

		return
	end

	anonteam_0_31.print_color_text({
		"",
		"\a" .. anonteam_0_55.log_colors.hit:to_hex() .. table.concat({
			"extension ",
			"\xC2\xBB",
			" "
		}),
		"",
		"Knifed ",
		anonteam_401_1 .. "`s",
		anonteam_401_0.m_iHealth - anonteam_401_2 > 0 and " for " or " ",
		anonteam_401_0.m_iHealth - anonteam_401_2 > 0 and anonteam_401_2 or " ",
		anonteam_401_0.m_iHealth - anonteam_401_2 > 0 and " (" .. anonteam_401_3 .. " hp remaining)" or " "
	}, anonteam_0_55.log_colors.hit)

	if anonteam_401_4 then
		local anonteam_401_12 = ("Knifed %s for %s (%s hp remaining) "):format(anonteam_401_1, anonteam_401_2, anonteam_401_3)

		print_dev(anonteam_401_12)
	end

	if anonteam_401_5 then
		local anonteam_401_13

		for iter_401_1 = 1, #anonteam_0_31.logs_array do
			local anonteam_401_14 = anonteam_0_31.logs_array[iter_401_1]

			if anonteam_401_14 then
				local anonteam_401_15 = anonteam_401_14.text_array

				if anonteam_401_15[1] == "Knifed " and anonteam_401_15[2] == anonteam_401_1 then
					anonteam_401_13 = iter_401_1

					break
				end
			end
		end

		if not anonteam_401_13 then
			local anonteam_401_16 = {
				anim_value = 0.01,
				color = anonteam_0_55.log_colors.hit,
				text_array = {
					"Knifed ",
					anonteam_401_1,
					" for ",
					anonteam_401_2,
					" (",
					anonteam_401_3,
					" hp remaining)"
				},
				curtime = globals.curtime
			}

			anonteam_0_4(anonteam_0_31.logs_array, anonteam_401_16)
		else
			local anonteam_401_17 = anonteam_0_31.logs_array[anonteam_401_13].text_array[4]

			anonteam_0_31.logs_array[anonteam_401_13].text_array[4] = anonteam_401_17 + anonteam_401_2
			anonteam_0_31.logs_array[anonteam_401_13].text_array[6] = anonteam_401_3
			anonteam_0_31.logs_array[anonteam_401_13].curtime = globals.curtime
		end
	end
end

function anonteam_0_31.render_gradient_log(arg_402_0, arg_402_1, arg_402_2, arg_402_3)
	-- function 402
	local anonteam_402_0 = anonteam_0_27(1, "", table.concat(arg_402_1))
	local anonteam_402_1 = vector((anonteam_402_0.x / 1.95 + 20) * arg_402_3, anonteam_402_0.y + 2 + 20)

	render.push_clip_rect(arg_402_0 - anonteam_402_1, arg_402_0 + anonteam_402_1, false)

	anonteam_402_0.y = 0
	arg_402_0 = arg_402_0 - anonteam_402_0 / 2

	local anonteam_402_2 = 0

	if anonteam_0_47.ui_tables.visuals.hitlog_extra.value_by_name.Glow then
		local anonteam_402_3 = vector(0, 0)

		for iter_402_0 = 1, #arg_402_1 do
			local anonteam_402_4 = anonteam_0_27(1, "", arg_402_1[iter_402_0])

			anonteam_402_4.y = 0
			anonteam_402_3 = anonteam_402_3 + anonteam_402_4
		end

		anonteam_0_28(arg_402_0 + vector(0, 7), arg_402_0 + anonteam_402_3 + vector(-3, 7), arg_402_2, 30)
	end

	for iter_402_1 = 1, #arg_402_1 do
		local anonteam_402_5 = iter_402_1 % 2 == 0 and arg_402_2 or color(255, arg_402_2.a)
		local anonteam_402_6 = anonteam_0_27(1, "", arg_402_1[iter_402_1])

		anonteam_402_6.y = 0

		anonteam_0_25(1, arg_402_0 + anonteam_402_2, anonteam_402_5, "", arg_402_1[iter_402_1])

		anonteam_402_2 = anonteam_402_2 + anonteam_402_6
	end

	render.pop_clip_rect()
end

anonteam_0_31.logs_menu_cache = 0

drag_system.add_drag("logs", vector(-190, 0), vector(399, 90), vector(anonteam_0_31.screen_size.x / 2, anonteam_0_31.screen_size.y / 1.5), true, function()
	-- function 403
	return anonteam_0_47.ui_tables.visuals.hitlog_switch.value and anonteam_0_47.ui_tables.visuals.hitlog_vis_type.value_by_name[2] and ui.get_alpha() > 0
end)

function anonteam_0_31.logs_render()
	-- function 404
	if not anonteam_0_47.ui_tables.visuals.hitlog_vis_type.value_by_name[2] then
		return
	end

	if anonteam_0_47.ui_tables.visuals.hitlog_color_mode.value == 1 then
		anonteam_0_55.log_colors = {
			hit = anonteam_0_47.ui_tables.visuals.hitlog_theme_hit.value and (anonteam_0_47.ui_tables.visuals.color_use_theme.value and ui.get_style("Link Active") or anonteam_0_47.ui_tables.visuals.main_color.value) or anonteam_0_47.ui_tables.visuals.hitlog_hit.value,
			["lagcomp failure"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["prediction error"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["jitter resolver"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			resolver = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			spread = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["unregistered shot"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["player death"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			death = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			dormancy = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			error = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["damage rejection"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value,
			["backtrack failure"] = anonteam_0_47.ui_tables.visuals.hitlog_miss.value
		}
	else
		anonteam_0_55.log_colors = {
			hit = anonteam_0_47.ui_tables.visuals.hitlog_theme_hit.value and (anonteam_0_47.ui_tables.visuals.color_use_theme.value and ui.get_style("Link Active") or anonteam_0_47.ui_tables.visuals.main_color.value) or anonteam_0_47.ui_tables.visuals.hitlog_hit.value,
			["lagcomp failure"] = anonteam_0_47.ui_tables.visuals.hitlog_pred.value,
			["prediction error"] = anonteam_0_47.ui_tables.visuals.hitlog_pred.value,
			["jitter resolver"] = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
			resolver = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
			spread = anonteam_0_47.ui_tables.visuals.hitlog_spread.value,
			["unregistered shot"] = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
			["player death"] = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
			death = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
			dormancy = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
			error = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value,
			["damage rejection"] = anonteam_0_47.ui_tables.visuals.hitlog_death.value,
			["backtrack failure"] = anonteam_0_47.ui_tables.visuals.hitlog_resolver.value
		}
	end

	local anonteam_404_0 = 0
	local anonteam_404_1 = ui.get_alpha()
	local anonteam_404_2 = vector(anonteam_0_31.screen_size.x / 2, anonteam_0_0.drag_memory.logs_y)

	if anonteam_404_1 > 0 then
		render.rect_outline(anonteam_404_2 + vector(-190, 0), anonteam_404_2 + vector(190, 90), color(200, 150 * anonteam_404_1), 1, 5)

		local anonteam_404_3 = {
			"",
			anonteam_0_47.ui_tables.visuals.hitlog_extra.value_by_name.Icons and "\xEF\x81\x9B " or "",
			"Hit ",
			"Misnik",
			" in the ",
			"head(chest)",
			" for ",
			"134(100)",
			" (",
			"0",
			" hp remaining)"
		}

		anonteam_0_31.render_gradient_log(anonteam_404_2 + vector(0, anonteam_404_0), anonteam_404_3, anonteam_0_55.log_colors.hit, anonteam_404_1)

		anonteam_404_0 = anonteam_404_0 + 12 * anonteam_404_1

		local anonteam_404_4 = {
			"",
			anonteam_0_47.ui_tables.visuals.hitlog_extra.value_by_name.Icons and "\xEE\x89\x8C " or "",
			"Missed ",
			"Misnik`s",
			" in the ",
			"stomach",
			" due to ",
			"resolver"
		}

		anonteam_0_31.render_gradient_log(anonteam_404_2 + vector(0, anonteam_404_0), anonteam_404_4, anonteam_0_55.log_colors.resolver, anonteam_404_1)

		anonteam_404_0 = anonteam_404_0 + 12 * anonteam_404_1
		anonteam_404_4[6] = "right leg"
		anonteam_404_4[8] = "spread"

		anonteam_0_31.render_gradient_log(anonteam_404_2 + vector(0, anonteam_404_0), anonteam_404_4, anonteam_0_55.log_colors.spread, anonteam_404_1)

		anonteam_404_0 = anonteam_404_0 + 12 * anonteam_404_1
		anonteam_404_4[8] = "death"
		anonteam_404_4[6] = "neck"

		anonteam_0_31.render_gradient_log(anonteam_404_2 + vector(0, anonteam_404_0), anonteam_404_4, anonteam_0_55.log_colors.death, anonteam_404_1)

		anonteam_404_0 = anonteam_404_0 + 12 * anonteam_404_1
	end

	local anonteam_404_5 = anonteam_0_47.ui_tables.visuals.hitlog_duration.value / 10

	for iter_404_0 = #anonteam_0_31.logs_array, 0, -1 do
		local anonteam_404_6 = anonteam_0_31.logs_array[iter_404_0]

		if not anonteam_404_6 then
			-- block empty
		elseif anonteam_404_6.anim_value == 0 then
			table.remove(anonteam_0_31.logs_array, iter_404_0)
		else
			if anonteam_404_5 < anonteam_0_11(anonteam_404_6.curtime - globals.curtime) then
				anonteam_404_6.anim_value = anonteam_0_19(anonteam_404_6.anim_value - anonteam_0_31.animation_value * 0.8, 0, 0.9)
			else
				anonteam_404_6.anim_value = anonteam_0_19(anonteam_404_6.anim_value + anonteam_0_31.animation_value * 0.8, 0, 0.9)
			end

			local anonteam_404_7 = anonteam_0_31.easings.in_out_quart(anonteam_404_6.anim_value)
			local anonteam_404_8 = color(anonteam_404_6.color.r, anonteam_404_6.color.g, anonteam_404_6.color.b, anonteam_404_6.color.a)

			anonteam_0_31.render_gradient_log(anonteam_404_2 + vector(0, anonteam_404_0), anonteam_404_6.text_array, anonteam_404_8, anonteam_404_7)

			anonteam_404_0 = anonteam_404_0 + 12 * anonteam_404_7
		end
	end
end

anonteam_0_47.ui_tables.visuals.hitlog_vis_type:set_callback(function()
	-- function 405
	local anonteam_405_0 = anonteam_0_47.ui_tables.visuals.hitlog_vis_type.value_by_name
	local anonteam_405_1 = ui.find("Miscellaneous", "Main", "Other", "Log Events")

	if anonteam_405_0[1] then
		if anonteam_405_1:get(2) then
			ui.find("Miscellaneous", "Main", "Other", "Log Events"):override({
				"Purchases"
			})
		else
			ui.find("Miscellaneous", "Main", "Other", "Log Events"):override({})
		end
	else
		ui.find("Miscellaneous", "Main", "Other", "Log Events"):override()
	end
end, true)
anonteam_0_47.ui_tables.visuals.hitlog_switch:set_callback(function()
	-- function 406
	local anonteam_406_0 = anonteam_0_47.ui_tables.visuals.hitlog_vis_type.value_by_name
	local anonteam_406_1 = ui.find("Miscellaneous", "Main", "Other", "Log Events")

	if anonteam_0_47.ui_tables.visuals.hitlog_switch.value then
		events.aim_ack:set(anonteam_0_31.register_hitlog)
		events.player_hurt:set(anonteam_0_31.player_hurt_hitlogs)
		events.render:set(anonteam_0_31.logs_render)
	else
		events.aim_ack:unset(anonteam_0_31.register_hitlog)
		events.player_hurt:unset(anonteam_0_31.player_hurt_hitlogs)
		events.render:unset(anonteam_0_31.logs_render)
	end

	if anonteam_406_0[1] and anonteam_0_47.ui_tables.visuals.hitlog_switch.value then
		if anonteam_406_1:get(2) then
			ui.find("Miscellaneous", "Main", "Other", "Log Events"):override({
				"Purchases"
			})
		else
			ui.find("Miscellaneous", "Main", "Other", "Log Events"):override({})
		end
	else
		ui.find("Miscellaneous", "Main", "Other", "Log Events"):override()
	end
end, true)
events.shutdown:set(function()
	-- function 407
	ui.find("Miscellaneous", "Main", "Other", "Log Events"):override()
end)

anonteam_0_31.ind_names = {
	["Peek Assist"] = "PA",
	["Hide Shots"] = "HS",
	["Double Tap"] = "DT",
	["Fake Duck"] = "FD"
}
anonteam_0_31.auto_peek = true

function anonteam_0_31.render_ind(arg_408_0, arg_408_1, arg_408_2, arg_408_3)
	-- function 408
	local anonteam_408_0 = arg_408_0

	if type(arg_408_0) == "boolean" then
		anonteam_408_0 = anonteam_0_31.ind_names[ref_name]
		arg_408_2 = arg_408_0
	end

	if type(arg_408_0) ~= "string" then
		ref_name = arg_408_0:name()
		anonteam_408_0 = anonteam_0_31.ind_names[ref_name]
		arg_408_2 = arg_408_0:get()
	end

	local anonteam_408_1 = anonteam_0_31.easings.out_quart(anonteam_0_31.calculate_value(anonteam_408_0, arg_408_2, 1.5, 0, 0.9))

	arg_408_1 = arg_408_1 + vector(0, 8 * anonteam_408_1)

	local anonteam_408_2 = anonteam_0_31.anim_values.nade_alpha
	local anonteam_408_3 = 1

	if anonteam_408_0 == "DT" then
		local anonteam_408_4 = rage.exploit:get()
		local anonteam_408_5 = 255 * anonteam_408_1 * arg_408_3 * (anonteam_408_2 ~= 1 and anonteam_408_4 == 1 and 0 or anonteam_408_2 ~= 1 and anonteam_408_4 == 0 and anonteam_408_2 or 1)

		render.text(2, arg_408_1, color(255, 0, 0, anonteam_408_5), "c", anonteam_408_0)

		local anonteam_408_6 = render.measure_text(2, nil, anonteam_408_0)
		local anonteam_408_7 = vector(arg_408_1.x - anonteam_408_6.x / 2, arg_408_1.y - anonteam_408_6.y / 2)

		render.push_clip_rect(anonteam_408_7, anonteam_408_7 + vector(anonteam_408_6.x * anonteam_408_4, anonteam_408_6.y), true)
	end

	local anonteam_408_8 = 255 * anonteam_408_1 * arg_408_3 * anonteam_408_2
	local anonteam_408_9 = color(255, anonteam_408_8)

	if anonteam_408_0 == "PA" then
		local anonteam_408_10 = anonteam_0_31.easings.out_quart(anonteam_0_31.calculate_value("autopeek", anonteam_0_31.auto_peek, 1, 0, 1))

		ref1, ref2 = ui.find("Aimbot", "Ragebot", "Main", "Peek Assist", "Style")
		ref_color = ref2:get()
		ref_color.a = anonteam_408_8
		anonteam_408_9 = anonteam_0_31.calculate_color(ref_color, color(255, 0, 0, anonteam_408_8), anonteam_408_10)
	end

	render.text(2, arg_408_1, anonteam_408_9, "c", anonteam_408_0)

	if anonteam_408_0 == "DT" then
		render.pop_clip_rect()
	end

	return arg_408_1
end

function anonteam_0_31.render_keybinds_for_indicator(arg_409_0, arg_409_1)
	-- function 409
	arg_409_0 = anonteam_0_31.render_ind(anonteam_0_35.double_tap, arg_409_0, nil, arg_409_1)
	arg_409_0 = anonteam_0_31.render_ind(anonteam_0_35.hide_shots, arg_409_0, nil, arg_409_1)
	arg_409_0 = anonteam_0_31.render_ind(anonteam_0_35.fakeduck, arg_409_0, nil, arg_409_1)

	local anonteam_409_0 = ui.get_binds()
	local anonteam_409_1 = false

	for iter_409_0 = 1, #anonteam_409_0 do
		if anonteam_409_0[iter_409_0].name == "Body Aim" then
			anonteam_409_1 = anonteam_409_0[iter_409_0].active and anonteam_409_0[iter_409_0].value == "Force"

			break
		end
	end

	arg_409_0 = anonteam_0_31.render_ind("BODY", arg_409_0, anonteam_409_1, arg_409_1)

	local anonteam_409_2 = false

	for iter_409_1 = 1, #anonteam_409_0 do
		if anonteam_409_0[iter_409_1].name == "Safe Points" then
			local anonteam_409_3

			anonteam_409_3 = anonteam_409_0[iter_409_1].active and anonteam_409_0[iter_409_1].value == "Force"

			break
		end
	end

	arg_409_0 = anonteam_0_31.render_ind(anonteam_0_35.auto_peek, arg_409_0, nil, arg_409_1)

	local anonteam_409_4 = false

	for iter_409_2 = 1, #anonteam_409_0 do
		if anonteam_409_0[iter_409_2].name == "Min. Damage" then
			anonteam_409_4 = anonteam_409_0[iter_409_2].active

			break
		end
	end

	arg_409_0 = anonteam_0_31.render_ind("DMG", arg_409_0, anonteam_409_4, arg_409_1)

	local anonteam_409_5 = false

	for iter_409_3 = 1, #anonteam_409_0 do
		if anonteam_409_0[iter_409_3].name == "Fake Latency" then
			anonteam_409_5 = anonteam_409_0[iter_409_3].active

			break
		end
	end

	arg_409_0 = anonteam_0_31.render_ind("PING", arg_409_0, anonteam_409_5, arg_409_1)
end

function anonteam_0_31.render_gradient_indicator(arg_410_0, arg_410_1, arg_410_2, arg_410_3, arg_410_4, arg_410_5)
	-- function 410
	local anonteam_410_0 = anonteam_0_27(arg_410_0, nil, arg_410_1) / 2

	anonteam_410_0.y = 0

	local anonteam_410_1 = -anonteam_410_0

	anonteam_410_1.x = anonteam_410_1.x - 1

	local anonteam_410_2 = #arg_410_2
	local anonteam_410_3 = anonteam_0_47.ui_tables.visuals.indicator_glow.value
	local anonteam_410_4 = anonteam_0_47.ui_tables.visuals.glow_thick.value
	local anonteam_410_5 = anonteam_0_47.ui_tables.visuals.glow_alpha.value
	local anonteam_410_6 = anonteam_0_31.calculate_value("inddrag", drag_system.active_element == "inddrag", -1.3, 0.7, 1)

	for iter_410_0 = 1, #arg_410_1 do
		local anonteam_410_7 = arg_410_2[iter_410_0]

		if not anonteam_410_7 then
			anonteam_410_2 = anonteam_410_2 - 1

			if anonteam_410_2 < 1 then
				anonteam_410_2 = #arg_410_2
			end

			anonteam_410_7 = arg_410_2[anonteam_410_2]
		end

		local anonteam_410_8 = string.sub(arg_410_1, iter_410_0, iter_410_0)
		local anonteam_410_9 = anonteam_0_27(arg_410_0, nil, anonteam_410_8)
		local anonteam_410_10 = arg_410_5 and arg_410_4 * arg_410_5 or anonteam_0_31.global_alpha * arg_410_4
		local anonteam_410_11 = anonteam_0_31.anim_values.nade_alpha and anonteam_0_31.anim_values.nade_alpha or 1
		local anonteam_410_12 = anonteam_410_10 * anonteam_410_6 * anonteam_410_11

		if anonteam_410_3 then
			local anonteam_410_13 = color(anonteam_410_7.r, anonteam_410_7.g, anonteam_410_7.b, anonteam_410_7.a * anonteam_410_5 / 100 * anonteam_410_12)

			anonteam_0_28(arg_410_3 + anonteam_410_1 + vector(0, anonteam_410_9.y / 2 + 1), arg_410_3 + anonteam_410_1 + anonteam_410_9 / 1.25, anonteam_410_13, anonteam_410_4)
		end

		local anonteam_410_14 = color(anonteam_410_7.r, anonteam_410_7.g, anonteam_410_7.b, anonteam_410_7.a * anonteam_410_12)

		anonteam_0_25(arg_410_0, arg_410_3 + anonteam_410_1, anonteam_410_14, nil, anonteam_410_8)

		anonteam_410_1 = anonteam_410_1 + vector(anonteam_410_9.x, 0)
	end
end

anonteam_0_31.logo_font = render.load_font("Verdana", vector(11, 11, 0.7), "abd")

drag_system.add_drag("inddrag", vector(-30, 20), vector(60, 15), anonteam_0_31.screen_size / 2, true, function()
	-- function 411
	return anonteam_0_47.ui_tables.visuals.indicator_switch.value and ui.get_alpha() > 0
end)

anonteam_0_31.anim_values.nade_alpha = 1

function anonteam_0_31.indicators_func()
	-- function 412
	if not anonteam_0_47.ui_tables.visuals.indicator_switch.value then
		return
	end

	local anonteam_412_0 = {}
	local anonteam_412_1 = vector(anonteam_0_31.screen_size.x / 2, anonteam_0_0.drag_memory.inddrag_y)
	local anonteam_412_2
	local anonteam_412_3
	local anonteam_412_4

	if anonteam_0_47.ui_tables.visuals.color_use_theme.value then
		local anonteam_412_5 = ui.get_style("Link Active")
		local anonteam_412_6 = {
			anonteam_412_5:to_hsv()
		}

		anonteam_412_2 = color(255):as_hsv(anonteam_412_6[1], 0.51, 1)
		anonteam_412_3 = color(255):as_hsv(anonteam_412_6[1], 0.43, 1)
		anonteam_412_4 = anonteam_412_3
	else
		anonteam_412_2 = anonteam_0_47.ui_tables.visuals.main_color.value
		anonteam_412_3 = anonteam_0_47.ui_tables.visuals.second_color.value
		anonteam_412_4 = anonteam_412_3
	end

	local anonteam_412_7 = globals.curtime * 6 % 23 - 2

	for iter_412_0 = 1, 9 do
		local anonteam_412_8 = iter_412_0 < anonteam_412_7 and anonteam_412_7 - iter_412_0 or iter_412_0 - anonteam_412_7

		if iter_412_0 < anonteam_412_7 then
			if anonteam_412_8 <= 5 then
				anonteam_412_0[iter_412_0] = anonteam_412_3
			elseif anonteam_412_8 <= 8 then
				anonteam_412_8 = (anonteam_412_8 - 5) / 3
				anonteam_412_0[iter_412_0] = anonteam_0_31.calculate_color(anonteam_412_4, anonteam_412_3, anonteam_412_8)
			else
				anonteam_412_8 = (anonteam_412_8 - 8) / 4
				anonteam_412_0[iter_412_0] = anonteam_0_31.calculate_color(anonteam_412_2, anonteam_412_4, anonteam_412_8)
			end
		else
			local anonteam_412_9 = anonteam_412_8 / 3

			anonteam_412_0[iter_412_0] = anonteam_0_31.calculate_color(anonteam_412_2, anonteam_412_3, anonteam_412_9)
		end
	end

	if ui.get_alpha() ~= 0 and anonteam_0_31.global_alpha == 0 then
		anonteam_0_31.render_gradient_indicator(anonteam_0_31.logo_font, "anonteam", anonteam_412_0, anonteam_412_1 + vector(0, 20), 1, ui.get_alpha())
	end

	if anonteam_0_31.global_alpha == 0 then
		return
	end

	local anonteam_412_10 = 0
	local anonteam_412_11 = 0
	local anonteam_412_12 = anonteam_0_23()

	if anonteam_412_12 then
		local anonteam_412_13 = anonteam_412_12.m_bIsScoped

		anonteam_0_31.calculate_value("scope_ind", anonteam_412_12 and anonteam_412_12:is_alive() and anonteam_412_13, 0.7)
	end

	local anonteam_412_14 = anonteam_0_31.easings.in_out_quart(anonteam_0_31.anim_values.scope_ind, 1, 0, 0.99)
	local anonteam_412_15

	if anonteam_412_12 then
		anonteam_412_15 = anonteam_412_12:get_player_weapon()
	end

	anonteam_0_31.calculate_value("nade_alpha", anonteam_412_15 and anonteam_412_15:get_weapon_info().weapon_type ~= 9, 0.5, 0.5, 1)

	if anonteam_412_14 < 0.99 then
		local anonteam_412_16 = anonteam_412_1 + vector(-50, 0)
		local anonteam_412_17 = anonteam_412_16 + vector(100 * (1 - anonteam_412_14), 80)

		render.push_clip_rect(anonteam_412_16, anonteam_412_17)
		anonteam_0_31.render_keybinds_for_indicator(anonteam_412_1 + vector(10 * anonteam_412_14, 29), 1 - anonteam_412_14)
		anonteam_0_31.render_gradient_indicator(anonteam_0_31.logo_font, "anonteam", anonteam_412_0, anonteam_412_1 + vector(10 * anonteam_412_14, 20), 1 - anonteam_412_14)
		render.pop_clip_rect()
	end

	if anonteam_412_14 ~= 0 then
		local anonteam_412_18 = anonteam_412_1 + vector(100, 0) + vector(-100 * anonteam_412_14, 0)
		local anonteam_412_19 = anonteam_412_1 + vector(100, 80)

		render.push_clip_rect(anonteam_412_18, anonteam_412_19)
		anonteam_0_31.render_keybinds_for_indicator(anonteam_412_1 + vector(40 * anonteam_412_14, 29), anonteam_412_14)
		anonteam_0_31.render_gradient_indicator(anonteam_0_31.logo_font, "anonteam", anonteam_412_0, anonteam_412_1 + vector(40 * anonteam_412_14, 20), anonteam_412_14)
		render.pop_clip_rect()
	end
end

events.render:set(anonteam_0_31.indicators_func)

anonteam_0_31.lc_tickbase = 999999
anonteam_0_31.lc_timer = 0

function anonteam_0_31.defensive_for_ind()
	-- function 413
	if not anonteam_0_47.ui_tables.visuals.indicator_switch.value then
		return
	end

	local anonteam_413_0 = anonteam_0_23()

	if not anonteam_413_0 or rage.exploit:get() ~= 1 then
		return
	end

	local anonteam_413_1 = anonteam_413_0.m_nTickBase

	if anonteam_413_1 - 3 > anonteam_0_31.lc_tickbase then
		anonteam_0_31.lc_timer = globals.tickcount + (cvar.sv_maxusrcmdprocessticks:int() - 1)
	end

	anonteam_0_31.lc_tickbase = anonteam_413_1
	anonteam_0_31.lc_timer = anonteam_0_31.lc_timer - globals.tickcount > cvar.sv_maxusrcmdprocessticks:int() + 1 and 0 or anonteam_0_31.lc_timer
end

drag_system.add_drag("dmgdrag", vector(1, 3), vector(10, 10), vector(anonteam_0_31.screen_size.x / 1.98, anonteam_0_31.screen_size.y / 2.05), false, function()
	-- function 414
	return anonteam_0_47.ui_tables.visuals.damage_switch.value and ui.get_alpha() > 0
end)

anonteam_0_31.dmg_font = render.load_font("Verdana", 10, "ad")

function anonteam_0_31.render_dmg_indicator()
	-- function 415
	local anonteam_415_0 = vector(anonteam_0_0.drag_memory.dmgdrag_x, anonteam_0_0.drag_memory.dmgdrag_y)
	local anonteam_415_1 = anonteam_0_23()
	local anonteam_415_2 = 101
	local anonteam_415_3 = 1
	local anonteam_415_4 = anonteam_0_31.calculate_value("dmg_drag", drag_system.active_element == "dmgdrag", -1.5, 0.7, 1)

	if anonteam_415_1 then
		local anonteam_415_5 = anonteam_415_1:get_player_weapon()

		if anonteam_415_5 then
			anonteam_415_3 = anonteam_415_5:get_weapon_info().weapon_type
			anonteam_415_2 = anonteam_0_35.dmg:get()
		end
	end

	local anonteam_415_6 = anonteam_415_3 ~= 0 and anonteam_415_3 ~= 9 and anonteam_415_3 ~= 7 and anonteam_415_3 ~= 11

	if not anonteam_0_31.anim_values.dmg_a then
		anonteam_0_31.anim_values.dmg_a = 0
		anonteam_0_31.anim_values.dmg = 0
	end

	local anonteam_415_7 = anonteam_0_31.anim_values.dmg_a
	local anonteam_415_8 = anonteam_0_31.animation_value * 2
	local anonteam_415_9 = false
	local anonteam_415_10 = ui.get_binds()

	for iter_415_0 = 1, #anonteam_415_10 do
		if anonteam_415_10[iter_415_0].name == "Min. Damage" then
			anonteam_415_9 = anonteam_415_10[iter_415_0].active

			break
		end
	end

	local anonteam_415_11 = anonteam_0_47.ui_tables.visuals.damage_is_active.value

	anonteam_0_31.anim_values.dmg_a = anonteam_415_6 and (anonteam_415_9 or not anonteam_415_11) and anonteam_0_19(anonteam_415_7 + anonteam_415_8, 0, 1) or anonteam_0_19(anonteam_415_7 - anonteam_415_8, 0, 1)

	local anonteam_415_12 = anonteam_0_19(anonteam_415_7 * anonteam_0_31.global_alpha + ui.get_alpha(), 0, 1) * anonteam_415_4

	anonteam_415_2 = anonteam_415_2 == 0 and "auto" or anonteam_415_2 > 100 and "hp+" .. anonteam_415_2 - 100 or anonteam_415_2

	if anonteam_415_6 and (anonteam_415_9 or not anonteam_415_11) then
		anonteam_0_31.anim_values.dmg = anonteam_415_2
	end

	local anonteam_415_13 = anonteam_0_47.ui_tables.visuals.damage_font.value == 1 and 2 or anonteam_0_31.dmg_font

	anonteam_0_25(anonteam_415_13, anonteam_415_0, color(255, 255 * anonteam_415_12), nil, string.upper(anonteam_0_31.anim_values.dmg))
end

anonteam_0_47.ui_tables.visuals.damage_switch:set_callback(function()
	-- function 416
	if anonteam_0_47.ui_tables.visuals.damage_switch.value then
		events.render:set(anonteam_0_31.render_dmg_indicator)
	else
		events.render:unset(anonteam_0_31.render_dmg_indicator)
	end
end, true)

anonteam_0_31.is_scoped = false

function anonteam_0_31.render_manual_arrows()
	-- function 417
	if anonteam_0_31.global_alpha == 0 then
		return
	end

	local anonteam_417_0 = anonteam_0_31.screen_size
	local anonteam_417_1 = anonteam_0_23()
	local anonteam_417_2 = false

	if anonteam_417_1 then
		anonteam_417_2 = anonteam_417_1.m_bIsScoped
	end

	local anonteam_417_3 = anonteam_0_31.calculate_value("manual_scope", not anonteam_417_2, 1, 0.6, 1) * anonteam_0_31.global_alpha
	local anonteam_417_4
	local anonteam_417_5

	if anonteam_0_47.ui_tables.visuals.color_use_theme.value then
		local anonteam_417_6 = ui.get_style("Link Active")

		anonteam_417_4 = anonteam_417_6:clone()
		anonteam_417_4.a = anonteam_417_4.a * anonteam_417_3 * anonteam_0_31.anim_values.nade_alpha
		anonteam_417_5 = anonteam_417_6:clone()
		anonteam_417_5.a = anonteam_417_5.a * anonteam_417_3 * anonteam_0_31.anim_values.nade_alpha
	else
		anonteam_417_4 = anonteam_0_47.ui_tables.visuals.second_color.value:clone()
		anonteam_417_4.a = anonteam_417_4.a * anonteam_417_3 * anonteam_0_31.anim_values.nade_alpha
		anonteam_417_5 = anonteam_0_47.ui_tables.visuals.main_color.value:clone()
		anonteam_417_5.a = anonteam_417_5.a * anonteam_417_3 * anonteam_0_31.anim_values.nade_alpha
	end

	local anonteam_417_7 = color(50, 130 * anonteam_417_3 * anonteam_0_31.anim_values.nade_alpha)
	local anonteam_417_8 = anonteam_0_12(anonteam_417_0.x / 2)
	local anonteam_417_9 = anonteam_0_12(anonteam_417_0.y / 2) + 1
	local anonteam_417_10 = 40
	local anonteam_417_11 = vector(anonteam_417_8 - anonteam_417_10 + 2, anonteam_417_9 - 9)
	local anonteam_417_12 = vector(anonteam_417_8 - anonteam_417_10 + 4, anonteam_417_9 + 9)

	select_color = anonteam_0_31.calculate_color(anonteam_417_5, anonteam_417_7, anonteam_0_31.calculate_value("desync_left", anonteam_0_54.desync_side, 100))

	render.rect(anonteam_417_11, anonteam_417_12, select_color)

	local anonteam_417_13 = vector(anonteam_417_8 - anonteam_417_10, anonteam_417_9 + 9)
	local anonteam_417_14 = vector(anonteam_417_8 - anonteam_417_10, anonteam_417_9 - 9)
	local anonteam_417_15 = vector(anonteam_417_8 - anonteam_417_10 - 15, anonteam_417_9)

	select_color = anonteam_0_31.calculate_color(anonteam_417_4, anonteam_417_7, anonteam_0_31.calculate_value("manual_left", anonteam_0_54.manual_state == 1, 1.7))

	anonteam_0_29(select_color, anonteam_417_13, anonteam_417_14, anonteam_417_15)

	local anonteam_417_16 = vector(anonteam_417_8 + anonteam_417_10 - 4, anonteam_417_9 - 9)
	local anonteam_417_17 = vector(anonteam_417_8 + anonteam_417_10 - 2, anonteam_417_9 + 9)

	select_color = anonteam_0_31.calculate_color(anonteam_417_5, anonteam_417_7, anonteam_0_31.calculate_value("desync_right", not anonteam_0_54.desync_side, 100))

	render.rect(anonteam_417_16, anonteam_417_17, select_color)

	local anonteam_417_18 = vector(anonteam_417_8 + anonteam_417_10, anonteam_417_9 + 9)
	local anonteam_417_19 = vector(anonteam_417_8 + anonteam_417_10, anonteam_417_9 - 9)
	local anonteam_417_20 = vector(anonteam_417_8 + anonteam_417_10 + 15, anonteam_417_9)

	select_color = anonteam_0_31.calculate_color(anonteam_417_4, anonteam_417_7, anonteam_0_31.calculate_value("manual_right", anonteam_0_54.manual_state == 2, 1.7))

	anonteam_0_29(select_color, anonteam_417_18, anonteam_417_19, anonteam_417_20)
end

anonteam_0_47.ui_tables.visuals.manual_switch:set_callback(function()
	-- function 418
	if anonteam_0_47.ui_tables.visuals.manual_switch.value then
		events.render:set(anonteam_0_31.render_manual_arrows)
	else
		events.render:unset(anonteam_0_31.render_manual_arrows)
	end
end, true)

anonteam_0_31.scope_value = 0

function anonteam_0_31.scope_lines()
	-- function 419
	local anonteam_419_0 = anonteam_0_23()
	local anonteam_419_1 = anonteam_419_0 and anonteam_419_0.m_bIsScoped

	anonteam_0_31.is_scoped = anonteam_419_1
	anonteam_0_31.scope_value = anonteam_0_31.calculate_value("scope", anonteam_419_0 and anonteam_419_0:is_alive() and anonteam_419_1)

	local anonteam_419_2 = anonteam_0_31.easings.in_out_quart(anonteam_0_31.scope_value)

	if anonteam_419_2 == 0 then
		return
	end

	local anonteam_419_3 = anonteam_0_31.screen_size
	local anonteam_419_4 = anonteam_0_47.ui_tables.visuals.scope_size.value
	local anonteam_419_5 = anonteam_0_47.ui_tables.visuals.scope_gap.value - 1
	local anonteam_419_6
	local anonteam_419_7
	local anonteam_419_8 = anonteam_0_47.ui_tables.visuals.scope_color.value

	if anonteam_419_8 == "Gradient" then
		local anonteam_419_9 = anonteam_0_47.ui_tables.visuals.scope_color.ref:get(anonteam_419_8)

		anonteam_419_6 = anonteam_419_9[1]
		anonteam_419_7 = anonteam_419_9[2]
	else
		anonteam_419_6 = anonteam_0_47.ui_tables.visuals.scope_color.ref:get(anonteam_419_8)[1]
		anonteam_419_7 = anonteam_419_6:clone()
		anonteam_419_7.a = 0
	end

	local anonteam_419_10 = color(anonteam_419_6.r, anonteam_419_6.g, anonteam_419_6.b, anonteam_419_6.a * anonteam_0_31.global_alpha * anonteam_419_2)
	local anonteam_419_11 = color(anonteam_419_7.r, anonteam_419_7.g, anonteam_419_7.b, anonteam_419_7.a * anonteam_0_31.global_alpha * anonteam_419_2)
	local anonteam_419_12 = anonteam_419_10
	local anonteam_419_13 = anonteam_419_11
	local anonteam_419_14 = anonteam_419_4 - anonteam_419_4 * anonteam_419_2
	local anonteam_419_15 = anonteam_0_47.ui_tables.visuals.scope_type

	if anonteam_419_15.value_by_name.Reversed then
		local anonteam_419_16 = anonteam_419_10

		anonteam_419_10 = anonteam_419_11
		anonteam_419_12 = anonteam_419_11
		anonteam_419_11 = anonteam_419_16
		anonteam_419_13 = anonteam_419_16
	end

	local anonteam_419_17 = vector(anonteam_419_3.x / 2 + anonteam_419_5 + 1 + anonteam_419_14, anonteam_419_3.y / 2)
	local anonteam_419_18 = vector(anonteam_419_3.x / 2 + anonteam_419_5 + anonteam_419_4, anonteam_419_3.y / 2 + 1)

	anonteam_0_26(anonteam_419_17, anonteam_419_18, anonteam_419_10, anonteam_419_11, anonteam_419_12, anonteam_419_13)

	local anonteam_419_19 = vector(anonteam_419_3.x / 2 - anonteam_419_5 - anonteam_419_14, anonteam_419_3.y / 2)
	local anonteam_419_20 = vector(anonteam_419_3.x / 2 - anonteam_419_5 - anonteam_419_4, anonteam_419_3.y / 2 + 1)

	anonteam_0_26(anonteam_419_19, anonteam_419_20, anonteam_419_10, anonteam_419_11, anonteam_419_12, anonteam_419_13)

	if not anonteam_419_15.value_by_name["T Style"] then
		local anonteam_419_21 = vector(anonteam_419_3.x / 2, anonteam_419_3.y / 2 - anonteam_419_5 - anonteam_419_14)
		local anonteam_419_22 = vector(anonteam_419_3.x / 2 + 1, anonteam_419_3.y / 2 - anonteam_419_5 - anonteam_419_4)

		anonteam_0_26(anonteam_419_21, anonteam_419_22, anonteam_419_10, anonteam_419_12, anonteam_419_11, anonteam_419_13)
	end

	local anonteam_419_23 = vector(anonteam_419_3.x / 2, anonteam_419_3.y / 2 + anonteam_419_5 + 1 + anonteam_419_14)
	local anonteam_419_24 = vector(anonteam_419_3.x / 2 + 1, anonteam_419_3.y / 2 + anonteam_419_5 + anonteam_419_4)

	anonteam_0_26(anonteam_419_23, anonteam_419_24, anonteam_419_10, anonteam_419_12, anonteam_419_11, anonteam_419_13)
end

anonteam_0_47.ui_tables.visuals.scope_switch:set_callback(function()
	-- function 420
	ui.find("Visuals", "World", "Main", "Override Zoom", "Scope Overlay"):override(anonteam_0_47.ui_tables.visuals.scope_switch.value and "Remove All" or nil, true)

	if anonteam_0_47.ui_tables.visuals.scope_switch.value then
		events.render:set(anonteam_0_31.scope_lines)
	else
		events.render:unset(anonteam_0_31.scope_lines)
	end

	anonteam_0_31.anim_values.scope = 0
	anonteam_0_31.is_scoped = false
end, true)
events.shutdown:set(function()
	-- function 421
	if anonteam_0_47.ui_tables.visuals.scope_switch.value then
		ui.find("Visuals", "World", "Main", "Override Zoom", "Scope Overlay"):override()
	end
end)

anonteam_0_31.orig_func = nil
anonteam_0_31.backward = false
anonteam_0_31.static = false
anonteam_0_31.lean = false
anonteam_0_31.last_update = 0
anonteam_0_31.gym_value = 0.65
anonteam_0_31.reverse = true
anonteam_0_31.height = 64
anonteam_0_31.height_animation = 0
anonteam_0_31.animation_value = 0

function anonteam_0_31.breaker_function(arg_422_0)
	-- function 422
	local anonteam_422_0 = anonteam_0_41.ref
	local anonteam_422_1 = anonteam_0_41.velocity
	local anonteam_422_2 = anonteam_0_41.on_ground

	if arg_422_0 ~= anonteam_422_0 then
		return
	end

	local anonteam_422_3 = anonteam_0_16("CAnimationLayer_t**", anonteam_0_16("uintptr_t", arg_422_0[0]) + 10640)[0]

	if anonteam_0_31.backward then
		anonteam_422_0.m_flPoseParameter[0] = -180
	end

	if anonteam_0_31.moon then
		anonteam_422_0.m_flPoseParameter[7] = 180
	end

	if anonteam_0_31.static then
		anonteam_422_0.m_flPoseParameter[6] = 1
	end

	if anonteam_0_31.air_walk and not anonteam_422_2 then
		anonteam_422_3[6].m_flWeight = 1
	end

	if anonteam_0_31.lean and anonteam_0_47.ui_tables.visuals.breaker_lean_value.value ~= -1 then
		anonteam_422_3[12].m_flWeight = anonteam_422_1 > 20 and anonteam_0_47.ui_tables.visuals.breaker_lean_value.value / 10 or 0
	end

	if anonteam_0_47.ui_tables.visuals.anim_switch.value and anonteam_0_47.ui_tables.visuals.anim_gym.value then
		if not anonteam_0_31.lean then
			anonteam_422_3[12].m_flWeight = 0
		end

		if entity.get_game_rules().m_fRoundStartTime - 0.7 > globals.curtime then
			anonteam_422_3[11].m_flCycle = anonteam_0_31.gym_value
			anonteam_422_3[11].m_nSequence = 232
			anonteam_422_3[12].m_flWeight = 0
		end

		if anonteam_0_31.last_update ~= globals.tickcount then
			if anonteam_0_31.reverse then
				anonteam_0_31.gym_value = anonteam_0_19(anonteam_0_31.gym_value + 0.005, 0.648, 0.75)
			elseif anonteam_0_31.reverse ~= nil then
				anonteam_0_31.gym_value = anonteam_0_19(anonteam_0_31.gym_value - 0.005, 0.648, 0.75)
			else
				anonteam_0_31.gym_value = anonteam_0_19(anonteam_0_31.gym_value + 0.01, 0, 0.648)
			end

			if anonteam_0_31.gym_value >= 0.75 then
				anonteam_0_31.reverse = false
			end

			if anonteam_0_31.gym_value <= 0.649 and anonteam_0_31.gym_value > 0.64 then
				anonteam_0_31.reverse = true
			end

			if anonteam_0_31.gym_value < 0.64 then
				anonteam_0_31.reverse = nil
			end
		end

		anonteam_0_31.last_update = globals.tickcount
	end
end

events.round_start:set(function()
	-- function 423
	anonteam_0_31.reverse = nil
	anonteam_0_31.gym_value = 0
end)
anonteam_0_47.ui_tables.visuals.breaker_switch:set_callback(function()
	-- function 424
	if anonteam_0_47.ui_tables.visuals.breaker_switch.value then
		events.post_update_clientside_animation:set(anonteam_0_31.breaker_function)
	else
		events.post_update_clientside_animation:unset(anonteam_0_31.breaker_function)
	end
end, true)
anonteam_0_47.ui_tables.visuals.breaker_list:set_callback(function()
	-- function 425
	local anonteam_425_0 = anonteam_0_47.ui_tables.visuals.breaker_list.value_by_name
	local anonteam_425_1

	if anonteam_425_0[1] then
		anonteam_0_31.backward = true
		anonteam_425_1 = "Sliding"
	else
		anonteam_0_31.backward = false
	end

	if anonteam_425_0[2] then
		anonteam_425_1 = "Walking"
	end

	anonteam_0_35.legs_movement:override(anonteam_425_1, true)

	anonteam_0_31.moon = anonteam_425_0[2]
	anonteam_0_31.air_walk = anonteam_425_0[3]
	anonteam_0_31.static = anonteam_425_0[4]
	anonteam_0_31.lean = anonteam_425_0[5]
end, true)
events.createmove:set(function(arg_426_0)
	-- function 426
	if anonteam_0_31.lean then
		arg_426_0.animate_move_lean = true
	end
end)
events.shutdown:set(function()
	-- function 427
	anonteam_0_35.legs_movement:override()
end)

anonteam_0_31.transperancy_weapon = nil
anonteam_0_31.need_scope_transperancy = false

function anonteam_0_31.transperancy_func(arg_428_0)
	-- function 428
	local anonteam_428_0 = anonteam_0_37.chams_material.value == "Material"
	local anonteam_428_1 = anonteam_0_41.ref

	if not anonteam_428_1 then
		return
	end

	local anonteam_428_2 = anonteam_428_1:get_player_weapon()

	if not anonteam_428_2 then
		return
	end

	local anonteam_428_3 = anonteam_428_2:get_index()
	local anonteam_428_4 = anonteam_428_2.m_flNextPrimaryAttack - globals.curtime

	if anonteam_428_2 and anonteam_428_4 <= -0.5 then
		anonteam_0_31.need_scope_transperancy = false
	end

	if anonteam_428_1.m_bIsScoped or anonteam_0_31.need_scope_transperancy then
		if anonteam_0_47.ui_tables.visuals.transparency_keep.value and anonteam_428_2 and anonteam_0_31.transperancy_weapon == anonteam_428_3 then
			if anonteam_428_1.m_bIsScoped then
				anonteam_0_31.need_scope_transperancy = true
			end
		else
			anonteam_0_31.need_scope_transperancy = false
		end

		anonteam_0_31.transperancy_weapon = anonteam_428_3

		if anonteam_428_0 then
			local anonteam_428_5 = anonteam_0_37.chams_color.value

			anonteam_0_35.chams_color:override(color(anonteam_428_5.r, anonteam_428_5.g, anonteam_428_5.b, math.floor(anonteam_0_47.ui_tables.visuals.transparency_scope.value * 2.55)))
		end

		return anonteam_0_12(255 * anonteam_0_47.ui_tables.visuals.transparency_scope.value / 100)
	elseif anonteam_428_0 then
		anonteam_0_35.chams_color:override()
	end

	if not common.is_in_thirdperson() then
		return
	end

	if anonteam_428_2 and anonteam_428_2:get_weapon_info().weapon_type == 9 then
		if anonteam_428_0 then
			local anonteam_428_6 = anonteam_0_37.chams_color.value

			anonteam_0_35.chams_color:override(color(anonteam_428_6.r, anonteam_428_6.g, anonteam_428_6.b, anonteam_0_12(anonteam_0_47.ui_tables.visuals.transparency_nade.value * 2.55)))
		end

		return anonteam_0_12(255 * anonteam_0_47.ui_tables.visuals.transparency_nade.value / 100)
	end

	if anonteam_428_0 then
		local anonteam_428_7 = anonteam_0_37.chams_color.value

		anonteam_0_35.chams_color:override(color(anonteam_428_7.r, anonteam_428_7.g, anonteam_428_7.b, anonteam_0_12(anonteam_0_47.ui_tables.visuals.transparency_alpha.value * 2.55) + 1))
	end

	return anonteam_0_12(255 * anonteam_0_47.ui_tables.visuals.transparency_alpha.value / 100)
end

anonteam_0_47.ui_tables.visuals.transparency_switch:set_callback(function()
	-- function 429
	if anonteam_0_47.ui_tables.visuals.transparency_switch.value then
		events.localplayer_transparency:set(anonteam_0_31.transperancy_func)
	else
		events.localplayer_transparency:unset(anonteam_0_31.transperancy_func)
	end

	anonteam_0_37.chams_color:override()
end, true)
events.shutdown:set(function()
	-- function 430
	anonteam_0_37.chams_color:override()
end)
ffi.cdef("\n                typedef void VOID;\n                typedef int INT;\n                typedef long LONG;\n                typedef float FLOAT;\n                typedef char CHAR;\n                typedef bool BOOL;\n            \n                typedef VOID* PVOID;\n                typedef PVOID HANDLE;\n                typedef const PVOID* LPCVOID;\n                typedef unsigned int SIZE_T;\n                typedef INT* FARPROC;\n                typedef unsigned long DWORD;\n                typedef DWORD ULONG_PTR;\n                typedef const CHAR* LPCSTR;\n                typedef unsigned char BYTE;\n            \n                typedef BYTE uint8;\n                typedef uint16_t uint16;\n                typedef uint32_t uint32;\n                typedef uint64_t uint64;\n                typedef signed char int8;\n                typedef int16_t int16;\n                typedef int32_t int32;\n                typedef int64_t int64;\n\n                typedef struct\n                {\n                    uint32_t xuid_low;\n                    uint32_t xuid_high;\n                    int32_t sequence_bytes;\n                    uint32_t section_number;\n                    uint32_t uncompressed_sample_offset;\n                \n                } VoiceDataCustom_t;\n\n                typedef struct\n                {\n                    uint32_t xuid_low;\n                    uint32_t xuid_high;\n                \n                } VoiceDataCustomreal_t;\n            \n                typedef struct \n                {\n                  char pad_0000[8]; //0x0000\n                    int32_t client; //0x0008\n                    int32_t audible_mask; //0x000C\n                    uint32_t xuid_low;\n                    uint32_t xuid_high;\n                    void* voide_data_; //0x0018\n                    int32_t proximity; //0x001C\n                    //int32_t caster; //0x0020\n                    int32_t format; //0x0020\n                    int32_t sequence_bytes; //0x0024\n                    uint32_t section_number; //0x0028\n                    uint32_t uncompressed_sample_offset; //0x002C\n                \n                } CSVCMsg_VoiceData_Legacy_t;\n            \n                typedef struct \n                {\n                    uint32_t INetMessage_Vtable; //0x0000\n                    char pad_0004[4]; //0x0004\n                    uint32_t CCLCMsg_VoiceData_Vtable; //0x0008\n                    char pad_000C[8]; //0x000C\n                    void* data; //0x0014\n                    uint32_t xuid_low;\n                    uint32_t xuid_high;\n                    int32_t format; //0x0020\n                    int32_t sequence_bytes; //0x0024\n                    uint32_t section_number; //0x0028\n                    uint32_t uncompressed_sample_offset; //0x002C\n                    int32_t cached_size; //0x0030\n                    uint32_t flags; //0x0034\n                    uint8_t no_stack_overflow[0xFF];\n                \n                } CCLCMsg_VoiceData_Legacy_t;\n\n                typedef struct\n                {   \n                    int16_t tickcount;\n                    char name[3];\n                    int16_t tickcount1;\n                } ext_t;\n\n                typedef struct\n                {\n                    //char pad_0000[8];\n                    int32_t pandora_id;\n                    int entity_id;\n                    vector_t pos;\n\n                } pandora_data_t;\n\n                typedef struct\n                {\n                    int64_t value;\n                } convert_t;\n\n                typedef struct {\n      \n                    char pad_0000[156];\n                    uint32_t net_channel;\n                    uint32_t challenge_count;\n                    double reconnect_time;\n                    int32_t retry_count;\n                    char pad_00A8[88];\n                    int32_t signon_state_count;\n                    char pad_0104[8];\n                    float next_cmd_time;\n                    int32_t server_count;\n                    uint32_t current_sequence;\n                    char pad_0118[8];\n                    char pad_0120[0x4C];\n                    int32_t delta_tick;\n                    bool is_paused;\n                    char pad_0171[3];\n                    int32_t view_entity;\n                    int32_t player_slot;\n                    char pad_017C[4];\n                    char level_name[260];\n                    char level_name_short[40];\n                    char pad_02AC[92];\n                    int32_t max_clients;\n                    char pad_030C[4083];\n                    uint32_t string_table_container;\n                    char pad_1303[14737];\n                    float last_server_tick_time;\n                    bool is_in_simulation;\n                    char pad_4C99[3];\n                    uint32_t old_tick_count;\n                    float tick_remainder;\n                    float frame_time;\n                    int32_t last_outgoing_command;\n                    int32_t choked_commands;\n                    int32_t last_command_ack;\n                    int32_t command_ack;\n                    int32_t sound_sequence;\n                    char pad_4CBC[80];\n                    vector_t view_angles;\n                   \n                } ClientState_t;\n            ")

anonteam_0_31.engine = utils.create_interface("engine.dll", "VEngineClient014")
anonteam_0_31.cclientstate = ffi.cast("ClientState_t***", ffi.cast("uintptr_t**", anonteam_0_31.engine)[0][12] + 16)[0][0]
anonteam_0_31.hclientstate = ffi.cast("DWORD**", ffi.cast("DWORD", anonteam_0_31.cclientstate) + 8)
anonteam_0_31.send_net_msg = utils.get_vfunc(40, "bool(__thiscall*)(void*, void*, bool, bool)")
anonteam_0_31.construct_message = ffi.cast("uint32_t(__fastcall*)(void*, void*)", ffi.cast("DWORD", utils.opcode_scan("engine.dll", "56 57 8B F9 8D 4F 08 C7 07 ? ? ? ? E8 ? ? ? ? C7")))

function anonteam_0_31.voice_message(arg_431_0)
	-- function 431
	if anonteam_0_31.cclientstate.net_channel == 0 then
		return
	end

	local anonteam_431_0 = ffi.new("CCLCMsg_VoiceData_Legacy_t")

	ffi.fill(ffi.cast("void*", anonteam_431_0), ffi.sizeof(anonteam_431_0), 0)
	anonteam_0_31.construct_message(anonteam_431_0, nil)

	anonteam_431_0.xuid_low = arg_431_0.xuid_low
	anonteam_431_0.xuid_high = arg_431_0.xuid_high
	anonteam_431_0.sequence_bytes = arg_431_0.sequence_bytes
	anonteam_431_0.section_number = arg_431_0.section_number
	anonteam_431_0.uncompressed_sample_offset = arg_431_0.uncompressed_sample_offset
	anonteam_431_0.format = 0
	anonteam_431_0.flags = 63

	anonteam_0_31.send_net_msg(ffi.cast("DWORD**", anonteam_0_31.cclientstate.net_channel), ffi.cast("void*", anonteam_431_0), false, true)
end

anonteam_0_31.counter = 0
anonteam_0_31.tick_delay = 0
anonteam_0_31.packet_counter = 1
anonteam_0_31.spoof_tickcount = 0

function anonteam_0_31.calculate_fatality_value(arg_432_0)
	-- function 432
	local anonteam_432_0 = 0
	local anonteam_432_1 = 1
	local anonteam_432_2 = 8388608
	local anonteam_432_3 = 1065353216
	local anonteam_432_4 = 0
	local anonteam_432_5 = arg_432_0

	if arg_432_0 < 0 then
		anonteam_432_3 = 1082130432
		arg_432_0 = -arg_432_0
	end

	if arg_432_0 >= 1 then
		local anonteam_432_6 = -1

		while anonteam_432_1 < arg_432_0 do
			anonteam_432_1 = anonteam_432_1 * 2
			anonteam_432_6 = anonteam_432_6 + 1
		end

		anonteam_432_4 = anonteam_432_3 + anonteam_432_2 * anonteam_432_6 + (arg_432_0 - 2^anonteam_432_6) * anonteam_432_2 / 2^anonteam_432_6
	end

	if arg_432_0 < 1 and arg_432_0 > 0 then
		local anonteam_432_7 = 1
		local anonteam_432_8 = 0

		while arg_432_0 < anonteam_432_7 do
			anonteam_432_7 = anonteam_432_7 / 2
			anonteam_432_8 = anonteam_432_8 + 1
		end

		anonteam_432_4 = anonteam_432_3 - anonteam_432_2 * anonteam_432_8 + (arg_432_0 - 0.5^anonteam_432_8) * anonteam_432_2 * 2^anonteam_432_8
	end

	if anonteam_432_4 - anonteam_0_12(anonteam_432_4) > 0 and anonteam_432_4 - anonteam_0_12(anonteam_432_4) <= 0.5 then
		anonteam_432_4 = anonteam_0_12(anonteam_432_4)
	end

	if anonteam_432_4 - anonteam_0_12(anonteam_432_4) > 0.5 then
		anonteam_432_4 = anonteam_0_12(anonteam_432_4) + 1
	end

	if anonteam_432_5 > 0 then
		-- block empty
	elseif anonteam_432_5 < 0 then
		anonteam_432_4 = anonteam_432_4 - 2 * anonteam_432_3
	else
		anonteam_432_4 = 0
	end

	return anonteam_432_4
end

anonteam_0_31.cheats_data = {
	Gamesense = {
		uncompressed_sample_offset = 2792467861,
		section_number = 3436095644,
		sequence_bytes = 100022743,
		xuid_high = 145270966,
		xuid_low = 145270966
	},
	Pandora = {
		uncompressed_sample_offset = 3279943680,
		section_number = 1150525622,
		sequence_bytes = 1149312298,
		xuid_high = 86401,
		xuid_low = 683442170,
		tickcount = 86404
	},
	Fatality = {
		uncompressed_sample_offset = 3279943680,
		section_number = 3292561686,
		sequence_bytes = -1003061738,
		xuid_high = 64165,
		xuid_low = 683835386,
		tickcount = 64168
	},
	Primordial = {
		uncompressed_sample_offset = 1992818854,
		section_number = 145227821,
		sequence_bytes = -1148877286,
		xuid_high = 17825793,
		xuid_low = 875522969
	},
	Disabled = {
		uncompressed_sample_offset = 1603282686,
		section_number = 1904262895,
		sequence_bytes = -2086932461,
		xuid_high = 0,
		xuid_low = 3355443602
	},
	Onetap = {
		uncompressed_sample_offset = 16843009,
		section_number = 16843009,
		sequence_bytes = -922432482,
		xuid_high = 348244372,
		xuid_low = 1384339450
	},
	Airflow = {
		uncompressed_sample_offset = 100,
		section_number = 100,
		sequence_bytes = 2818113,
		xuid_high = 4272171521,
		xuid_low = 3735943921
	},
	Nixware = {
		uncompressed_sample_offset = 65121,
		section_number = 228,
		sequence_bytes = 0,
		xuid_high = 7630437,
		xuid_low = 1819636069
	},
	Plaguecheat = {
		uncompressed_sample_offset = 204521781,
		section_number = 16,
		sequence_bytes = -16909332,
		xuid_high = 64250896,
		xuid_low = 907415600,
		tickcount = 3459028
	},
	Rifk7 = {
		uncompressed_sample_offset = 1189786112,
		section_number = 1124925440,
		sequence_bytes = -1000783872,
		xuid_high = 3290578944,
		xuid_low = 636,
		tickcount = 20532
	}
}
anonteam_0_31.packets = {
	Pandora = {
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965803,
			sequence_bytes = 88,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104940
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965778,
			sequence_bytes = -62,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 104944
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965812,
			sequence_bytes = 81,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104944
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965810,
			sequence_bytes = 83,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104944
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965781,
			sequence_bytes = -63,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 104948
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965821,
			sequence_bytes = 74,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104948
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965819,
			sequence_bytes = 76,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104948
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965788,
			sequence_bytes = -66,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 104952
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965828,
			sequence_bytes = 68,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104952
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965827,
			sequence_bytes = 69,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104952
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965793,
			sequence_bytes = -68,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 104956
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965830,
			sequence_bytes = 67,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104956
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965830,
			sequence_bytes = 67,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104956
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965828,
			sequence_bytes = 69,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104960
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965828,
			sequence_bytes = 69,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104960
		},
		{
			uncompressed_sample_offset = 4294967056,
			section_number = 4294965655,
			sequence_bytes = 477,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 104960
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965801,
			sequence_bytes = -71,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 104964
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965823,
			sequence_bytes = 73,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104964
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965824,
			sequence_bytes = 72,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104964
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965803,
			sequence_bytes = -72,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 104968
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965816,
			sequence_bytes = 78,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104968
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965818,
			sequence_bytes = 77,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104968
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965808,
			sequence_bytes = 85,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104972
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965810,
			sequence_bytes = 83,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104972
		},
		{
			uncompressed_sample_offset = 4294967077,
			section_number = 4294965685,
			sequence_bytes = 429,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 104972
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965799,
			sequence_bytes = 92,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104976
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965801,
			sequence_bytes = 90,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104976
		},
		{
			uncompressed_sample_offset = 4294967078,
			section_number = 4294965695,
			sequence_bytes = 413,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 104976
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965790,
			sequence_bytes = 99,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104980
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965792,
			sequence_bytes = 98,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104980
		},
		{
			uncompressed_sample_offset = 4294967082,
			section_number = 4294965702,
			sequence_bytes = 404,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 104980
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965787,
			sequence_bytes = 101,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104985
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965787,
			sequence_bytes = 101,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104985
		},
		{
			uncompressed_sample_offset = 4294967087,
			section_number = 4294965710,
			sequence_bytes = 394,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 104985
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965811,
			sequence_bytes = -75,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 104988
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965788,
			sequence_bytes = 100,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104988
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965788,
			sequence_bytes = 101,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104988
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965791,
			sequence_bytes = 98,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104994
		},
		{
			uncompressed_sample_offset = 4294967062,
			section_number = 4294966189,
			sequence_bytes = 1199,
			xuid_high = 18,
			xuid_low = 420187,
			tickcount = 104994
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965792,
			sequence_bytes = 97,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104994
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965798,
			sequence_bytes = 93,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104996
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965809,
			sequence_bytes = -74,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 104998
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965800,
			sequence_bytes = 91,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 104998
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965801,
			sequence_bytes = 90,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 104998
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965802,
			sequence_bytes = -71,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105003
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965818,
			sequence_bytes = 77,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105003
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965815,
			sequence_bytes = 80,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105003
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965823,
			sequence_bytes = 73,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105007
		},
		{
			uncompressed_sample_offset = 4294967119,
			section_number = 4294965748,
			sequence_bytes = 331,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105007
		},
		{
			uncompressed_sample_offset = 4294967107,
			section_number = 4294966138,
			sequence_bytes = 1192,
			xuid_high = 18,
			xuid_low = 420187,
			tickcount = 105007
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965830,
			sequence_bytes = 67,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105008
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965825,
			sequence_bytes = 71,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105008
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965753,
			sequence_bytes = 323,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105008
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965817,
			sequence_bytes = 78,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105012
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965830,
			sequence_bytes = 67,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105012
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965759,
			sequence_bytes = 311,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105012
		},
		{
			uncompressed_sample_offset = 112,
			section_number = 253,
			sequence_bytes = 157,
			xuid_high = 5,
			xuid_low = 420187,
			tickcount = 105016
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965814,
			sequence_bytes = 80,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105016
		},
		{
			uncompressed_sample_offset = 4294967128,
			section_number = 4294966111,
			sequence_bytes = 1189,
			xuid_high = 18,
			xuid_low = 420187,
			tickcount = 105016
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965804,
			sequence_bytes = 88,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105019
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965806,
			sequence_bytes = 86,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105019
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965772,
			sequence_bytes = 286,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105019
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965800,
			sequence_bytes = -70,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105023
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965795,
			sequence_bytes = 95,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105023
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965798,
			sequence_bytes = 92,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105023
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965796,
			sequence_bytes = 94,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105023
		},
		{
			uncompressed_sample_offset = 4294967070,
			section_number = 4294965780,
			sequence_bytes = 621,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105023
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965795,
			sequence_bytes = 94,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105023
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965791,
			sequence_bytes = -67,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105026
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965789,
			sequence_bytes = 99,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105026
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965791,
			sequence_bytes = 98,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105026
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965790,
			sequence_bytes = 99,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105027
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965790,
			sequence_bytes = 99,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105027
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965789,
			sequence_bytes = 99,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105027
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965785,
			sequence_bytes = -64,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105031
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965789,
			sequence_bytes = 100,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105031
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965781,
			sequence_bytes = 246,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105031
		},
		{
			uncompressed_sample_offset = 4294967054,
			section_number = 4294965747,
			sequence_bytes = 608,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105033
		},
		{
			uncompressed_sample_offset = 4294967104,
			section_number = 4294966756,
			sequence_bytes = 1170,
			xuid_high = 25,
			xuid_low = 420187,
			tickcount = 105033
		},
		{
			uncompressed_sample_offset = 4294967104,
			section_number = 4294966756,
			sequence_bytes = 1170,
			xuid_high = 25,
			xuid_low = 420187,
			tickcount = 105033
		},
		{
			uncompressed_sample_offset = 4294967104,
			section_number = 4294966756,
			sequence_bytes = 1170,
			xuid_high = 25,
			xuid_low = 420187,
			tickcount = 105035
		},
		{
			uncompressed_sample_offset = 4294967104,
			section_number = 4294966756,
			sequence_bytes = 1170,
			xuid_high = 25,
			xuid_low = 420187,
			tickcount = 105035
		},
		{
			uncompressed_sample_offset = 4294967040,
			section_number = 4294965718,
			sequence_bytes = 591,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105039
		},
		{
			uncompressed_sample_offset = 4294967104,
			section_number = 4294966756,
			sequence_bytes = 1170,
			xuid_high = 25,
			xuid_low = 420187,
			tickcount = 105039
		},
		{
			uncompressed_sample_offset = 4294967104,
			section_number = 4294966756,
			sequence_bytes = 1170,
			xuid_high = 25,
			xuid_low = 420187,
			tickcount = 105039
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965775,
			sequence_bytes = 213,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105043
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965775,
			sequence_bytes = 213,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105043
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965789,
			sequence_bytes = 99,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105048
		},
		{
			uncompressed_sample_offset = 4294967064,
			section_number = 4294965690,
			sequence_bytes = 570,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105048
		},
		{
			uncompressed_sample_offset = 95,
			section_number = 4294966602,
			sequence_bytes = 301,
			xuid_high = 22,
			xuid_low = 420187,
			tickcount = 105048
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965781,
			sequence_bytes = -63,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105052
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965792,
			sequence_bytes = 94,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105052
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965791,
			sequence_bytes = 97,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105052
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965792,
			sequence_bytes = 91,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105056
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965779,
			sequence_bytes = -62,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105057
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965791,
			sequence_bytes = 87,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105057
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965792,
			sequence_bytes = 90,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105057
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965778,
			sequence_bytes = -62,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105060
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965791,
			sequence_bytes = 78,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105060
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965791,
			sequence_bytes = 83,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105060
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965771,
			sequence_bytes = -59,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105064
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965790,
			sequence_bytes = 67,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105064
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965791,
			sequence_bytes = 74,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105064
		},
		{
			uncompressed_sample_offset = 4294967128,
			section_number = 4294965758,
			sequence_bytes = -55,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105068
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965790,
			sequence_bytes = 60,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105068
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965768,
			sequence_bytes = 122,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105068
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965740,
			sequence_bytes = -57,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105075
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965783,
			sequence_bytes = 29,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105075
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965785,
			sequence_bytes = 34,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105075
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965731,
			sequence_bytes = -60,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105080
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965778,
			sequence_bytes = 16,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105080
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965781,
			sequence_bytes = 22,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105080
		},
		{
			uncompressed_sample_offset = 4294967122,
			section_number = 4294965775,
			sequence_bytes = 9,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105085
		},
		{
			uncompressed_sample_offset = 4294967085,
			section_number = 4294965675,
			sequence_bytes = 433,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105085
		},
		{
			uncompressed_sample_offset = 4294967181,
			section_number = 4294967092,
			sequence_bytes = 1398,
			xuid_high = 22,
			xuid_low = 420187,
			tickcount = 105085
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965709,
			sequence_bytes = -70,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105087
		},
		{
			uncompressed_sample_offset = 4294967139,
			section_number = 4294965764,
			sequence_bytes = -7,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105087
		},
		{
			uncompressed_sample_offset = 4294967128,
			section_number = 4294965770,
			sequence_bytes = 0,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105087
		},
		{
			uncompressed_sample_offset = 4294967148,
			section_number = 4294965758,
			sequence_bytes = -14,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105092
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965779,
			sequence_bytes = 46,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105092
		},
		{
			uncompressed_sample_offset = 4294967167,
			section_number = 4294967093,
			sequence_bytes = 1419,
			xuid_high = 22,
			xuid_low = 420187,
			tickcount = 105092
		},
		{
			uncompressed_sample_offset = 4294967168,
			section_number = 4294965732,
			sequence_bytes = -24,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105100
		},
		{
			uncompressed_sample_offset = 4294967130,
			section_number = 4294965769,
			sequence_bytes = 13,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105100
		},
		{
			uncompressed_sample_offset = 69,
			section_number = 238,
			sequence_bytes = 482,
			xuid_high = 14,
			xuid_low = 420187,
			tickcount = 105100
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965665,
			sequence_bytes = -98,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105104
		},
		{
			uncompressed_sample_offset = 4294967176,
			section_number = 4294965708,
			sequence_bytes = -24,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105104
		},
		{
			uncompressed_sample_offset = 4294967175,
			section_number = 4294965714,
			sequence_bytes = -25,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105104
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965653,
			sequence_bytes = -109,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105108
		},
		{
			uncompressed_sample_offset = 4294967177,
			section_number = 4294965692,
			sequence_bytes = -29,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105108
		},
		{
			uncompressed_sample_offset = 4294967177,
			section_number = 4294965699,
			sequence_bytes = -26,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105108
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965646,
			sequence_bytes = -116,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105112
		},
		{
			uncompressed_sample_offset = 4294967175,
			section_number = 4294965679,
			sequence_bytes = -39,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105112
		},
		{
			uncompressed_sample_offset = 4294967177,
			section_number = 4294965684,
			sequence_bytes = -34,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105112
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965635,
			sequence_bytes = -128,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105116
		},
		{
			uncompressed_sample_offset = 4294967169,
			section_number = 4294965663,
			sequence_bytes = -54,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105116
		},
		{
			uncompressed_sample_offset = 4294967173,
			section_number = 4294965673,
			sequence_bytes = -44,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105116
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965630,
			sequence_bytes = -136,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105119
		},
		{
			uncompressed_sample_offset = 4294967167,
			section_number = 4294965660,
			sequence_bytes = -57,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105119
		},
		{
			uncompressed_sample_offset = 4294967175,
			section_number = 4294965720,
			sequence_bytes = -44,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105119
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965622,
			sequence_bytes = -147,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105123
		},
		{
			uncompressed_sample_offset = 4294967148,
			section_number = 4294965644,
			sequence_bytes = -84,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105123
		},
		{
			uncompressed_sample_offset = 4294967159,
			section_number = 4294965652,
			sequence_bytes = -70,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105123
		},
		{
			uncompressed_sample_offset = 4294967156,
			section_number = 4294965649,
			sequence_bytes = -74,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105124
		},
		{
			uncompressed_sample_offset = 4294967228,
			section_number = 4294966192,
			sequence_bytes = 990,
			xuid_high = 18,
			xuid_low = 420187,
			tickcount = 105124
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965604,
			sequence_bytes = -169,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105131
		},
		{
			uncompressed_sample_offset = 4294967140,
			section_number = 4294965632,
			sequence_bytes = -119,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105131
		},
		{
			uncompressed_sample_offset = 4294967132,
			section_number = 4294965636,
			sequence_bytes = -107,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105131
		},
		{
			uncompressed_sample_offset = 4294967144,
			section_number = 4294965631,
			sequence_bytes = -125,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105136
		},
		{
			uncompressed_sample_offset = 4294967156,
			section_number = 4294965685,
			sequence_bytes = -100,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105136
		},
		{
			uncompressed_sample_offset = 96,
			section_number = 203,
			sequence_bytes = 399,
			xuid_high = 14,
			xuid_low = 420187,
			tickcount = 105136
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965589,
			sequence_bytes = -204,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105144
		},
		{
			uncompressed_sample_offset = 4294967167,
			section_number = 4294965626,
			sequence_bytes = -175,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105144
		},
		{
			uncompressed_sample_offset = 4294967164,
			section_number = 4294965626,
			sequence_bytes = -163,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105144
		},
		{
			uncompressed_sample_offset = 4294967170,
			section_number = 4294965625,
			sequence_bytes = -194,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105148
		},
		{
			uncompressed_sample_offset = 4294967169,
			section_number = 4294965625,
			sequence_bytes = -181,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105148
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965651,
			sequence_bytes = -128,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105148
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965584,
			sequence_bytes = -230,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105152
		},
		{
			uncompressed_sample_offset = 4294967171,
			section_number = 4294965625,
			sequence_bytes = -201,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105152
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965646,
			sequence_bytes = -132,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105152
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965582,
			sequence_bytes = -240,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105156
		},
		{
			uncompressed_sample_offset = 4294967167,
			section_number = 4294965626,
			sequence_bytes = -234,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105156
		},
		{
			uncompressed_sample_offset = 4294967169,
			section_number = 4294965625,
			sequence_bytes = -219,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105156
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965581,
			sequence_bytes = -250,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105160
		},
		{
			uncompressed_sample_offset = 4294967160,
			section_number = 4294965627,
			sequence_bytes = -254,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105160
		},
		{
			uncompressed_sample_offset = 4294967165,
			section_number = 4294965626,
			sequence_bytes = -241,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105160
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965581,
			sequence_bytes = -253,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105164
		},
		{
			uncompressed_sample_offset = 4294967151,
			section_number = 4294965628,
			sequence_bytes = -275,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105164
		},
		{
			uncompressed_sample_offset = 4294967159,
			section_number = 4294965627,
			sequence_bytes = -257,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105164
		},
		{
			uncompressed_sample_offset = 4294967156,
			section_number = 4294965627,
			sequence_bytes = -264,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105164
		},
		{
			uncompressed_sample_offset = 4294967167,
			section_number = 4294965786,
			sequence_bytes = 114,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105164
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294967096,
			sequence_bytes = 1365,
			xuid_high = 22,
			xuid_low = 420187,
			tickcount = 105164
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965591,
			sequence_bytes = -266,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105168
		},
		{
			uncompressed_sample_offset = 4294967147,
			section_number = 4294965629,
			sequence_bytes = -281,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105168
		},
		{
			uncompressed_sample_offset = 4294967137,
			section_number = 4294967096,
			sequence_bytes = 1359,
			xuid_high = 22,
			xuid_low = 420187,
			tickcount = 105168
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965592,
			sequence_bytes = -267,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105170
		},
		{
			uncompressed_sample_offset = 4294967138,
			section_number = 4294965628,
			sequence_bytes = -296,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105170
		},
		{
			uncompressed_sample_offset = 4294967143,
			section_number = 4294965629,
			sequence_bytes = -288,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105170
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965594,
			sequence_bytes = -270,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105172
		},
		{
			uncompressed_sample_offset = 4294967133,
			section_number = 4294965628,
			sequence_bytes = -303,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105172
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965628,
			sequence_bytes = -147,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105172
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965597,
			sequence_bytes = -273,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105176
		},
		{
			uncompressed_sample_offset = 4294967147,
			section_number = 4294965629,
			sequence_bytes = -335,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105176
		},
		{
			uncompressed_sample_offset = 4294967137,
			section_number = 4294965629,
			sequence_bytes = -320,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105176
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965599,
			sequence_bytes = -278,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105180
		},
		{
			uncompressed_sample_offset = 4294967157,
			section_number = 4294965623,
			sequence_bytes = -352,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105180
		},
		{
			uncompressed_sample_offset = 4294967151,
			section_number = 4294965628,
			sequence_bytes = -341,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105180
		},
		{
			uncompressed_sample_offset = 4294967165,
			section_number = 4294965612,
			sequence_bytes = -367,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105184
		},
		{
			uncompressed_sample_offset = 4294967160,
			section_number = 4294965619,
			sequence_bytes = -357,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105184
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965617,
			sequence_bytes = -156,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105184
		},
		{
			uncompressed_sample_offset = 4294967170,
			section_number = 4294965603,
			sequence_bytes = -384,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105188
		},
		{
			uncompressed_sample_offset = 4294967167,
			section_number = 4294965609,
			sequence_bytes = -372,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105188
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965613,
			sequence_bytes = -158,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105188
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965600,
			sequence_bytes = -282,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105192
		},
		{
			uncompressed_sample_offset = 4294967171,
			section_number = 4294965597,
			sequence_bytes = -403,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105192
		},
		{
			uncompressed_sample_offset = 4294967171,
			section_number = 4294965600,
			sequence_bytes = -391,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105192
		},
		{
			uncompressed_sample_offset = 4294967170,
			section_number = 4294965596,
			sequence_bytes = -423,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105198
		},
		{
			uncompressed_sample_offset = 4294967171,
			section_number = 4294965596,
			sequence_bytes = -409,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105198
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965604,
			sequence_bytes = -162,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105198
		},
		{
			uncompressed_sample_offset = 4294967153,
			section_number = 4294965604,
			sequence_bytes = -472,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105209
		},
		{
			uncompressed_sample_offset = 4294967143,
			section_number = 4294965609,
			sequence_bytes = -488,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105213
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965590,
			sequence_bytes = -167,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105213
		},
		{
			uncompressed_sample_offset = 4294967134,
			section_number = 4294967140,
			sequence_bytes = 1346,
			xuid_high = 22,
			xuid_low = 420187,
			tickcount = 105213
		},
		{
			uncompressed_sample_offset = 4294967126,
			section_number = 4294965616,
			sequence_bytes = -511,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105217
		},
		{
			uncompressed_sample_offset = 4294967149,
			section_number = 4294965681,
			sequence_bytes = -95,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105217
		},
		{
			uncompressed_sample_offset = 4294967128,
			section_number = 4294967150,
			sequence_bytes = 1347,
			xuid_high = 22,
			xuid_low = 420187,
			tickcount = 105217
		},
		{
			uncompressed_sample_offset = 4294967119,
			section_number = 4294965621,
			sequence_bytes = -525,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105219
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294967152,
			sequence_bytes = 1347,
			xuid_high = 22,
			xuid_low = 420187,
			tickcount = 105219
		},
		{
			uncompressed_sample_offset = 4294967120,
			section_number = 4294965623,
			sequence_bytes = -535,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105224
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965577,
			sequence_bytes = -172,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105224
		},
		{
			uncompressed_sample_offset = 4294967133,
			section_number = 4294965647,
			sequence_bytes = -119,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105224
		},
		{
			uncompressed_sample_offset = 4294967120,
			section_number = 4294965626,
			sequence_bytes = -548,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105228
		},
		{
			uncompressed_sample_offset = 4294967120,
			section_number = 4294965626,
			sequence_bytes = -550,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105228
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965579,
			sequence_bytes = -357,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105232
		},
		{
			uncompressed_sample_offset = 4294967120,
			section_number = 4294965630,
			sequence_bytes = -570,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105232
		},
		{
			uncompressed_sample_offset = 4294967120,
			section_number = 4294965628,
			sequence_bytes = -561,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105232
		},
		{
			uncompressed_sample_offset = 4294967120,
			section_number = 4294965631,
			sequence_bytes = -571,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105235
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965552,
			sequence_bytes = -182,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105235
		},
		{
			uncompressed_sample_offset = 32,
			section_number = 4294966362,
			sequence_bytes = 781,
			xuid_high = 18,
			xuid_low = 420187,
			tickcount = 105235
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965632,
			sequence_bytes = -574,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105236
		},
		{
			uncompressed_sample_offset = 4294967122,
			section_number = 4294965643,
			sequence_bytes = -594,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105239
		},
		{
			uncompressed_sample_offset = 4294967121,
			section_number = 4294965637,
			sequence_bytes = -584,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105239
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965541,
			sequence_bytes = -186,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105239
		},
		{
			uncompressed_sample_offset = 4294967123,
			section_number = 4294965652,
			sequence_bytes = -609,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105248
		},
		{
			uncompressed_sample_offset = 4294967129,
			section_number = 4294965516,
			sequence_bytes = -196,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105248
		},
		{
			uncompressed_sample_offset = 47,
			section_number = 4294966347,
			sequence_bytes = 745,
			xuid_high = 18,
			xuid_low = 420187,
			tickcount = 105248
		},
		{
			uncompressed_sample_offset = 4294967124,
			section_number = 4294965544,
			sequence_bytes = -397,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105251
		},
		{
			uncompressed_sample_offset = 4294967136,
			section_number = 4294965662,
			sequence_bytes = -630,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105251
		},
		{
			uncompressed_sample_offset = 4294967123,
			section_number = 4294965657,
			sequence_bytes = -619,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105251
		},
		{
			uncompressed_sample_offset = 4294967123,
			section_number = 4294965529,
			sequence_bytes = -400,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105255
		},
		{
			uncompressed_sample_offset = 4294967151,
			section_number = 4294965669,
			sequence_bytes = -642,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105255
		},
		{
			uncompressed_sample_offset = 4294967138,
			section_number = 4294965662,
			sequence_bytes = -631,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105255
		},
		{
			uncompressed_sample_offset = 4294967122,
			section_number = 4294965517,
			sequence_bytes = -401,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105259
		},
		{
			uncompressed_sample_offset = 4294967162,
			section_number = 4294965676,
			sequence_bytes = -655,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105259
		},
		{
			uncompressed_sample_offset = 4294967152,
			section_number = 4294965670,
			sequence_bytes = -643,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105259
		},
		{
			uncompressed_sample_offset = 4294967171,
			section_number = 4294965684,
			sequence_bytes = -668,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105267
		},
		{
			uncompressed_sample_offset = 64,
			section_number = 4294966325,
			sequence_bytes = 682,
			xuid_high = 18,
			xuid_low = 420187,
			tickcount = 105267
		},
		{
			uncompressed_sample_offset = 4294967133,
			section_number = 4294965460,
			sequence_bytes = -188,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105267
		},
		{
			uncompressed_sample_offset = 4294967120,
			section_number = 4294965482,
			sequence_bytes = -409,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105271
		},
		{
			uncompressed_sample_offset = 4294967176,
			section_number = 4294965692,
			sequence_bytes = -683,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105271
		},
		{
			uncompressed_sample_offset = 4294967159,
			section_number = 4294965437,
			sequence_bytes = -199,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105271
		},
		{
			uncompressed_sample_offset = 4294967176,
			section_number = 4294965710,
			sequence_bytes = -714,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105281
		},
		{
			uncompressed_sample_offset = 4294967104,
			section_number = 4294966756,
			sequence_bytes = 1170,
			xuid_high = 25,
			xuid_low = 420187,
			tickcount = 105281
		},
		{
			uncompressed_sample_offset = 4294967175,
			section_number = 4294965711,
			sequence_bytes = -717,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105281
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965461,
			sequence_bytes = -434,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105283
		},
		{
			uncompressed_sample_offset = 4294967172,
			section_number = 4294965717,
			sequence_bytes = -726,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105283
		},
		{
			uncompressed_sample_offset = 4294967182,
			section_number = 4294965394,
			sequence_bytes = -207,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105283
		},
		{
			uncompressed_sample_offset = 4294967170,
			section_number = 4294965718,
			sequence_bytes = -730,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105285
		},
		{
			uncompressed_sample_offset = 4294967170,
			section_number = 4294965388,
			sequence_bytes = -208,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105285
		},
		{
			uncompressed_sample_offset = 4294967162,
			section_number = 4294965725,
			sequence_bytes = -745,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105287
		},
		{
			uncompressed_sample_offset = 4294967151,
			section_number = 4294965732,
			sequence_bytes = -761,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105293
		},
		{
			uncompressed_sample_offset = 4294967169,
			section_number = 4294965355,
			sequence_bytes = -230,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105293
		},
		{
			uncompressed_sample_offset = 4294967149,
			section_number = 4294965733,
			sequence_bytes = -764,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105293
		},
		{
			uncompressed_sample_offset = 4294967135,
			section_number = 4294965740,
			sequence_bytes = -778,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105295
		},
		{
			uncompressed_sample_offset = 4294967180,
			section_number = 4294965372,
			sequence_bytes = -235,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105295
		},
		{
			uncompressed_sample_offset = 4294967136,
			section_number = 4294965747,
			sequence_bytes = -794,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105300
		},
		{
			uncompressed_sample_offset = 4294967153,
			section_number = 4294965321,
			sequence_bytes = -253,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105300
		},
		{
			uncompressed_sample_offset = 4294967140,
			section_number = 4294965748,
			sequence_bytes = -796,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105300
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965470,
			sequence_bytes = -497,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105304
		},
		{
			uncompressed_sample_offset = 112,
			section_number = 253,
			sequence_bytes = 157,
			xuid_high = 5,
			xuid_low = 420187,
			tickcount = 105304
		},
		{
			uncompressed_sample_offset = 4294967151,
			section_number = 4294965754,
			sequence_bytes = -812,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105304
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965473,
			sequence_bytes = -506,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105308
		},
		{
			uncompressed_sample_offset = 4294967165,
			section_number = 4294965766,
			sequence_bytes = -840,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105308
		},
		{
			uncompressed_sample_offset = 4294967160,
			section_number = 4294965761,
			sequence_bytes = -828,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105308
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965478,
			sequence_bytes = -518,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105312
		},
		{
			uncompressed_sample_offset = 4294967170,
			section_number = 4294965774,
			sequence_bytes = -858,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105312
		},
		{
			uncompressed_sample_offset = 4294967167,
			section_number = 4294965768,
			sequence_bytes = -844,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105312
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965481,
			sequence_bytes = -527,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105315
		},
		{
			uncompressed_sample_offset = 4294967171,
			section_number = 4294965783,
			sequence_bytes = -875,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105315
		},
		{
			uncompressed_sample_offset = 4294967170,
			section_number = 4294965777,
			sequence_bytes = -863,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105315
		},
		{
			uncompressed_sample_offset = 4294967171,
			section_number = 4294965785,
			sequence_bytes = -879,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105320
		},
		{
			uncompressed_sample_offset = 4294967139,
			section_number = 4294965333,
			sequence_bytes = -332,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105320
		},
		{
			uncompressed_sample_offset = 4294967171,
			section_number = 4294965787,
			sequence_bytes = -882,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105320
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965487,
			sequence_bytes = -553,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105324
		},
		{
			uncompressed_sample_offset = 4294967164,
			section_number = 4294965802,
			sequence_bytes = -910,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105324
		},
		{
			uncompressed_sample_offset = 4294967168,
			section_number = 4294965796,
			sequence_bytes = -898,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105324
		},
		{
			uncompressed_sample_offset = 4294967162,
			section_number = 4294965805,
			sequence_bytes = -915,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105329
		},
		{
			uncompressed_sample_offset = 4294967161,
			section_number = 4294965807,
			sequence_bytes = -918,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105329
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965486,
			sequence_bytes = -574,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105333
		},
		{
			uncompressed_sample_offset = 4294967154,
			section_number = 4294965815,
			sequence_bytes = -933,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105333
		},
		{
			uncompressed_sample_offset = 4294967162,
			section_number = 4294965296,
			sequence_bytes = -384,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105333
		},
		{
			uncompressed_sample_offset = 4294967142,
			section_number = 4294965825,
			sequence_bytes = -951,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105337
		},
		{
			uncompressed_sample_offset = 4294967139,
			section_number = 4294965826,
			sequence_bytes = -955,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105337
		},
		{
			uncompressed_sample_offset = 4294967132,
			section_number = 4294965836,
			sequence_bytes = -972,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105339
		},
		{
			uncompressed_sample_offset = 4294967156,
			section_number = 4294965215,
			sequence_bytes = -402,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105339
		},
		{
			uncompressed_sample_offset = 4294967144,
			section_number = 4294965844,
			sequence_bytes = -987,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105344
		},
		{
			uncompressed_sample_offset = 4294967156,
			section_number = 4294965253,
			sequence_bytes = -400,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105344
		},
		{
			uncompressed_sample_offset = 4294967146,
			section_number = 4294965846,
			sequence_bytes = -989,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105344
		},
		{
			uncompressed_sample_offset = 4294967155,
			section_number = 4294965853,
			sequence_bytes = -1002,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105349
		},
		{
			uncompressed_sample_offset = 4294967134,
			section_number = 4294965175,
			sequence_bytes = -396,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105349
		},
		{
			uncompressed_sample_offset = 4294967157,
			section_number = 4294965854,
			sequence_bytes = -1006,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105349
		},
		{
			uncompressed_sample_offset = 4294967164,
			section_number = 4294965861,
			sequence_bytes = -1019,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105353
		},
		{
			uncompressed_sample_offset = 4294967165,
			section_number = 4294965863,
			sequence_bytes = -1022,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105353
		},
		{
			uncompressed_sample_offset = 4294967169,
			section_number = 4294965870,
			sequence_bytes = -1036,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105356
		},
		{
			uncompressed_sample_offset = 4294967122,
			section_number = 4294965194,
			sequence_bytes = -403,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105356
		},
		{
			uncompressed_sample_offset = 4294967132,
			section_number = 4294965137,
			sequence_bytes = -401,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105356
		},
		{
			uncompressed_sample_offset = 4294967171,
			section_number = 4294965880,
			sequence_bytes = -1053,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105360
		},
		{
			uncompressed_sample_offset = 4294967141,
			section_number = 4294965120,
			sequence_bytes = -410,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105360
		},
		{
			uncompressed_sample_offset = 4294967171,
			section_number = 4294965881,
			sequence_bytes = -1056,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105360
		},
		{
			uncompressed_sample_offset = 4294967171,
			section_number = 4294965890,
			sequence_bytes = -1070,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105363
		},
		{
			uncompressed_sample_offset = 4294967170,
			section_number = 4294965892,
			sequence_bytes = -1073,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105363
		},
		{
			uncompressed_sample_offset = 4294967166,
			section_number = 4294965902,
			sequence_bytes = -1087,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105368
		},
		{
			uncompressed_sample_offset = 4294967149,
			section_number = 4294965138,
			sequence_bytes = -394,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105368
		},
		{
			uncompressed_sample_offset = 4294967158,
			section_number = 4294965090,
			sequence_bytes = -433,
			xuid_high = 20,
			xuid_low = 420187,
			tickcount = 105368
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965400,
			sequence_bytes = -598,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105371
		},
		{
			uncompressed_sample_offset = 4294967152,
			section_number = 4294965922,
			sequence_bytes = -1116,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105371
		},
		{
			uncompressed_sample_offset = 4294967161,
			section_number = 4294965911,
			sequence_bytes = -1101,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105371
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965398,
			sequence_bytes = -592,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105376
		},
		{
			uncompressed_sample_offset = 4294967140,
			section_number = 4294965935,
			sequence_bytes = -1132,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105376
		},
		{
			uncompressed_sample_offset = 4294967151,
			section_number = 4294965924,
			sequence_bytes = -1118,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105376
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965397,
			sequence_bytes = -589,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105380
		},
		{
			uncompressed_sample_offset = 4294967133,
			section_number = 4294965949,
			sequence_bytes = -1147,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105380
		},
		{
			uncompressed_sample_offset = 4294967136,
			section_number = 4294965939,
			sequence_bytes = -1137,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105380
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965394,
			sequence_bytes = -581,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105384
		},
		{
			uncompressed_sample_offset = 4294967147,
			section_number = 4294965964,
			sequence_bytes = -1158,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105384
		},
		{
			uncompressed_sample_offset = 4294967137,
			section_number = 4294965954,
			sequence_bytes = -1151,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105384
		},
		{
			uncompressed_sample_offset = 4294967117,
			section_number = 4294965390,
			sequence_bytes = -573,
			xuid_high = 1,
			xuid_low = 420187,
			tickcount = 105387
		},
		{
			uncompressed_sample_offset = 4294967158,
			section_number = 4294965979,
			sequence_bytes = -1168,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105387
		},
		{
			uncompressed_sample_offset = 4294967150,
			section_number = 4294965968,
			sequence_bytes = -1161,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105387
		},
		{
			uncompressed_sample_offset = 4294967165,
			section_number = 4294965996,
			sequence_bytes = -1177,
			xuid_high = 7,
			xuid_low = 420187,
			tickcount = 105393
		},
		{
			uncompressed_sample_offset = 4294967160,
			section_number = 4294965985,
			sequence_bytes = -1171,
			xuid_high = 8,
			xuid_low = 420187,
			tickcount = 105393
		},
		{
			uncompressed_sample_offset = 4294967134,
			section_number = 4294965062,
			sequence_bytes = -451,
			xuid_high = 13,
			xuid_low = 420187,
			tickcount = 105393
		}
	},
	Fatality = {
		{
			uncompressed_sample_offset = 1115688960,
			section_number = 3263291604,
			sequence_bytes = -1000118690,
			xuid_high = 95495,
			xuid_low = 682524666,
			tickcount = 95499
		},
		{
			uncompressed_sample_offset = 1120607216,
			section_number = 1116114317,
			sequence_bytes = -1000603354,
			xuid_high = 95495,
			xuid_low = 682000378,
			tickcount = 95499
		},
		{
			uncompressed_sample_offset = 3279943680,
			section_number = 3297470449,
			sequence_bytes = -998113024,
			xuid_high = 95496,
			xuid_low = 683442170,
			tickcount = 95500
		},
		{
			uncompressed_sample_offset = 1115688960,
			section_number = 3263291604,
			sequence_bytes = -1000118690,
			xuid_high = 95496,
			xuid_low = 682524666,
			tickcount = 95500
		},
		{
			uncompressed_sample_offset = 1120190520,
			section_number = 1116144958,
			sequence_bytes = -1000603354,
			xuid_high = 95496,
			xuid_low = 682000378,
			tickcount = 95500
		}
	},
	Nixware = {
		{
			uncompressed_sample_offset = 2974822910,
			section_number = 3650207471,
			sequence_bytes = 59832833,
			xuid_high = 0,
			xuid_low = 3355443654,
			tickcount = 58204
		},
		{
			uncompressed_sample_offset = 900759678,
			section_number = 814923503,
			sequence_bytes = -66743538,
			xuid_high = 0,
			xuid_low = 104857614,
			tickcount = 58208
		},
		{
			uncompressed_sample_offset = 2998929883,
			section_number = 2878652143,
			sequence_bytes = -2102494713,
			xuid_high = 0,
			xuid_low = 3355443656,
			tickcount = 58461
		},
		{
			uncompressed_sample_offset = 3227519130,
			section_number = 3449274095,
			sequence_bytes = 1091269901,
			xuid_high = 0,
			xuid_low = 3355443656,
			tickcount = 58467
		},
		{
			uncompressed_sample_offset = 3455074232,
			section_number = 3348676335,
			sequence_bytes = -1023970560,
			xuid_high = 0,
			xuid_low = 3355443656,
			tickcount = 58473
		},
		{
			uncompressed_sample_offset = 3656400824,
			section_number = 429506287,
			sequence_bytes = 1123614219,
			xuid_high = 0,
			xuid_low = 3355443656,
			tickcount = 58480
		},
		{
			uncompressed_sample_offset = 3816817503,
			section_number = 731561711,
			sequence_bytes = -1023380729,
			xuid_high = 0,
			xuid_low = 3355443656,
			tickcount = 58486
		},
		{
			uncompressed_sample_offset = 4126162877,
			section_number = 964738799,
			sequence_bytes = 1146156805,
			xuid_high = 0,
			xuid_low = 3355443656,
			tickcount = 58494
		},
		{
			uncompressed_sample_offset = 1528837560,
			section_number = 3078733551,
			sequence_bytes = -2116065527,
			xuid_high = 0,
			xuid_low = 3355443657,
			tickcount = 58547
		},
		{
			uncompressed_sample_offset = 1777352635,
			section_number = 2105851631,
			sequence_bytes = -1026986489,
			xuid_high = 0,
			xuid_low = 3355443657,
			tickcount = 58553
		},
		{
			uncompressed_sample_offset = 1923097788,
			section_number = 1837547247,
			sequence_bytes = -2091881964,
			xuid_high = 0,
			xuid_low = 3355443657,
			tickcount = 58557
		},
		{
			uncompressed_sample_offset = 1275068616,
			section_number = 1065860847,
			sequence_bytes = -1071914746,
			xuid_high = 0,
			xuid_low = 104857614,
			tickcount = 58563
		},
		{
			uncompressed_sample_offset = 119943255,
			section_number = 1166589679,
			sequence_bytes = -1016173303,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58569
		},
		{
			uncompressed_sample_offset = 119953495,
			section_number = 1233764079,
			sequence_bytes = 1080653569,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58576
		},
		{
			uncompressed_sample_offset = 119963733,
			section_number = 2106244847,
			sequence_bytes = -2100267264,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58582
		},
		{
			uncompressed_sample_offset = 2886733791,
			section_number = 3180117743,
			sequence_bytes = 1079764749,
			xuid_high = 0,
			xuid_low = 3355443657,
			tickcount = 58588
		},
		{
			uncompressed_sample_offset = 119988305,
			section_number = 2978922223,
			sequence_bytes = -1037010939,
			xuid_high = 0,
			xuid_low = 106496,
			tickcount = 58594
		},
		{
			uncompressed_sample_offset = 1311736317,
			section_number = 1217380079,
			sequence_bytes = -937972981,
			xuid_high = 0,
			xuid_low = 104857614,
			tickcount = 58600
		},
		{
			uncompressed_sample_offset = 3524267992,
			section_number = 764591855,
			sequence_bytes = -2135720178,
			xuid_high = 0,
			xuid_low = 3355443657,
			tickcount = 58607
		},
		{
			uncompressed_sample_offset = 3719300507,
			section_number = 3180642031,
			sequence_bytes = -1039900415,
			xuid_high = 0,
			xuid_low = 905970121,
			tickcount = 58611
		},
		{
			uncompressed_sample_offset = 1331693451,
			section_number = 1905770223,
			sequence_bytes = -2111146489,
			xuid_high = 0,
			xuid_low = 104857614,
			tickcount = 58618
		},
		{
			uncompressed_sample_offset = 1337164215,
			section_number = 1771618031,
			sequence_bytes = -1027000317,
			xuid_high = 0,
			xuid_low = 104857614,
			tickcount = 58623
		},
		{
			uncompressed_sample_offset = 99631032,
			section_number = 429506287,
			sequence_bytes = -2097611509,
			xuid_high = 0,
			xuid_low = 3355443658,
			tickcount = 58630
		},
		{
			uncompressed_sample_offset = 120078419,
			section_number = 1603976943,
			sequence_bytes = -2097191929,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58636
		},
		{
			uncompressed_sample_offset = 468729785,
			section_number = 1031847663,
			sequence_bytes = -2078744315,
			xuid_high = 0,
			xuid_low = 3355443658,
			tickcount = 58641
		},
		{
			uncompressed_sample_offset = 701512511,
			section_number = 931249903,
			sequence_bytes = -2105644285,
			xuid_high = 0,
			xuid_low = 3355443658,
			tickcount = 58648
		},
		{
			uncompressed_sample_offset = 837828542,
			section_number = 965000943,
			sequence_bytes = 34955783,
			xuid_high = 0,
			xuid_low = 3355443658,
			tickcount = 58653
		},
		{
			uncompressed_sample_offset = 1077938203,
			section_number = 3515268847,
			sequence_bytes = 33846803,
			xuid_high = 0,
			xuid_low = 3355443658,
			tickcount = 58660
		},
		{
			uncompressed_sample_offset = 120135762,
			section_number = 3750215407,
			sequence_bytes = -2145616892,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58666
		},
		{
			uncompressed_sample_offset = 120148054,
			section_number = 3179855599,
			sequence_bytes = 59076870,
			xuid_high = 0,
			xuid_low = 73728,
			tickcount = 58672
		},
		{
			uncompressed_sample_offset = 120160343,
			section_number = 462012143,
			sequence_bytes = -1053589759,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58678
		},
		{
			uncompressed_sample_offset = 120172631,
			section_number = 696958703,
			sequence_bytes = -2093449983,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58684
		},
		{
			uncompressed_sample_offset = 1405094671,
			section_number = 3582770927,
			sequence_bytes = -2131629555,
			xuid_high = 0,
			xuid_low = 104857614,
			tickcount = 58690
		},
		{
			uncompressed_sample_offset = 1412399613,
			section_number = 1217380079,
			sequence_bytes = -937972981,
			xuid_high = 0,
			xuid_low = 104857614,
			tickcount = 58696
		},
		{
			uncompressed_sample_offset = 2450526168,
			section_number = 764591855,
			sequence_bytes = -2135720178,
			xuid_high = 0,
			xuid_low = 3355443658,
			tickcount = 58701
		},
		{
			uncompressed_sample_offset = 120223826,
			section_number = 3616980719,
			sequence_bytes = 1099817216,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58707
		},
		{
			uncompressed_sample_offset = 120236115,
			section_number = 228048623,
			sequence_bytes = -2108723193,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58714
		},
		{
			uncompressed_sample_offset = 3085975487,
			section_number = 1100529391,
			sequence_bytes = -1028162298,
			xuid_high = 0,
			xuid_low = 3355443658,
			tickcount = 58719
		},
		{
			uncompressed_sample_offset = 3320856504,
			section_number = 429506287,
			sequence_bytes = -2097611253,
			xuid_high = 0,
			xuid_low = 3355443658,
			tickcount = 58726
		},
		{
			uncompressed_sample_offset = 120270930,
			section_number = 1603976943,
			sequence_bytes = -1023450105,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58731
		},
		{
			uncompressed_sample_offset = 3689955262,
			section_number = 3850419951,
			sequence_bytes = -1001132539,
			xuid_high = 0,
			xuid_low = 1711276490,
			tickcount = 58737
		},
		{
			uncompressed_sample_offset = 3924836287,
			section_number = 495042287,
			sequence_bytes = 1108566274,
			xuid_high = 0,
			xuid_low = 3355443658,
			tickcount = 58743
		},
		{
			uncompressed_sample_offset = 4092608442,
			section_number = 3582246639,
			sequence_bytes = 86303244,
			xuid_high = 0,
			xuid_low = 3355443658,
			tickcount = 58749
		},
		{
			uncompressed_sample_offset = 4289726878,
			section_number = 2709962479,
			sequence_bytes = 1108309006,
			xuid_high = 0,
			xuid_low = 3355443658,
			tickcount = 58755
		},
		{
			uncompressed_sample_offset = 120334417,
			section_number = 4018650863,
			sequence_bytes = -2146571519,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58761
		},
		{
			uncompressed_sample_offset = 376443482,
			section_number = 562609903,
			sequence_bytes = -1060372722,
			xuid_high = 0,
			xuid_low = 3355443659,
			tickcount = 58767
		},
		{
			uncompressed_sample_offset = 120361046,
			section_number = 2844442351,
			sequence_bytes = -1017678847,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58773
		},
		{
			uncompressed_sample_offset = 120373333,
			section_number = 160218863,
			sequence_bytes = 1096285196,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58780
		},
		{
			uncompressed_sample_offset = 1274036158,
			section_number = 4186947311,
			sequence_bytes = 49576714,
			xuid_high = 0,
			xuid_low = 3355443659,
			tickcount = 58794
		},
		{
			uncompressed_sample_offset = 1519419518,
			section_number = 814923503,
			sequence_bytes = -1039820018,
			xuid_high = 0,
			xuid_low = 104857614,
			tickcount = 58798
		},
		{
			uncompressed_sample_offset = 120416343,
			section_number = 93765359,
			sequence_bytes = -1066338560,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 58800
		},
		{
			uncompressed_sample_offset = 1808794143,
			section_number = 3449274095,
			sequence_bytes = -2107807740,
			xuid_high = 0,
			xuid_low = 3355443659,
			tickcount = 58810
		},
		{
			uncompressed_sample_offset = 2146451391,
			section_number = 2509815535,
			sequence_bytes = -2100073211,
			xuid_high = 0,
			xuid_low = 3355443659,
			tickcount = 58818
		},
		{
			uncompressed_sample_offset = 2213560248,
			section_number = 429506287,
			sequence_bytes = 1123614219,
			xuid_high = 0,
			xuid_low = 3355443659,
			tickcount = 58822
		},
		{
			uncompressed_sample_offset = 3195013592,
			section_number = 3147480815,
			sequence_bytes = -2106758908,
			xuid_high = 0,
			xuid_low = 3355443660,
			tickcount = 58983
		},
		{
			uncompressed_sample_offset = 1719599605,
			section_number = 1937817327,
			sequence_bytes = -999441660,
			xuid_high = 0,
			xuid_low = 53477390,
			tickcount = 58989
		},
		{
			uncompressed_sample_offset = 3815782778,
			section_number = 2776743663,
			sequence_bytes = -1027966200,
			xuid_high = 0,
			xuid_low = 3355443660,
			tickcount = 58999
		},
		{
			uncompressed_sample_offset = 4154470969,
			section_number = 1770307311,
			sequence_bytes = -995295997,
			xuid_high = 0,
			xuid_low = 3355443660,
			tickcount = 59007
		},
		{
			uncompressed_sample_offset = 1888358,
			section_number = 2407907055,
			sequence_bytes = -2130122742,
			xuid_high = 0,
			xuid_low = 3200,
			tickcount = 59016
		},
		{
			uncompressed_sample_offset = 120875094,
			section_number = 1904656111,
			sequence_bytes = 1125147405,
			xuid_high = 0,
			xuid_low = 61440,
			tickcount = 59026
		},
		{
			uncompressed_sample_offset = 676333279,
			section_number = 2911354607,
			sequence_bytes = -2113701630,
			xuid_high = 0,
			xuid_low = 3355443661,
			tickcount = 59035
		},
		{
			uncompressed_sample_offset = 120914007,
			section_number = 965263087,
			sequence_bytes = 1109778697,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 59043
		},
		{
			uncompressed_sample_offset = 1344286908,
			section_number = 294239983,
			sequence_bytes = 1102146572,
			xuid_high = 0,
			xuid_low = 3355443661,
			tickcount = 59052
		},
		{
			uncompressed_sample_offset = 1676689339,
			section_number = 1804254959,
			sequence_bytes = 78409743,
			xuid_high = 0,
			xuid_low = 3355443661,
			tickcount = 59061
		},
		{
			uncompressed_sample_offset = 1807712765,
			section_number = 1653325551,
			sequence_bytes = -434238702,
			xuid_high = 0,
			xuid_low = 104857614,
			tickcount = 59070
		},
		{
			uncompressed_sample_offset = 2280654781,
			section_number = 3649879791,
			sequence_bytes = -1050578662,
			xuid_high = 0,
			xuid_low = 3355443661,
			tickcount = 59079
		},
		{
			uncompressed_sample_offset = 2566915387,
			section_number = 193838831,
			sequence_bytes = -2122224359,
			xuid_high = 0,
			xuid_low = 3355443661,
			tickcount = 59088
		},
		{
			uncompressed_sample_offset = 2884648892,
			section_number = 3381640943,
			sequence_bytes = 1148610056,
			xuid_high = 0,
			xuid_low = 3355443661,
			tickcount = 59097
		},
		{
			uncompressed_sample_offset = 1843429502,
			section_number = 814923503,
			sequence_bytes = -1039820018,
			xuid_high = 0,
			xuid_low = 104857614,
			tickcount = 59107
		},
		{
			uncompressed_sample_offset = 121059413,
			section_number = 496418543,
			sequence_bytes = -2143722492,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 59115
		},
		{
			uncompressed_sample_offset = 3788520060,
			section_number = 228048623,
			sequence_bytes = 1078686471,
			xuid_high = 0,
			xuid_low = 3355443661,
			tickcount = 59125
		},
		{
			uncompressed_sample_offset = 4025499576,
			section_number = 429506287,
			sequence_bytes = 1123614219,
			xuid_high = 0,
			xuid_low = 3355443661,
			tickcount = 59133
		},
		{
			uncompressed_sample_offset = 69208796,
			section_number = 161136367,
			sequence_bytes = 42105605,
			xuid_high = 0,
			xuid_low = 3355443662,
			tickcount = 59142
		},
		{
			uncompressed_sample_offset = 1891172839,
			section_number = 713080559,
			sequence_bytes = -400212209,
			xuid_high = 0,
			xuid_low = 53477390,
			tickcount = 59151
		},
		{
			uncompressed_sample_offset = 703610812,
			section_number = 2072297199,
			sequence_bytes = -2069758205,
			xuid_high = 0,
			xuid_low = 3355443662,
			tickcount = 59160
		},
		{
			uncompressed_sample_offset = 948963933,
			section_number = 3146104559,
			sequence_bytes = -1073579770,
			xuid_high = 0,
			xuid_low = 3355443662,
			tickcount = 59170
		},
		{
			uncompressed_sample_offset = 121190485,
			section_number = 2508701423,
			sequence_bytes = 1117616133,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 59178
		},
		{
			uncompressed_sample_offset = 1609566136,
			section_number = 3448291055,
			sequence_bytes = -1047597028,
			xuid_high = 0,
			xuid_low = 3355443662,
			tickcount = 59187
		},
		{
			uncompressed_sample_offset = 1913666619,
			section_number = 629784303,
			sequence_bytes = 1121349639,
			xuid_high = 0,
			xuid_low = 3355443662,
			tickcount = 59196
		},
		{
			uncompressed_sample_offset = 2485135228,
			section_number = 4220174063,
			sequence_bytes = 55934224,
			xuid_high = 0,
			xuid_low = 3355443665,
			tickcount = 59598
		},
		{
			uncompressed_sample_offset = 2369749501,
			section_number = 1653325551,
			sequence_bytes = -434238702,
			xuid_high = 0,
			xuid_low = 104857614,
			tickcount = 59607
		},
		{
			uncompressed_sample_offset = 122177621,
			section_number = 864927471,
			sequence_bytes = 1103066382,
			xuid_high = 0,
			xuid_low = 204800,
			tickcount = 59661
		}
	},
	Airflow = {
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -9897583,
			xuid_high = 4287703555,
			xuid_low = 3735943921,
			tickcount = 26015
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294965507,
			xuid_low = 3735924721,
			tickcount = 26015
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -13632949,
			xuid_high = 4191516677,
			xuid_low = 3735943921,
			tickcount = 26015
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -10880636,
			xuid_high = 4286917123,
			xuid_low = 3735943921,
			tickcount = 26019
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294965507,
			xuid_low = 3735924721,
			tickcount = 26019
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -7472743,
			xuid_high = 4289327620,
			xuid_low = 3735943921,
			tickcount = 26019
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -9963142,
			xuid_high = 4285934083,
			xuid_low = 3735943921,
			tickcount = 26023
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294965507,
			xuid_low = 3735924721,
			tickcount = 26023
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -13895119,
			xuid_high = 4192596485,
			xuid_low = 3735943921,
			tickcount = 26023
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -9176717,
			xuid_high = 4284819971,
			xuid_low = 3735943921,
			tickcount = 26025
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294965507,
			xuid_low = 3735924721,
			tickcount = 26025
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -14288348,
			xuid_high = 4193147141,
			xuid_low = 3735943921,
			tickcount = 26025
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -8914575,
			xuid_high = 4284295683,
			xuid_low = 3735943921,
			tickcount = 26030
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294965507,
			xuid_low = 3735924721,
			tickcount = 26030
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -14616034,
			xuid_high = 4193528069,
			xuid_low = 3735943921,
			tickcount = 26030
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = 9632980,
			xuid_high = 4187171330,
			xuid_low = 3735943921,
			tickcount = 26034
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294966274,
			xuid_low = 3735924721,
			tickcount = 26034
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -8783521,
			xuid_high = 4287585284,
			xuid_low = 3735943921,
			tickcount = 26034
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = 3800089,
			xuid_high = 47458817,
			xuid_low = 3735943921,
			tickcount = 26038
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294966273,
			xuid_low = 3735924721,
			tickcount = 26038
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = 10026196,
			xuid_high = 4188416514,
			xuid_low = 3735943921,
			tickcount = 26038
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = 10222803,
			xuid_high = 4189596162,
			xuid_low = 3735943921,
			tickcount = 26040
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294966274,
			xuid_low = 3735924721,
			tickcount = 26040
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -10879380,
			xuid_high = 84303368,
			xuid_low = 3735943921,
			tickcount = 26040
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = 10288338,
			xuid_high = 4190185986,
			xuid_low = 3735943921,
			tickcount = 26045
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294966274,
			xuid_low = 3735924721,
			tickcount = 26045
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -10879381,
			xuid_high = 84303368,
			xuid_low = 3735943921,
			tickcount = 26045
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -8717982,
			xuid_high = 4278135299,
			xuid_low = 3735943921,
			tickcount = 26049
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294965507,
			xuid_low = 3735924721,
			tickcount = 26049
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -15271473,
			xuid_high = 4193221637,
			xuid_low = 3735943921,
			tickcount = 26049
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -9307809,
			xuid_high = 4276824579,
			xuid_low = 3735943921,
			tickcount = 26053
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294965507,
			xuid_low = 3735924721,
			tickcount = 26053
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -14747201,
			xuid_high = 4192603909,
			xuid_low = 3735943921,
			tickcount = 26053
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -10094244,
			xuid_high = 4275579395,
			xuid_low = 3735943921,
			tickcount = 26055
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294965507,
			xuid_low = 3735924721,
			tickcount = 26055
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -14485073,
			xuid_high = 4192073221,
			xuid_low = 3735943921,
			tickcount = 26055
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -10552997,
			xuid_high = 4274924035,
			xuid_low = 3735943921,
			tickcount = 26060
		},
		{
			uncompressed_sample_offset = 511,
			section_number = 511,
			sequence_bytes = -1,
			xuid_high = 4294965507,
			xuid_low = 3735924721,
			tickcount = 26060
		},
		{
			uncompressed_sample_offset = 100,
			section_number = 100,
			sequence_bytes = -14419545,
			xuid_high = 4191772677,
			xuid_low = 3735943921,
			tickcount = 26060
		}
	}
}
anonteam_0_31.delta_packet = 0

function anonteam_0_31.cheat_spoof()
	-- function 433
	if anonteam_0_31.spoof_tickcount == globals.tickcount then
		return
	end

	anonteam_0_31.spoof_tickcount = globals.tickcount

	local anonteam_433_0 = anonteam_0_47.ui_tables.visuals.spoofer_list.str_value

	if not anonteam_433_0 or anonteam_0_31.cclientstate.net_channel == 0 then
		return
	end

	if anonteam_0_11(anonteam_0_31.tick_delay - globals.tickcount) > anonteam_0_31.delta_packet then
		local anonteam_433_1 = anonteam_433_0
		local anonteam_433_2 = anonteam_0_31.cheats_data[anonteam_433_1]

		if not anonteam_433_2 then
			return
		end

		if anonteam_0_31.packets[anonteam_433_1] then
			if #anonteam_0_31.packets[anonteam_433_1] < anonteam_0_31.packet_counter then
				anonteam_0_31.packet_counter = 1
			end

			anonteam_433_2 = anonteam_0_31.packets[anonteam_433_1][anonteam_0_31.packet_counter]
		end

		if anonteam_433_1 ~= "Disabled" then
			anonteam_0_35.shared_esp:override(false)
		else
			anonteam_0_35.shared_esp:override()
		end

		anonteam_0_31.packet_counter = anonteam_0_31.packet_counter + 1

		if anonteam_0_31.packets[anonteam_433_1] and anonteam_0_31.packet_counter > #anonteam_0_31.packets[anonteam_433_1] then
			anonteam_0_31.packet_counter = 1
		end

		if anonteam_433_1 == "Pandora" then
			local anonteam_433_3 = entity.get_players()
			local anonteam_433_4 = {}

			for iter_433_0 = 1, #anonteam_433_3 do
				if anonteam_433_3[iter_433_0]:is_alive() then
					anonteam_0_4(anonteam_433_4, 1, anonteam_433_3[iter_433_0])
				end
			end

			local anonteam_433_5 = entity.get(anonteam_433_4[math.random(1, #anonteam_433_4)])

			if not anonteam_433_5 or not anonteam_433_5:is_alive() then
				return
			end

			local anonteam_433_6 = ffi.new("pandora_data_t")

			anonteam_433_6.pandora_id = 420187
			anonteam_433_6.entity_id = anonteam_433_5:get_index()

			local anonteam_433_7 = ffi.new("vector_t")

			anonteam_433_7.x, anonteam_433_7.y, anonteam_433_7.z = anonteam_0_13(-2000, 2000), anonteam_0_13(-2000, 2000), anonteam_0_13(-2000, 2000)
			anonteam_433_6.pos = anonteam_433_7

			local anonteam_433_8 = ffi.new("VoiceDataCustom_t")

			ffi.copy(anonteam_433_8, anonteam_433_6, ffi.sizeof(anonteam_433_6))

			local anonteam_433_9 = anonteam_0_31.packets[anonteam_433_1][anonteam_0_31.packet_counter]

			anonteam_433_2.xuid_low = anonteam_433_9.xuid_low
			anonteam_433_2.xuid_high = anonteam_433_5:get_index()
			anonteam_433_2.sequence_bytes = anonteam_433_9.sequence_bytes
			anonteam_433_2.section_number = anonteam_433_9.section_number
			anonteam_433_2.uncompressed_sample_offset = anonteam_433_9.uncompressed_sample_offset

			if anonteam_0_31.packet_counter > 1 then
				anonteam_0_31.tick_delay = globals.tickcount
				anonteam_0_31.delta_packet = anonteam_0_31.packets[anonteam_433_1][anonteam_0_31.packet_counter].tickcount - anonteam_0_31.packets[anonteam_433_1][anonteam_0_31.packet_counter - 1].tickcount
			end

			anonteam_0_31.voice_message(anonteam_433_2)

			return
		end

		local anonteam_433_10 = anonteam_0_31.packets[anonteam_433_1][anonteam_0_31.packet_counter]

		if anonteam_433_1 == "Nixware" then
			anonteam_433_10.xuid_low = 3355443200 + globals.curtime / 2

			anonteam_0_31.voice_message(anonteam_433_10)

			anonteam_0_31.tick_delay = globals.tickcount
			anonteam_0_31.delta_packet = 2

			return
		end

		if anonteam_433_1 == "Fatality" then
			local anonteam_433_11 = entity.get_players()
			local anonteam_433_12 = 0

			for iter_433_1 = 1, #anonteam_433_11 do
				local anonteam_433_13 = anonteam_433_11[iter_433_1]

				if anonteam_433_13:is_alive() and not anonteam_433_13:is_dormant() then
					local anonteam_433_14 = anonteam_433_13.m_vecOrigin
					local anonteam_433_15 = anonteam_0_31.calculate_fatality_value(anonteam_433_14.x)
					local anonteam_433_16 = anonteam_0_31.calculate_fatality_value(anonteam_433_14.y)
					local anonteam_433_17 = anonteam_0_31.calculate_fatality_value(anonteam_433_14.z)

					anonteam_433_16 = anonteam_433_16 < 0 and 4294967296 + anonteam_433_16 or anonteam_433_16
					anonteam_433_17 = anonteam_433_17 < 0 and 4294967296 + anonteam_433_17 or anonteam_433_17
					anonteam_433_10.xuid_low = anonteam_433_13:get_player_info().userid * 65536 + 704675834
					anonteam_433_10.xuid_high = globals.tickcount
					anonteam_433_10.sequence_bytes = anonteam_433_15
					anonteam_433_10.section_number = anonteam_433_16
					anonteam_433_10.uncompressed_sample_offset = anonteam_433_17

					anonteam_0_31.voice_message(anonteam_433_10)

					anonteam_433_12 = anonteam_433_12 + 1

					if anonteam_433_12 >= 3 then
						break
					end
				end
			end

			if anonteam_0_31.packet_counter > 1 then
				anonteam_0_31.tick_delay = globals.tickcount
				anonteam_0_31.delta_packet = 3
			end

			return
		end

		if anonteam_433_1 == "Airflow" then
			local anonteam_433_18 = entity.get_players()
			local anonteam_433_19 = 0

			for iter_433_2 = 1, #anonteam_433_18 do
				local anonteam_433_20 = anonteam_433_18[iter_433_2]

				if anonteam_433_20:is_alive() then
					local anonteam_433_21 = anonteam_433_20.m_vecOrigin
					local anonteam_433_22 = anonteam_0_40(anonteam_433_21.x)
					local anonteam_433_23 = anonteam_0_40(anonteam_433_21.y)
					local anonteam_433_24 = anonteam_0_40(anonteam_433_21.z)

					anonteam_433_10.xuid_low = 3735943921
					anonteam_433_10.xuid_high = (anonteam_433_22 % 65536 + anonteam_433_23 % 256 * 65536) * 256 + iter_433_2
					anonteam_433_10.sequence_bytes = anonteam_433_23 >= 0 and anonteam_433_24 % 65536 * 256 + 1677721600 + anonteam_0_12(anonteam_433_23 / 256) or anonteam_433_24 % 65536 * 256 + 1677721600 + 256 + anonteam_0_12(anonteam_433_23 / 256)
					anonteam_433_10.section_number = globals.tickcount % 65535
					anonteam_433_10.uncompressed_sample_offset = math.random(0, 1) == 1 and 16515072 or 0

					anonteam_0_31.voice_message(anonteam_433_10)

					anonteam_433_19 = anonteam_433_19 + 1

					if anonteam_433_19 >= 3 then
						break
					end
				end
			end

			if anonteam_0_31.packet_counter > 1 then
				anonteam_0_31.tick_delay = globals.tickcount
				anonteam_0_31.delta_packet = 2
			end

			return
		end

		anonteam_0_31.voice_message(anonteam_433_10)
	end
end

anonteam_0_47.ui_tables.visuals.spoofer_switch:set_callback(function()
	-- function 434
	if anonteam_0_47.ui_tables.visuals.spoofer_switch.value then
		events.render:set(anonteam_0_31.cheat_spoof)
	else
		events.render:unset(anonteam_0_31.cheat_spoof)
	end
end, true)
events.shutdown:set(function()
	-- function 435
	anonteam_0_35.shared_esp:override()
end)

anonteam_0_31.con_color = nil

local anonteam_0_58 = materials.get_materials("")

anonteam_0_31.console_materials = {}

for iter_0_5 = 1, #anonteam_0_58 do
	local anonteam_0_59 = {
		"vgui/hud/800corner1",
		"vgui/hud/800corner2",
		"vgui/hud/800corner3",
		"vgui/hud/800corner4",
		"vgui_white"
	}

	for iter_0_6 = 1, #anonteam_0_59 do
		if anonteam_0_58[iter_0_5]:get_name():find(anonteam_0_59[iter_0_6]) then
			table.insert(anonteam_0_31.console_materials, anonteam_0_58[iter_0_5])
		end
	end
end

function anonteam_0_31.modulate_console(arg_436_0)
	-- function 436
	for iter_436_0 = 1, 5 do
		local anonteam_436_0 = anonteam_0_31.console_materials[iter_436_0]

		anonteam_436_0:color_modulate(arg_436_0)
		anonteam_436_0:alpha_modulate(arg_436_0.a / 255)
	end

	anonteam_0_31.con_color = arg_436_0:to_hex()
end

function anonteam_0_31.console_modulation()
	-- function 437
	local anonteam_437_0 = anonteam_0_44.console_status(anonteam_0_44.EngineClient_class)
	local anonteam_437_1 = color(255)

	if anonteam_437_0 then
		anonteam_437_1 = anonteam_0_47.ui_tables.visuals.console_color.value
	end

	if anonteam_437_1:to_hex() ~= anonteam_0_31.con_color then
		anonteam_0_31.modulate_console(anonteam_437_1)
	end
end

anonteam_0_47.ui_tables.visuals.console_switch:set_callback(function()
	-- function 438
	if anonteam_0_47.ui_tables.visuals.console_switch.value then
		events.render:set(anonteam_0_31.console_modulation)
	else
		events.render:unset(anonteam_0_31.console_modulation)
		anonteam_0_31.modulate_console(color(255, 255, 255, 255))
	end
end, true)
events.shutdown:set(function()
	-- function 439
	anonteam_0_31.modulate_console(color(255, 255, 255, 255))
end)

anonteam_0_31.cache_viewmodel = {
	fov = cvar.viewmodel_fov:int(),
	x = cvar.viewmodel_offset_x:float(),
	y = cvar.viewmodel_offset_y:float(),
	z = cvar.viewmodel_offset_z:float()
}

function anonteam_0_31.set_viewmodel()
	-- function 440
	cvar.viewmodel_fov:int(anonteam_0_47.ui_tables.viewmodel.viewmodel_fov.value)
	cvar.viewmodel_offset_x:float(anonteam_0_47.ui_tables.viewmodel.viewmodel_x.value / 100)
	cvar.viewmodel_offset_y:float(anonteam_0_47.ui_tables.viewmodel.viewmodel_y.value / 100)
	cvar.viewmodel_offset_z:float(anonteam_0_47.ui_tables.viewmodel.viewmodel_z.value / 100)

	anonteam_0_0.viewmodel.fov = anonteam_0_47.ui_tables.viewmodel.viewmodel_fov.value
	anonteam_0_0.viewmodel.x = anonteam_0_47.ui_tables.viewmodel.viewmodel_x.value
	anonteam_0_0.viewmodel.y = anonteam_0_47.ui_tables.viewmodel.viewmodel_y.value
	anonteam_0_0.viewmodel.z = anonteam_0_47.ui_tables.viewmodel.viewmodel_z.value
end

anonteam_0_47.ui_tables.viewmodel.viewmodel_switch:set_callback(function()
	-- function 441
	if anonteam_0_47.ui_tables.viewmodel.viewmodel_switch.value then
		anonteam_0_31.cache_viewmodel.fov = cvar.viewmodel_fov:int()
		anonteam_0_31.cache_viewmodel.x = cvar.viewmodel_offset_x:float()
		anonteam_0_31.cache_viewmodel.y = cvar.viewmodel_offset_y:float()
		anonteam_0_31.cache_viewmodel.z = cvar.viewmodel_offset_z:float()

		if anonteam_0_47.ui_tables.viewmodel.viewmodel_fov.value == 0 then
			anonteam_0_47.ui_tables.viewmodel.viewmodel_fov.ref:set(cvar.viewmodel_fov:int())
		end

		if anonteam_0_47.ui_tables.viewmodel.viewmodel_x == 0 then
			anonteam_0_47.ui_tables.viewmodel.viewmodel_x.ref:set(cvar.viewmodel_offset_x:float() * 100)
		end

		if anonteam_0_47.ui_tables.viewmodel.viewmodel_y == 0 then
			anonteam_0_47.ui_tables.viewmodel.viewmodel_y.ref:set(cvar.viewmodel_offset_y:float() * 100)
		end

		if anonteam_0_47.ui_tables.viewmodel.viewmodel_z == 0 then
			anonteam_0_47.ui_tables.viewmodel.viewmodel_z.ref:set(cvar.viewmodel_offset_z:float() * 100)
		end

		cvar.sv_competitive_minspec:int(0)
		anonteam_0_31.set_viewmodel()
	else
		cvar.viewmodel_fov:int(anonteam_0_31.cache_viewmodel.fov)
		cvar.viewmodel_offset_x:float(anonteam_0_31.cache_viewmodel.x)
		cvar.viewmodel_offset_y:float(anonteam_0_31.cache_viewmodel.y)
		cvar.viewmodel_offset_z:float(anonteam_0_31.cache_viewmodel.z)
		cvar.sv_competitive_minspec:int(1)
	end

	anonteam_0_0.viewmodel.switch = anonteam_0_47.ui_tables.viewmodel.viewmodel_switch.value
end, true)
anonteam_0_47.ui_tables.viewmodel.viewmodel_fov.ref:set_callback(function()
	-- function 442
	anonteam_0_31.set_viewmodel()
end)
anonteam_0_47.ui_tables.viewmodel.viewmodel_x.ref:set_callback(function()
	-- function 443
	anonteam_0_31.set_viewmodel()
end)
anonteam_0_47.ui_tables.viewmodel.viewmodel_y.ref:set_callback(function()
	-- function 444
	anonteam_0_31.set_viewmodel()
end)
anonteam_0_47.ui_tables.viewmodel.viewmodel_z.ref:set_callback(function()
	-- function 445
	anonteam_0_31.set_viewmodel()
end)
anonteam_0_47.ui_tables.viewmodel.viewmodel_undo.ref:set_callback(function()
	-- function 446
	anonteam_0_47.ui_tables.viewmodel.viewmodel_fov.ref:set(anonteam_0_31.cache_viewmodel.fov)
	anonteam_0_47.ui_tables.viewmodel.viewmodel_x.ref:set(anonteam_0_31.cache_viewmodel.x * 100)
	anonteam_0_47.ui_tables.viewmodel.viewmodel_y.ref:set(anonteam_0_31.cache_viewmodel.y * 100)
	anonteam_0_47.ui_tables.viewmodel.viewmodel_z.ref:set(anonteam_0_31.cache_viewmodel.z * 100)
end)
events.player_connect_full:set(function()
	-- function 447
	if anonteam_0_47.ui_tables.viewmodel.viewmodel_switch.value then
		cvar.sv_competitive_minspec:int(0)
		anonteam_0_31.set_viewmodel()
	end
end)
events.shutdown:set(function()
	-- function 448
	cvar.viewmodel_fov:int(anonteam_0_31.cache_viewmodel.fov)
	cvar.viewmodel_offset_x:float(anonteam_0_31.cache_viewmodel.x)
	cvar.viewmodel_offset_y:float(anonteam_0_31.cache_viewmodel.y)
	cvar.viewmodel_offset_z:float(anonteam_0_31.cache_viewmodel.z)
	cvar.sv_competitive_minspec:int(1)
end)

function anonteam_0_31.set_aspect_ratio()
	-- function 449
	cvar.r_aspectratio:float(anonteam_0_47.ui_tables.viewmodel.aspect_value.value / 10)

	anonteam_0_0.viewmodel.aspect_ratio = anonteam_0_47.ui_tables.viewmodel.aspect_value.value
end

anonteam_0_31.cache_aspect_ratio = cvar.r_aspectratio:float()

anonteam_0_47.ui_tables.viewmodel.aspect_switch:set_callback(function()
	-- function 450
	if anonteam_0_47.ui_tables.viewmodel.aspect_switch.value then
		anonteam_0_31.cache_aspect_ratio = cvar.r_aspectratio:float()

		if anonteam_0_47.ui_tables.viewmodel.aspect_value.value == 0 then
			anonteam_0_47.ui_tables.viewmodel.aspect_value.ref:set(anonteam_0_39(anonteam_0_31.cache_aspect_ratio * 10, 0.01))
		end

		anonteam_0_31.set_aspect_ratio()
	else
		cvar.r_aspectratio:float(anonteam_0_31.cache_aspect_ratio)
	end

	anonteam_0_0.viewmodel.aspect_ratio_switch = anonteam_0_47.ui_tables.viewmodel.aspect_switch.value
end, true)
anonteam_0_47.ui_tables.viewmodel.aspect_value:set_callback(function()
	-- function 451
	anonteam_0_31.set_aspect_ratio()
end)
events.shutdown:set(function()
	-- function 452
	cvar.r_aspectratio:float(anonteam_0_31.cache_aspect_ratio)
end)

local anonteam_0_60 = {}

anonteam_0_60.move_yaw = 0
anonteam_0_60.wall_yaw = 0
anonteam_0_60.final_yaw = 0

function anonteam_0_60.correct_move_yaw(arg_453_0)
	-- function 453
	local anonteam_453_0 = render.camera_angles()
	local anonteam_453_1 = arg_453_0.move_yaw
	local anonteam_453_2 = arg_453_0.forwardmove > 0
	local anonteam_453_3 = arg_453_0.forwardmove < 0
	local anonteam_453_4 = arg_453_0.forwardmove == 0
	local anonteam_453_5 = arg_453_0.sidemove < 0
	local anonteam_453_6 = arg_453_0.sidemove > 0

	if anonteam_453_2 then
		local anonteam_453_7 = anonteam_0_19(90 * anonteam_0_11(anonteam_453_0.x / 89), 45, 90)

		if anonteam_453_5 then
			return math.normalize_yaw(anonteam_453_1 + anonteam_453_7), anonteam_453_7
		end

		if anonteam_453_6 then
			return math.normalize_yaw(anonteam_453_1 - anonteam_453_7), -anonteam_453_7
		end

		return anonteam_453_1, 0
	end

	if anonteam_453_3 then
		local anonteam_453_8 = 180 - anonteam_0_19(90 * anonteam_0_11(anonteam_453_0.x / 89), 45, 90)

		if anonteam_453_5 then
			return math.normalize_yaw(anonteam_453_1 + anonteam_453_8), anonteam_453_8
		end

		if anonteam_453_6 then
			return math.normalize_yaw(anonteam_453_1 - anonteam_453_8), -anonteam_453_8
		end

		return math.normalize_yaw(anonteam_453_1 - 180), -180
	end

	if anonteam_453_4 then
		if anonteam_453_5 then
			return math.normalize_yaw(anonteam_453_1 + 90), 90
		end

		if anonteam_453_6 then
			return math.normalize_yaw(anonteam_453_1 - 90), -90
		end
	end

	return anonteam_453_1, 0
end

function anonteam_0_60.avoid_collision_detect(arg_454_0)
	-- function 454
	local anonteam_454_0 = anonteam_0_41.ref
	local anonteam_454_1 = anonteam_0_41.ref:get_origin()

	if anonteam_0_41.on_ground or not anonteam_454_0 or anonteam_0_47.ui_tables.misc.avoid_disable.value_by_name[1] and anonteam_0_41.crouching then
		return
	end

	if anonteam_0_35.edge_jump:get() and anonteam_0_47.ui_tables.misc.avoid_disable.value_by_name[2] then
		return
	end

	if anonteam_454_0:get_anim_state().on_ladder then
		return
	end

	local anonteam_454_2 = anonteam_454_0.m_vecMins
	local anonteam_454_3 = anonteam_454_0.m_vecMaxs

	anonteam_454_2.z = 20
	anonteam_454_3.z = anonteam_454_3.z - 10

	local anonteam_454_4 = anonteam_454_0.m_vecVelocity

	anonteam_454_4.z = 0

	local anonteam_454_5 = anonteam_454_4:length()
	local anonteam_454_6, anonteam_454_7 = anonteam_0_60.correct_move_yaw(arg_454_0)

	anonteam_454_0.m_vecVelocity:normalized():angles().z = 0
	anonteam_0_60.move_yaw = anonteam_454_6
	anonteam_0_60.wall_yaw = nil

	local anonteam_454_8 = vector():angles(0, anonteam_454_6 - 25, 0) * 4 * anonteam_0_47.ui_tables.misc.avoid_dist.value
	local anonteam_454_9 = vector():angles(0, anonteam_454_6 + 25, 0) * 4 * anonteam_0_47.ui_tables.misc.avoid_dist.value
	local anonteam_454_10 = anonteam_454_0:simulate_movement()

	anonteam_454_10:think()

	local anonteam_454_11 = anonteam_454_10.origin
	local anonteam_454_12 = anonteam_0_22(anonteam_454_11, anonteam_454_11 + anonteam_454_8, anonteam_454_2, anonteam_454_3, entity.get_players(false, false), 33636363, 3)

	if anonteam_454_12.fraction ~= 1 then
		local anonteam_454_13 = anonteam_0_22(anonteam_454_11, anonteam_454_11 + anonteam_454_8, anonteam_454_2, anonteam_454_3, entity.get_players(false, false), 536870912, 3)

		if anonteam_454_12.entity == entity.get(0) and anonteam_454_13.fraction == 1 then
			local anonteam_454_14, anonteam_454_15 = anonteam_454_12.plane.normal:vectors()
			local anonteam_454_16 = anonteam_454_12.end_pos
			local anonteam_454_17 = (anonteam_454_16 + anonteam_454_14 * 8 - anonteam_454_16):normalized()

			if anonteam_0_11(math.normalize_yaw(anonteam_454_17:angles().y - anonteam_454_6)) > 110 then
				anonteam_454_17 = anonteam_454_17 * -1
			end

			arg_454_0.move_yaw = math.normalize_yaw(anonteam_454_17:angles().y - anonteam_454_7)
			anonteam_0_60.wall_yaw = anonteam_454_17:angles().y

			return
		end
	end

	local anonteam_454_18 = anonteam_0_22(anonteam_454_11, anonteam_454_11 + anonteam_454_9, anonteam_454_2, anonteam_454_3, entity.get_players(false, false), 33636363, 3)

	if anonteam_454_18.fraction ~= 1 then
		local anonteam_454_19 = anonteam_0_22(anonteam_454_11, anonteam_454_11 + anonteam_454_9, anonteam_454_2, anonteam_454_3, entity.get_players(false, false), 536870912, 3)

		if anonteam_454_18.entity == entity.get(0) and anonteam_454_19.fraction == 1 then
			local anonteam_454_20, anonteam_454_21 = anonteam_454_18.plane.normal:vectors()
			local anonteam_454_22 = anonteam_454_18.end_pos
			local anonteam_454_23 = (anonteam_454_22 + anonteam_454_20 * 8 - anonteam_454_22):normalized()

			if anonteam_0_11(math.normalize_yaw(anonteam_454_23:angles().y - anonteam_454_6)) > 70 then
				anonteam_454_23 = anonteam_454_23 * -1
			end

			arg_454_0.move_yaw = math.normalize_yaw(anonteam_454_23:angles().y - anonteam_454_7)
			anonteam_0_60.wall_yaw = anonteam_454_23:angles().y
		end
	end
end

anonteam_0_47.ui_tables.misc.avoid_switch:set_callback(function()
	-- function 455
	if anonteam_0_47.ui_tables.misc.avoid_switch.value then
		events.createmove:set(anonteam_0_60.avoid_collision_detect)
	else
		events.createmove:unset(anonteam_0_60.avoid_collision_detect)
	end
end, true)

function anonteam_0_60.fast_ladder_func(arg_456_0)
	-- function 456
	local anonteam_456_0 = anonteam_0_41.ref

	if not anonteam_456_0 then
		return
	end

	if not anonteam_456_0:get_anim_state().on_ladder then
		return
	end

	if arg_456_0.forwardmove == 0 then
		return
	end

	local anonteam_456_1 = render.camera_angles()

	arg_456_0.view_angles.x = 89
	arg_456_0.view_angles.z = 0

	if anonteam_456_1.x < 45 then
		arg_456_0.in_moveright = arg_456_0.forwardmove > 0
		arg_456_0.in_moveleft = arg_456_0.forwardmove < 0
		arg_456_0.in_forward = arg_456_0.forwardmove < 0
		arg_456_0.in_back = arg_456_0.forwardmove > 0

		if arg_456_0.sidemove == 0 then
			arg_456_0.view_angles.y = arg_456_0.view_angles.y + 90

			return
		end

		arg_456_0.view_angles.y = arg_456_0.sidemove < 0 and arg_456_0.view_angles.y + 150 or arg_456_0.view_angles.y + 30
	end
end

anonteam_0_47.ui_tables.misc.fastladder_switch:set_callback(function()
	-- function 457
	if anonteam_0_47.ui_tables.misc.fastladder_switch.value then
		events.createmove:set(anonteam_0_60.fast_ladder_func)
	else
		events.createmove:unset(anonteam_0_60.fast_ladder_func)
	end
end, true)

function anonteam_0_60.no_fall_func(arg_458_0)
	-- function 458
	local anonteam_458_0 = anonteam_0_41.ref

	if anonteam_458_0:get_anim_state().on_ladder then
		return
	end

	local anonteam_458_1 = anonteam_458_0.m_fFlags
	local anonteam_458_2 = bit.band(anonteam_458_1, anonteam_0_32.flags.FL_ONGROUND) ~= 0
	local anonteam_458_3 = anonteam_0_43(anonteam_458_0, 1, false, nil, nil, nil, false)
	local anonteam_458_4 = anonteam_0_43(anonteam_458_0, 7, false, nil, nil, nil, false)
	local anonteam_458_5 = anonteam_458_0:get_origin()
	local anonteam_458_6 = utils.trace_hull(anonteam_458_5, vector(anonteam_458_5.x, anonteam_458_5.y, anonteam_458_3.z - 4), anonteam_458_0.m_vecMins, anonteam_458_0.m_vecMaxs, anonteam_458_0, 33636363, 3)

	if not anonteam_458_2 and anonteam_458_6.fraction ~= 1 then
		arg_458_0.in_duck = false
		arg_458_0.in_jump = true
	elseif anonteam_458_0.m_vecVelocity.z < -550 and utils.trace_hull(anonteam_458_5, vector(anonteam_458_5.x, anonteam_458_5.y, anonteam_458_4.z - 4), anonteam_458_0.m_vecMins, anonteam_458_0.m_vecMaxs, anonteam_458_0, 33636363, 3).fraction ~= 1 then
		arg_458_0.in_duck = true
	end
end

anonteam_0_47.ui_tables.misc.fall_switch:set_callback(function()
	-- function 459
	if anonteam_0_47.ui_tables.misc.fall_switch.value then
		events.createmove:set(anonteam_0_60.no_fall_func)
	else
		events.createmove:unset(anonteam_0_60.no_fall_func)
	end
end, true)

anonteam_0_60.cache_clantag = ""
anonteam_0_60.side_switch = true
anonteam_0_60.sync_array = {
	"             ex",
	"            ext",
	"           exte",
	"          exten",
	"         extens",
	"        extensi",
	"       extensio",
	"      extension",
	"     extension ",
	"   extension  ",
	"   extension   ",
	"  extension    ",
	" extension     ",
	"extension      ",
	"extension      ",
	"extension      ",
	"extension      ",
	"extension      ",
	"extension      ",
	"extension      ",
	"extension      ",
	"xtension       ",
	"tension        ",
	"ension         ",
	"nsion          ",
	"sion           ",
	"ion            ",
	"on             ",
	"n              ",
	"               "
}
anonteam_0_60.syncg_array = {
	"             ga",
	"            gam",
	"           game",
	"          games",
	"         gamese",
	"        gamesen",
	"       gamesens",
	"      gamesense",
	"     gamesense ",
	"    gamesense  ",
	"   gamesense   ",
	"  gamesense    ",
	" gamesense     ",
	"gamesense      ",
	"gamesense      ",
	"gamesense      ",
	"gamesense      ",
	"gamesense      ",
	"gamesense      ",
	"gamesense      ",
	"gamesense      ",
	"anesense       ",
	"nesense        ",
	"esense         ",
	"sense          ",
	"ense           ",
	"nse            ",
	"se             ",
	"e              ",
	"               "
}

function anonteam_0_60.clantag_func()
	-- function 460
	if not utils.net_channel() then
		return
	end

	local anonteam_460_0 = (globals.client_tick + globals.clock_offset) / anonteam_0_39(0.6 / globals.tickinterval / 2, 1)
	local anonteam_460_1 = anonteam_0_12(anonteam_460_0 % 30 + 1)

	if not anonteam_0_60.side_switch then
		anonteam_460_1 = 14
	end

	local anonteam_460_2 = anonteam_0_60.sync_array[anonteam_460_1]

	if anonteam_0_60.cache_clantag ~= anonteam_460_2 then
		common.set_clan_tag(anonteam_460_2)

		anonteam_0_60.cache_clantag = anonteam_460_2
	end
end

events.cs_win_panel_match:set(function()
	-- function 461
	if not anonteam_0_47.ui_tables.misc.clantag_switch.value then
		return
	end

	anonteam_0_60.side_switch = false
end)
events.round_start:set(function()
	-- function 462
	anonteam_0_60.side_switch = true
end)
events.announce_phase_end:set(function()
	-- function 463
	anonteam_0_60.side_switch = false
end)
events.cs_game_disconnected:set(function()
	-- function 464
	anonteam_0_60.side_switch = true
end)
anonteam_0_47.ui_tables.misc.clantag_switch:set_callback(function()
	-- function 465
	if not anonteam_0_47.ui_tables.misc.clantag_switch.value then
		events.render:unset(anonteam_0_60.clantag_func)
		anonteam_0_35.clantag:override()
		common.set_clan_tag("")
	else
		events.render:set(anonteam_0_60.clantag_func)
		anonteam_0_35.clantag:override(false)
	end
end, true)
events.shutdown:set(function()
	-- function 466
	common.set_clan_tag("")
	anonteam_0_35.clantag:override()
end)

anonteam_0_60.shared_player_data = {}

ffi.cdef("\n                typedef struct\n                {\n                    int64_t value;\n                } convert_t;\n            ")

function anonteam_0_60.shared_recieve_data(arg_467_0)
	-- function 467
	local anonteam_467_0 = ffi.new("VoiceDataCustom_t")
	local anonteam_467_1 = ffi.new("convert_t")

	anonteam_467_1.value = arg_467_0.xuid

	ffi.copy(anonteam_467_0, anonteam_467_1, ffi.sizeof(anonteam_467_1))

	anonteam_467_0.sequence_bytes = arg_467_0.sequence_bytes
	anonteam_467_0.section_number = arg_467_0.section_number
	anonteam_467_0.uncompressed_sample_offset = arg_467_0.uncompressed_sample_offset

	local anonteam_467_2 = arg_467_0.entity

	id1 = anonteam_467_2:get_index()
	id2 = anonteam_467_2:get_player_info().userid
	id2_string = tostring(id2)
	id3 = anonteam_467_2:get_xuid()
	id3_string = tostring(id3)
	shifr1 = anonteam_467_0.section_number - 1
	shifr2 = anonteam_467_0.xuid_high - 3
	shifr3 = anonteam_467_0.sequence_bytes - id1 - 2 + 2147483648
	p1 = 0
	p2 = 1
	p3 = id2_string:sub(1, 1) + id3_string:sub(#id3_string - 2, #id3_string - 2)

	for iter_467_0 = 1, #id3_string do
		p1 = anonteam_0_40(id3_string:sub(iter_467_0, iter_467_0)) + p1

		if anonteam_0_40(id3_string:sub(iter_467_0, iter_467_0)) > 0 then
			p2 = anonteam_0_40(id3_string:sub(iter_467_0, iter_467_0)) * p2
		end
	end

	sh1 = (p1 + id2 % p1) % 256
	sh2 = (anonteam_0_40(p3) + anonteam_0_40(id3_string:sub(3, 3))) % 256
	sh3 = (p2 + 17) % 4096

	if anonteam_467_2 == anonteam_0_23() and shifr2 % sh2 == 0 or shifr1 % sh1 == 0 and shifr2 % sh2 == 0 and shifr3 % sh3 == 0 then
		anonteam_0_60.shared_player_data[anonteam_467_2:get_index()] = true
	end
end

anonteam_0_60.share_cooldown = 0

function anonteam_0_60.start_share()
	-- function 468
	events.render:set(anonteam_0_60.shared_send_data)
	utils.execute_after(1.5, function()
		-- function 469
		events.render:unset(anonteam_0_60.shared_send_data)
	end)
end

function anonteam_0_60.shared_send_data()
	-- function 470
	if anonteam_0_31.cclientstate.net_channel == 0 then
		return
	end

	if anonteam_0_11(anonteam_0_60.share_cooldown - globals.tickcount) > 15 then
		local anonteam_470_0 = anonteam_0_23()
		local anonteam_470_1 = anonteam_470_0:get_index()
		local anonteam_470_2 = anonteam_470_0:get_player_info().userid
		local anonteam_470_3 = tostring(anonteam_470_2)
		local anonteam_470_4 = anonteam_470_0:get_xuid()
		local anonteam_470_5 = tostring(anonteam_470_4)
		local anonteam_470_6 = math.random(1, 16777216)
		local anonteam_470_7 = math.random(1, 16777216)
		local anonteam_470_8 = anonteam_470_3:sub(1, 1) + anonteam_470_5:sub(#anonteam_470_5 - 2, #anonteam_470_5 - 2)
		local anonteam_470_9 = 1
		local anonteam_470_10 = 0
		local anonteam_470_11 = math.random(1, 1048576)

		for iter_470_0 = 1, #anonteam_470_5 do
			anonteam_470_10 = anonteam_0_40(anonteam_470_5:sub(iter_470_0, iter_470_0)) + anonteam_470_10

			if anonteam_0_40(anonteam_470_5:sub(iter_470_0, iter_470_0)) > 0 then
				anonteam_470_9 = anonteam_0_40(anonteam_470_5:sub(iter_470_0, iter_470_0)) * anonteam_470_9
			end
		end

		local anonteam_470_12 = (anonteam_470_9 + 17) % 4096
		local anonteam_470_13 = ffi.new("VoiceDataCustom_t")

		anonteam_470_13.xuid_low = math.random(1, 4294967296)
		anonteam_470_13.xuid_high = (anonteam_0_40(anonteam_470_8) + anonteam_0_40(anonteam_470_5:sub(3, 3))) % 256 * anonteam_470_7 + 3
		anonteam_470_13.sequence_bytes = anonteam_470_12 * anonteam_470_11 + anonteam_470_1 + 2 - 2147483648
		anonteam_470_13.section_number = (anonteam_470_10 + anonteam_470_2 % anonteam_470_10) % 256 * anonteam_470_6 + 1
		anonteam_470_13.uncompressed_sample_offset = math.random(1, 4294967296)

		anonteam_0_31.voice_message(anonteam_470_13)

		anonteam_0_60.share_cooldown = globals.tickcount
	end
end

function anonteam_0_60.shared_controller()
	-- function 471
	anonteam_0_60.shared_player_data = {}

	events.voice_message:set(anonteam_0_60.shared_recieve_data)
	utils.execute_after(1, function()
		-- function 472
		events.voice_message:unset(anonteam_0_60.shared_recieve_data)
		anonteam_0_60.render_shared_icon()
	end)
end

function anonteam_0_60.render_shared_icon()
	-- function 473
	local anonteam_473_0 = entity.get_players(nil, true)

	for iter_473_0 = 1, #anonteam_473_0 do
		local anonteam_473_1 = anonteam_473_0[iter_473_0]

		if not anonteam_473_1 then
			-- block empty
		else
			local anonteam_473_2 = anonteam_473_1:get_index()

			if anonteam_0_60.shared_player_data[anonteam_473_2] then
				anonteam_473_1:set_icon("file://{images}/icons/extension/shared_icon.png")
			else
				anonteam_473_1:set_icon()
			end
		end
	end
end

events.player_connect_full:set(function()
	-- function 474
	anonteam_0_60.start_share()
end, true)
events.round_start:set(function()
	-- function 475
	anonteam_0_60.start_share()
end, true)
anonteam_0_47.ui_tables.misc.shared_switch:set_callback(function()
	-- function 476
	if anonteam_0_47.ui_tables.misc.shared_switch.value then
		events.player_connect_full:set(anonteam_0_60.shared_controller)
		events.round_start:set(anonteam_0_60.shared_controller)
		anonteam_0_60.shared_controller()
		anonteam_0_60.start_share()
	else
		events.player_connect_full:unset(anonteam_0_60.shared_controller)
		events.round_start:unset(anonteam_0_60.shared_controller)

		local anonteam_476_0 = entity.get_players(nil, true)

		for iter_476_0 = 1, #anonteam_476_0 do
			local anonteam_476_1 = anonteam_476_0[iter_476_0]

			if not anonteam_476_1 then
				-- block empty
			else
				anonteam_476_1:set_icon()
			end
		end
	end
end, true)
events.shutdown:set(function()
	-- function 477
	local anonteam_477_0 = entity.get_players(nil, true)

	for iter_477_0 = 1, #anonteam_477_0 do
		local anonteam_477_1 = anonteam_477_0[iter_477_0]

		if not anonteam_477_1 then
			-- block empty
		else
			anonteam_477_1:set_icon()
		end
	end
end)
anonteam_0_47.ui_tables.misc.ping_switch:set_callback(function()
	-- function 478
	if anonteam_0_47.ui_tables.misc.ping_switch.value then
		cvar.sv_maxunlag:float(0.4)
		anonteam_0_35.ping:override(anonteam_0_47.ui_tables.misc.ping_slider.value)
		anonteam_0_35.ping:disabled(true)
	else
		cvar.sv_maxunlag:float(0.2)
		anonteam_0_35.ping:override()
		anonteam_0_35.ping:disabled(false)
	end
end, true)
anonteam_0_47.ui_tables.misc.ping_slider:set_callback(function()
	-- function 479
	if anonteam_0_47.ui_tables.misc.ping_switch.value then
		anonteam_0_35.ping:override(anonteam_0_47.ui_tables.misc.ping_slider.value)
	end
end)

anonteam_0_60.trash_enemy_head = {
	counter = 1,
	phrase = {
		"\xD1\x85\xD1\x83\xD0\xBB\xD0\xB8 \xD1\x82\xD1\x8B \xD0\xB2\xD1\x8B\xD0\xBB\xD1\x83\xD0\xBF\xD0\xB8\xD0\xBB\xD1\x81\xD1\x8F \xD0\xB1\xD0\xB5\xD0\xB6\xD0\xB0\xD1\x82\xD1\x8C \xD0\xBD\xD0\xB0\xD0\xB4\xD0\xBE \xD0\xB1\xD1\x8B\xD0\xBB\xD0\xBE",
		"\xD0\xA5\xD1\x83\xD0\xB9 \xD1\x82\xD0\xB5 \xD0\xB2 \xD1\x80\xD0\xBE\xD1\x82",
		"\xD0\xBC\xD0\xB5\xD0\xBD\xD1\x8F\xD0\xB9 \xD0\xBB\xD1\x83\xD0\xB0\xD1\x85\xD1\x83 \xD0\xB2 \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F \xD0\xBF\xD0\xBE\xD0\xBF\xD0\xB0\xD0\xBB\xD0\xB8",
		"\xD0\xB5\xD0\xB1\xD0\xB0\xD1\x82\xD1\x8C \xD1\x82\xD1\x8B \xD0\xBD\xD0\xBE\xD1\x81\xD0\xBE\xD0\xBC \xD0\xBF\xD1\x80\xD0\xBE\xD0\xBF\xD0\xB0\xD1\x85\xD0\xB0\xD0\xBB",
		"\xD0\x95\xD0\xB1\xD0\xB0\xD1\x82\xD1\x8C \xD0\xA1\xD0\xB0\xD0\xBC@\xD1\x80\xD1\x81\xD0\xBA\xD0\xB8\xD0\xB9 \xD0\xBF\xD1\x80\xD0\xBE\xD0\xB4\xD1\x83\xD0\xBA\xD1\x82 \xD0\xBF\xD0\xB5\xD1\x80\xD0\xB5\xD0\xB7\xD0\xB0\xD0\xB3\xD1\x80\xD1\x83\xD0\xB7\xD0\xB8\xD0\xBB \xD1\x80\xD0\xB5c\xD0\xBE\xD0\xBB\xD1\x8C\xD0\xB2\xD0\xB5\xD1\x80",
		"\xD1\x8D\xD1\x82\xD0\xBE\xD1\x82 \xD0\x9A\xD0\x90\xD0\x9D\xD0\x93\xD0\x90\xD0\x9B \xD0\xBF\xD1\x80\xD0\xB5\xD1\x81\xD0\xB5\xD1\x82 \xD1\x82\xD0\xB2\xD0\xBE\xD0\xB5 \xD1\x85\xD1\x80\xD1\x8E\xD1\x87\xD0\xB5\xD0\xB2\xD0\xBE \xD0\xBA\xD0\xB8\xD0\xBB\xD0\xBE\xD0\xBC\xD0\xB5\xD1\x82\xD1\x80 \xD0\xBD\xD0\xB0 \xD0\xBA\xD0\xB8\xD0\xBB\xD0\xBE\xD0\xBC\xD0\xB5\xD1\x82\xD1\x80 \xD1\x80\xD0\xB0\xD1\x81\xD1\x82\xD1\x8F\xD0\xBD\xD1\x83\xD0\xBB\xD0\xBE",
		{
			"log",
			"\xD0\xB5\xD0\xB1\xD0\xB0\xD1\x82\xD1\x8C \xD0\xB2 \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F \xD0\xB2\xD1\x8B\xD0\xB1\xD0\xB8\xD0\xB2\xD0\xB0\xD0\xB5\xD1\x82"
		},
		"\xD0\xA4\xD1\x80\xD0\xB8\xD1\x81\xD1\x82\xD1\x8D\xD0\xBD\xD0\xB4 \xD0\xBF\xD0\xB0\xD1\x85\xD0\xBE\xD0\xB4\xD1\x83 \xD0\xBD\xD0\xB5 \xD1\x81\xD0\xBF\xD0\xB0\xD1\x81",
		"\xD0\xB5\xD0\xB1\xD0\xB0\xD1\x82\xD1\x8C \xD0\xBA\xD1\x83\xD0\xBF\xD0\xB8 \xD0\xA1\xD0\x90\xD0\x9C\xD0\x9E\xD0\x92\xD0\x90\xD0\xA0 \xD0\xBB\xD1\x83\xD1\x87\xD1\x88\xD0\xB5 \xD0\xBE\xD1\x82\xD1\x8B\xD0\xB3\xD1\x80\xD1\x8B\xD0\xB2\xD0\xB0\xD1\x82\xD1\x8C \xD0\xB1\xD1\x83\xD0\xB4\xD0\xB5\xD1\x88\xD1\x8C \xD1\x81\xD0\xBB\xD0\xB0\xD0\xB1\xD1\x8B\xD0\xB9",
		"\xD0\x9B\xD0\xBE\xD0\xB2\xD0\xB8 \xD0\xB2 \xD0\xB4\xD1\x8B\xD0\xBD\xD1\x8E",
		{
			"\xD0\xA3 \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F \xD0\xBA\xD0\xBE\xD0\xBB\xD0\xB5\xD0\xBD\xD0\xB8 \xD0\xBF\xD0\xBE\xD0\xB4\xD0\xBA\xD0\xBE\xD1\x81\xD0\xB8\xD0\xBB\xD0\xB8\xD1\x81\xD1\x8C",
			"\xD0\xA7\xD0\xB5 \xD0\xBD\xD0\xBE\xD0\xB3\xD0\xB8 \xD0\xBD\xD0\xB5 \xD0\xB4\xD0\xB5\xD1\x80\xD0\xB6\xD1\x83\xD1\x82?"
		},
		"\xD1\x83\xD1\x85 \xD1\x82\xD1\x8B \xD1\x80\xD0\xB0\xD1\x81\xD1\x82\xD0\xB5\xD0\xBD\xD0\xB8\xD0\xB5 \xD0\xB5\xD0\xBF\xD1\x82",
		{
			"\xD1\x84\xD0\xBB\xD0\xB8\xD0\xBF\xD1\x83 \xD0\xB7\xD0\xB0\xD0\xB4\xD0\xBE\xD0\xBD\xD0\xB8\xD0\xBB \xD0\xB8 \xD1\x88\xD0\xB0\xD1\x80\xD1\x8B \xD0\xB2\xD1\x8B\xD0\xBB\xD1\x83\xD0\xBF\xD0\xB8\xD0\xBB \xD0\xBD\xD0\xB0 \xD1\x80\xD1\x83\xD0\xBB\xD0\xB5\xD1\x82\xD0\xBA\xD1\x83",
			"\xD1\x82\xD1\x8B \xD0\xB6\xD0\xB0\xD0\xBB\xD0\xBE\xD0\xBA"
		},
		"\xD1\x89\xD0\xB0 \xD0\xB5\xD0\xB1\xD1\x83 \xD1\x82\xD1\x8F",
		"\xD0\xBE\xD1\x87\xD0\xBA\xD0\xB8 \xD0\xBA\xD1\x83\xD0\xBF\xD0\xB8 \xD1\x87\xD0\xBC\xD1\x8B\xD1\x80\xD1\x8C \xD1\x82\xD1\x83\xD0\xBF\xD0\xBE\xD0\xB3\xD0\xBE\xD0\xBB\xD0\xBE\xD0\xB2\xD1\x8B\xD0\xB9",
		"1 \xD1\x81\xD1\x8B\xD0\xBD \xD0\xB4\xD0\xB2\xD0\xBE\xD1\x80\xD0\xBD\xD1\x8F\xD0\xB3\xD0\xB8",
		"\xD1\x83\xD1\x88\xD0\xB8 \xD0\xBD\xD0\xB0\xD0\xB7\xD0\xB0\xD0\xB4 \xD0\xBF\xD1\x80\xD0\xB8\xD0\xBA\xD1\x80\xD1\x83\xD1\x82\xD0\xB8\xD1\x82\xD1\x8C \xD0\xBD\xD0\xB5 \xD0\xB7\xD0\xB0\xD0\xB1\xD1\x83\xD0\xB4\xD1\x8C",
		"\xD0\xB7\xD0\xB0\xD0\xBF\xD0\xBE\xD0\xBC\xD0\xBD\xD0\xB8 Extension \xD1\x8D\xD1\x82\xD0\xBE \xD0\xB2\xD0\xB5\xD1\x80\xD1\x85 \xD1\x81\xD0\xBE\xD0\xB2\xD0\xB5\xD1\x80\xD1\x88\xD0\xB5\xD0\xBD\xD1\x81\xD1\x82\xD0\xB2\xD0\xB0",
		{
			"\xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBD\xD1\x83\xD1\x82\xD0\xB0\xD1\x8F \xD0\xBB\xD1\x83\xD0\xB0",
			"\xD0\xBD\xD0\xB5 \xD0\xB4\xD1\x83\xD0\xBC\xD0\xB0\xD0\xBB \xD1\x87\xD1\x82\xD0\xBE \xD0\xBE\xD0\xBD\xD0\xB0 \xD1\x82\xD0\xB0\xD0\xBA \xD0\xB1\xD1\x83\xD1\x81\xD1\x82\xD0\xB8\xD1\x82"
		},
		"\xD0\x9C\xD0\xBE\xD0\xBB\xD1\x87\xD0\xB0 \xD0\xB8\xD0\xB3\xD1\x80\xD0\xB0\xD0\xB9 \xD0\xB4\xD0\xBE\xD0\xBB\xD0\xB1\xD0\xB0\xD0\xB5\xD0\xB1",
		"\xD0\x9F\xD0\xBE \xD0\xB5\xD0\xB1\xD0\xBB\xD1\x83 \xD1\x82\xD0\xB5\xD0\xB1\xD0\xB5 \xD1\x88\xD0\xB0\xD0\xBB\xD0\xB0\xD1\x88\xD0\xBE\xD0\xB2\xD0\xBA\xD0\xB0 \xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBD\xD0\xB0\xD1\x8F",
		"\xD0\xB5\xD0\xB1\xD0\xB0\xD1\x82\xD1\x8C \xD1\x82\xD1\x8B \xD0\xBA\xD0\xB0\xD0\xBA \xD1\x82\xD0\xB0\xD0\xBA\xD0\xBE\xD0\xB9 \xD1\x85\xD1\x83\xD0\xB5\xD0\xB2\xD1\x8B\xD0\xB9 \xD0\xBD\xD0\xB8\xD0\xBA \xD0\xB2\xD1\x8B\xD0\xB4\xD1\x83\xD0\xBC\xD0\xB0\xD0\xBB",
		"\xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F \xD0\xBF\xD0\xB5\xD1\x80\xD0\xB5\xD0\xB8\xD0\xB3\xD1\x80\xD0\xB0\xD1\x82\xD1\x8C \xD0\xB4\xD0\xB0\xD0\xB6\xD0\xB5 \xD1\x81 \xD0\xB2\xD1\x8B\xD0\xBA\xD0\xBB\xD1\x8E\xD1\x87\xD0\xB5\xD0\xBD\xD1\x8B\xD0\xBC \xD0\xBC\xD0\xBE\xD0\xBD\xD0\xB8\xD0\xBA\xD0\xBE\xD0\xBC \xD0\xBC\xD0\xBE\xD0\xB6\xD0\xBD\xD0\xBE",
		"\xD0\xBC\xD0\xB4\xD0\xB0 \xD1\x82\xD0\xB0\xD0\xBA\xD0\xBE\xD0\xB9 \xD1\x81\xD0\xBB\xD0\xB0\xD0\xB1\xD0\xBE\xD1\x81\xD1\x82\xD0\xB8 \xD1\x8F \xD0\xB5\xD1\x89\xD0\xB5 \xD0\xBD\xD0\xB5 \xD0\xB2\xD0\xB8\xD0\xB4\xD0\xB5\xD0\xBB",
		{
			"death",
			"\xD0\x98\xD0\xB7 \xD0\xB4\xD0\xB5\xD0\xB4\xD0\xB0 \xD0\xBF\xD0\xBE\xD0\xB2\xD1\x8B\xD0\xBF\xD0\xB8\xD1\x81\xD1\x8B\xD0\xB2\xD0\xB0\xD0\xB9 \xD0\xBC\xD0\xBD\xD0\xB5 \xD0\xB5\xD1\x89\xD0\xB5",
			"\xD1\x84\xD1\x80\xD0\xB8\xD0\xB1\xD0\xB5\xD1\x82 \xD1\x85\xD0\xBE\xD0\xB4\xD1\x8F\xD1\x87\xD0\xB8\xD0\xB9"
		},
		{
			"\xD0\x92\xD1\x80\xD0\xB5\xD0\xBC\xD1\x8F \xD0\xB2\xD0\xB8\xD0\xB4\xD0\xB5\xD0\xBB?",
			"\xD0\x9E\xD1\x82\xD0\xB1\xD0\xBE\xD0\xB9 \xD0\xBF\xD0\xB8\xD0\xB4\xD0\xBE\xD1\x80\xD0\xB0\xD1\x81"
		},
		{
			"\xD1\x82\xD1\x83\xD0\xBF\xD0\xBE\xD0\xB9 \xD1\x83\xD0\xB2\xD0\xBE\xD0\xBB\xD0\xB5\xD0\xBD\xD1\x8C",
			"1.         "
		},
		"\xD0\xB0\xD0\xBB\xD0\xBE \xD0\xB1\xD0\xB0\xD1\x80\xD0\xB0\xD0\xB1\xD0\xB0\xD0\xBD \xD0\xB8\xD0\xB3\xD1\x80\xD0\xB0\xD1\x82\xD1\x8C \xD0\xB1\xD1\x83\xD0\xB4\xD0\xB5\xD0\xBC?",
		"\xD0\xB8\xD0\xB7\xD0\xB8 \xD0\xBA\xD0\xB4 \xD0\xBD\xD0\xBE\xD1\x80\xD0\xBC \xD0\xB5\xD0\xB1\xD1\x83 \xD0\xB1\xD0\xBE\xD1\x82\xD0\xB0 \xD0\xBD\xD0\xB0 \xD0\xBC\xD0\xB5\xD0\xB4\xD0\xB8\xD1\x8E",
		{
			"\xD0\xB4\xD0\xB0\xD0\xB2\xD0\xB0\xD0\xB9 \xD1\x81\xD0\xBA\xD0\xB0\xD0\xB6\xD0\xB8 \xD0\xBA\xD0\xB0\xD0\xBA\xD0\xBE\xD0\xB9 \xD1\x87\xD0\xB8\xD1\x82 \xD1\x85\xD1\x83\xD0\xB5\xD0\xB2\xD1\x8B\xD0\xB9",
			"\xD0\xBC\xD0\xB1 \xD0\xBF\xD0\xBE\xD0\xB2\xD0\xB5\xD1\x80\xD1\x8E"
		},
		"\xD0\xBD\xD0\xB8\xD1\x85\xD1\x83\xD1\x8F \xD1\x8F \xD1\x82\xD0\xB5\xD0\xB1\xD0\xB5 \xD0\xB3\xD0\xBB\xD0\xB0\xD0\xB7\xD0\xB0 \xD0\xB2\xD0\xB4\xD0\xB0\xD0\xB2\xD0\xB8\xD0\xBB \xD0\xB2 \xD1\x87\xD0\xB5\xD1\x80\xD0\xB5\xD0\xBF",
		"\xD1\x82\xD1\x8B \xD0\xBF\xD0\xBE\xD1\x85\xD0\xBE\xD0\xB4\xD1\x83 \xD0\xBA\xD0\xBE\xD0\xBD\xD0\xB4\xD0\xB8\xD1\x86\xD0\xB8\xD1\x8E \xD0\xBF\xD0\xB5\xD1\x80\xD0\xB5\xD0\xB3\xD1\x80\xD0\xB5\xD0\xBB",
		{
			"CHERNOBYL.LUA | New Defensive Exploit",
			"\xD1\x82\xD1\x8B \xD1\x81 \xD1\x8D\xD1\x82\xD0\xBE\xD0\xB9 \xD1\x85\xD1\x83\xD0\xB9\xD0\xBD\xD0\xB5\xD0\xB9 \xD0\xBC\xD0\xBD\xD0\xB5 \xD0\xBE\xD1\x82\xD1\x81\xD0\xB0\xD1\x81\xD1\x8B\xD0\xB2\xD0\xB0\xD0\xB5\xD1\x88\xD1\x8C ?"
		},
		"\xD1\x81\xD1\x82\xD1\x80\xD0\xB0\xD1\x88\xD0\xBD\xD0\xBE \xD0\xBF\xD0\xBE\xD0\xB4\xD1\x83\xD0\xBC\xD0\xB0\xD1\x82\xD1\x8C \xD1\x81 \xD0\xBA\xD0\xB0\xD0\xBA\xD0\xB8\xD0\xBC \xD0\xB3\xD0\xBE\xD0\xB2\xD0\xBD\xD0\xBE\xD0\xBC \xD1\x82\xD1\x8B \xD1\x82\xD0\xB0\xD0\xBC \xD0\xB8\xD0\xB3\xD1\x80\xD0\xB0\xD0\xB5\xD1\x88\xD1\x8C",
		{
			"\xD1\x87\xD0\xB5 \xD1\x8D\xD1\x82\xD0\xBE \xD0\xB1\xD1\x8B\xD0\xBB\xD0\xBE",
			"\xD0\xBE\xD0\xBF\xD1\x8F\xD1\x82\xD1\x8C \xD1\x85\xD1\x83\xD0\xB5\xD0\xB2\xD0\xB0\xD1\x8F \xD0\xBF\xD0\xBE\xD0\xBF\xD1\x8B\xD1\x82\xD0\xBA\xD0\xB0 \xD1\x83\xD0\xB1\xD0\xB8\xD1\x82\xD1\x8C \xD0\xBC\xD0\xB5\xD0\xBD\xD1\x8F"
		},
		"\xD1\x85\xD1\x8D\xD0\xB9 \xD0\xB3\xD0\xB0\xD0\xB9\xD1\x81 \xD1\x83 \xD0\xB1\xD0\xB8\xD1\x87\xD0\xB0 \xD0\xB2\xD1\x81\xD0\xB5 \xD0\xBD\xD0\xB0\xD0\xB9\xD1\x81",
		"???",
		{
			"\xD1\x82\xD1\x8B \xD0\xB0\xD1\x84\xD0\xBA \xD0\xB8\xD0\xBB\xD0\xB8 \xD1\x87\xD0\xB5?",
			"\xD0\xB0 \xD1\x82\xD0\xBE \xD1\x85\xD1\x83\xD0\xB9 \xD0\xBF\xD0\xBE\xD0\xB9\xD0\xBC\xD0\xB5\xD1\x88\xD1\x8C \xD1\x82\xD0\xBE \xD0\xBC\xD1\x83\xD0\xB2\xD0\xB0\xD0\xB5\xD1\x82\xD1\x81\xD1\x8F \xD1\x82\xD0\xBE \xD1\x87\xD0\xB5\xD1\x82 \xD1\x81\xD0\xB8\xD0\xB4\xD0\xB8\xD1\x82 \xD0\xB4\xD1\x80\xD0\xBE\xD1\x87\xD0\xB8\xD1\x82.",
			"\xD0\xBA\xD0\xBE\xD1\x80\xD0\xBE\xD1\x87\xD0\xB5 \xD0\xBF\xD0\xBE\xD1\x81\xD0\xBF\xD0\xBE\xD1\x80\xD1\x82\xD0\xB8\xD0\xB2\xD0\xBD\xD0\xB5\xD0\xB9 \xD0\xBF\xD0\xBE \xD0\xBF\xD0\xB0\xD0\xB1\xD0\xBB\xD0\xBE\xD1\x81\xD1\x83 \xD0\xBF\xD0\xB5\xD1\x80\xD0\xB5\xD0\xB4\xD0\xB2\xD0\xB8\xD0\xB3\xD0\xB0\xD0\xB9\xD1\x81\xD1\x8F"
		},
		{
			"\xD1\x8F \xD1\x85\xD1\x83\xD0\xB9 \xD0\xBF\xD0\xBE\xD0\xB9\xD0\xBC\xD1\x83 \xD1\x82\xD1\x8B \xD1\x87\xD0\xB5 \xD1\x81 \xD0\xB4\xD0\xB6\xD0\xBE\xD1\x81\xD1\x82\xD0\xB8\xD0\xBA\xD0\xB0 \xD1\x87\xD1\x82\xD0\xBE \xD0\xBB\xD0\xB8 \xD0\xBF\xD0\xBB\xD0\xB5\xD0\xB8\xD1\x88\xD1\x8C ?",
			"\xD1\x87\xD0\xB5 \xD1\x82\xD0\xBE \xD1\x82\xD0\xB0\xD0\xBC \xD0\xBD\xD0\xB0\xD0\xB8\xD1\x81\xD0\xBA\xD0\xBE\xD1\x81\xD0\xBE\xD0\xBA \xD1\x82\xD1\x83\xD0\xB4\xD0\xB0 \xD1\x81\xD1\x8E\xD0\xB4\xD0\xB0 \xD0\xBF\xD1\x80\xD1\x8B\xD0\xB3\xD0\xB0\xD0\xB5\xD1\x82"
		},
		{
			"neverlose.cc\\market\\item?id=bkRCJa",
			"\xD0\xBF\xD1\x80\xD0\xB8\xD0\xBA\xD1\x83\xD0\xBF\xD0\xB8 \xD0\xBC\xD0\xB1 \xD0\xBF\xD0\xBE\xD0\xBB\xD0\xB5\xD0\xB3\xD1\x87\xD0\xB5 \xD1\x81\xD1\x82\xD0\xB0\xD0\xBD\xD0\xB5\xD1\x82"
		},
		"\xD0\x9D\xD1\x83 \xD0\xBD\xD0\xB8\xD1\x87\xD0\xB5 \xD0\xB2 \xD0\xBD\xD0\xB5\xD0\xBA\xD1\x81\xD1\x82 \xD1\x80\xD0\xB0\xD1\x83\xD0\xBD\xD0\xB4\xD0\xB5 \xD0\xBF\xD0\xBE\xD0\xBF\xD1\x8B\xD1\x82\xD0\xB0\xD0\xB5\xD1\x88\xD1\x8C\xD1\x81\xD1\x8F",
		{
			"\xD1\x82\xD1\x8B \xD1\x82\xD0\xB8\xD0\xBF\xD0\xBE \xD0\xBD\xD0\xB0 \xD0\xB0\xD0\xB2\xD0\xBF \xD0\xBA\xD0\xBE\xD0\xBF\xD0\xB8\xD1\x88\xD1\x8C \xD0\xB8\xD0\xBB\xD0\xB8 \xD0\xB2 \xD1\x87\xD0\xB5\xD0\xBC \xD0\xBF\xD1\x80\xD0\xB5\xD0\xBA ?",
			"\xD1\x84\xD0\xB8\xD0\xBD\xD0\xB0\xD0\xBD\xD1\x81\xD0\xB8\xD1\x81\xD1\x82 \xD1\x85\xD1\x80\xD0\xB5\xD0\xBD\xD0\xBE\xD0\xB2"
		},
		"\xD1\x82\xD1\x8B \xD0\xBF\xD1\x80\xD0\xBE\xD1\x81\xD1\x82\xD0\xBE \xD1\x82\xD1\x80\xD0\xB0\xD1\x82\xD0\xB8\xD1\x88\xD1\x8C \xD0\xB2\xD1\x80\xD0\xB5\xD0\xBC\xD1\x8F",
		"\xD0\xB7\xD0\xB0\xD1\x87\xD0\xB5\xD0\xBC \xD1\x82\xD1\x8B \xD0\xB2\xD0\xBE\xD0\xBE\xD0\xB1\xD1\x89\xD0\xB5 \xD1\x81\xD1\x83\xD1\x89\xD0\xB5\xD1\x81\xD1\x82\xD0\xB2\xD1\x83\xD0\xB5\xD1\x88\xD1\x8C?",
		"\xD0\xA2\xD1\x8B \xD0\xB2\xD0\xBE\xD0\xBE\xD0\xB1\xD1\x89\xD0\xB5 \xD0\xBF\xD0\xBE\xD0\xBD\xD0\xB8\xD0\xBC\xD0\xB0\xD0\xB5\xD1\x88\xD1\x8C \xD1\x87\xD1\x82\xD0\xBE \xD1\x82\xD0\xB0\xD0\xBA\xD0\xBE\xD0\xB5 \xD0\xB8\xD0\xB3\xD1\x80\xD0\xB0 \xD0\xB8\xD0\xBB\xD0\xB8 \xD0\xBF\xD1\x80\xD0\xBE\xD1\x81\xD1\x82\xD0\xBE \xD0\xBA\xD0\xBD\xD0\xBE\xD0\xBF\xD0\xBA\xD0\xB8 \xD0\xB6\xD0\xBC\xD0\xB5\xD1\x88\xD1\x8C?",
		"\xD0\xA1\xD0\xBB\xD0\xB5\xD0\xB4\xD1\x83\xD1\x8E\xD1\x89\xD0\xB8\xD0\xB9 \xD0\xB0\xD0\xB0 \xD0\xBF\xD1\x80\xD0\xB5\xD1\x81\xD0\xB5\xD1\x82 \xD0\xB2 \xD1\x81\xD1\x82\xD1\x83\xD0\xB4\xD0\xB8\xD1\x8E !"
	}
}
anonteam_0_60.trash_enemy_head.counter = utils.random_int(1, #anonteam_0_60.trash_enemy_head.phrase)
anonteam_0_60.trash_enemy_body = {
	counter = 1,
	phrase = {
		"\xD1\x85\xD0\xBE\xD1\x8F\xD1\x84 \xD1\x85\xD1\x83\xD0\xB9\xD0\xBF\xD0\xB0\xD1\x87\xD0\xB5\xD0\xBB\xD0\xB8\xD1\x8F\xD0\xAD\xD0\xBB\xD0\xB8\xD1\x82 \xD0\xBC\xD0\xBE\xD0\xB9\xD0\xBA\xD1\x80\xD0\xB0\xD0\xB9 \xD0\xBA\xD0\xB0\xD0\xBA\xD0\xB8\xD0\xB5 \xD0\xB5\xD1\x89\xD0\xB5 \xD0\xBB\xD1\x83\xD0\xB0 \xD1\x82\xD0\xB5\xD0\xB1\xD0\xB5 \xD0\xBD\xD0\xB0\xD0\xB4\xD0\xBE \xD0\xBA\xD1\x83\xD0\xBF\xD0\xB8\xD1\x82\xD1\x8C \xD1\x87\xD1\x82\xD0\xBE\xD0\xB1 \xD0\xB2 \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F \xD0\xBD\xD0\xB5 \xD0\xBF\xD0\xBE\xD0\xBF\xD0\xB0\xD0\xB4\xD0\xB0\xD0\xBB\xD0\xB8",
		{
			"\xD0\xB5\xD0\xB1\xD0\xB0\xD1\x82\xD1\x8C \xD1\x8F \xD0\xB4\xD0\xB0\xD0\xB1\xD0\xBB\xD1\x82\xD0\xB0\xD0\xBF \xD0\xBD\xD0\xB0 \xD0\xBF\xD0\xB5\xD0\xB4\xD0\xB0\xD0\xBB\xD0\xB8 \xD0\xB7\xD0\xB0\xD0\xB1\xD0\xB8\xD0\xBD\xD0\xB4\xD0\xB8\xD0\xBB",
			"\xD0\xB8\xD0\xBC\xD0\xB1\xD0\xB0 \xD0\xBD\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9"
		},
		"\xD0\x95\xD0\xB1\xD0\xB0\xD1\x82\xD1\x8C \xD1\x82\xD1\x8B \xD1\x80\xD0\xB0\xD1\x81\xD1\x81\xD1\x8B\xD0\xBF\xD0\xB0\xD0\xBB\xD1\x81\xD1\x8F",
		"1.",
		"\xD0\xBF\xD1\x80\xD0\xBE\xD1\x81\xD0\xBA\xD1\x83\xD0\xBB\xD0\xB8 \xD0\xB2 \xD1\x87\xD0\xB0\xD1\x82 \xD0\xBA\xD0\xB0\xD0\xBA \xD0\xB6\xD0\xB5 \xD1\x82\xD0\xB5\xD0\xB1\xD0\xB5 \xD0\xBF\xD0\xBB\xD0\xBE\xD1\x85\xD0\xBE \xD0\xB8\xD0\xB3\xD1\x80\xD0\xB0\xD1\x82\xD1\x8C \xD1\x81 \xD1\x8D\xD1\x82\xD0\xB8\xD0\xBC \xD1\x87\xD0\xB8\xD1\x82\xD0\xBE\xD0\xBC",
		"-_HS_-",
		{
			"death",
			"\xD0\x98\xD0\xB7 \xD0\xB4\xD0\xB5\xD0\xB4\xD0\xB0 \xD0\xBF\xD0\xBE\xD0\xB2\xD1\x8B\xD0\xBF\xD0\xB8\xD1\x81\xD1\x8B\xD0\xB2\xD0\xB0\xD0\xB9 \xD0\xBC\xD0\xBD\xD0\xB5 \xD0\xB5\xD1\x89\xD0\xB5",
			"\xD1\x84\xD1\x80\xD0\xB8\xD0\xB1\xD0\xB5\xD1\x82 \xD1\x85\xD0\xBE\xD0\xB4\xD1\x8F\xD1\x87\xD0\xB8\xD0\xB9"
		},
		"\xD0\xBD\xD0\xB0 \xD0\xBD\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9 \xD0\xBF\xD0\xB8\xD0\xB4\xD0\xBE\xD1\x80 \xD0\xB4\xD1\x8B\xD1\x80\xD1\x8F\xD0\xB2\xD1\x8B\xD0\xB9",
		"\xD0\x92 \xD1\x81\xD0\xBB\xD0\xB5\xD0\xB4\xD1\x83\xD1\x89\xD0\xB8\xD0\xB9 \xD1\x80\xD0\xB0\xD0\xB7 \xD0\xB8\xD1\x81\xD0\xBF\xD0\xBE\xD0\xBB\xD1\x8C\xD0\xB7\xD1\x83\xD0\xB9 wasd",
		{
			"\xD1\x87\xD0\xB5",
			"\xD0\xB5\xD0\xB1\xD0\xB0\xD1\x82\xD1\x8C \xD1\x82\xD1\x8B \xD1\x82\xD1\x8E\xD0\xB1\xD0\xB8\xD0\xBA"
		},
		{
			"CHERNOBYL.LUA | New Defensive Exploit",
			"\xD1\x82\xD1\x8B \xD1\x81 \xD1\x8D\xD1\x82\xD0\xBE\xD0\xB9 \xD1\x85\xD1\x83\xD0\xB9\xD0\xBD\xD0\xB5\xD0\xB9 \xD0\xBC\xD0\xBD\xD0\xB5 \xD0\xBE\xD1\x82\xD1\x81\xD0\xB0\xD1\x81\xD1\x8B\xD0\xB2\xD0\xB0\xD0\xB5\xD1\x88\xD1\x8C ?"
		},
		"\xD0\x9D\xD0\xB0 \xD0\xBD\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9",
		{
			"\xD1\x8F \xD1\x85\xD1\x83\xD0\xB9 \xD0\xBF\xD0\xBE\xD0\xB9\xD0\xBC\xD1\x83 \xD1\x82\xD1\x8B \xD1\x87\xD0\xB5 \xD1\x81 \xD0\xB4\xD0\xB6\xD0\xBE\xD1\x81\xD1\x82\xD0\xB8\xD0\xBA\xD0\xB0 \xD1\x87\xD1\x82\xD0\xBE \xD0\xBB\xD0\xB8 \xD0\xBF\xD0\xBB\xD0\xB5\xD0\xB8\xD1\x88\xD1\x8C ?",
			"\xD1\x87\xD0\xB5 \xD1\x82\xD0\xBE \xD1\x82\xD0\xB0\xD0\xBC \xD0\xBD\xD0\xB0\xD0\xB8\xD1\x81\xD0\xBA\xD0\xBE\xD1\x81\xD0\xBE\xD0\xBA \xD1\x82\xD1\x83\xD0\xB4\xD0\xB0 \xD1\x81\xD1\x8E\xD0\xB4\xD0\xB0 \xD0\xBF\xD1\x80\xD1\x8B\xD0\xB3\xD0\xB0\xD0\xB5\xD1\x82"
		},
		"\xD0\x9D\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9 \xD1\x82\xD1\x8B \xD0\xB2\xD0\xBE\xD0\xBE\xD0\xB1\xD1\x89\xD0\xB5 \xD1\x81\xD1\x8E\xD0\xB4\xD0\xB0 \xD0\xB7\xD0\xB0\xD1\x88\xD0\xB5\xD0\xBB",
		{
			"\xD0\x94\xD0\xBB\xD1\x8F \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F \xD0\xBC\xD0\xB0\xD1\x80\xD1\x88\xD1\x80\xD1\x83\xD1\x82 \xD0\xBF\xD0\xBE\xD1\x81\xD1\x82\xD1\x80\xD0\xBE\xD0\xB5\xD0\xBD",
			"\xD1\x81\xD1\x8A\xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBB \xD1\x81 \xD0\xB3\xD0\xBB\xD0\xB0\xD0\xB7 \xD0\xBC\xD0\xBE\xD0\xB8\xD1\x85"
		},
		"\xD0\xA7\xD0\xB5 \xD1\x81\xD0\xBF\xD0\xB8\xD0\xBD\xD1\x83 \xD0\xBF\xD1\x80\xD0\xB8\xD1\x85\xD0\xB2\xD0\xB0\xD1\x82\xD0\xB8\xD0\xBB\xD0\xBE?",
		{
			"neverlose.cc\\market\\item?id=bkRCJa",
			"\xD0\xBF\xD0\xBE\xD0\xBA\xD0\xB0 \xD0\xB2 \xD0\xB4\xD0\xB5\xD0\xB4\xD0\xB5 \xD0\xB2\xD0\xBE\xD1\x82 \xD0\xBF\xD0\xBE\xD1\x87\xD0\xB5\xD0\xBA\xD0\xB0\xD0\xB9"
		},
		{
			"\xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBD\xD1\x83\xD1\x82\xD0\xB0\xD1\x8F \xD0\xBB\xD1\x83\xD0\xB0",
			"\xD0\xBD\xD0\xB5 \xD0\xB4\xD1\x83\xD0\xBC\xD0\xB0\xD0\xBB \xD1\x87\xD1\x82\xD0\xBE \xD0\xBE\xD0\xBD\xD0\xB0 \xD1\x82\xD0\xB0\xD0\xBA \xD0\xB1\xD1\x83\xD1\x81\xD1\x82\xD0\xB8\xD1\x82"
		},
		{
			"\xD0\xA1\xD0\xB1\xD0\xB8\xD1\x82 \xD0\xBD\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9",
			"\xD0\xA2\xD1\x8B \xD0\xBF\xD1\x80\xD1\x8F\xD0\xBC \xD0\xBA\xD0\xB0\xD0\xBA \xD0\xB1\xD0\xB5\xD1\x81\xD0\xBF\xD0\xB8\xD0\xBB\xD0\xBE\xD1\x82\xD0\xBD\xD0\xB8\xD0\xBA"
		},
		"\xD0\xB8\xD0\xB7\xD0\xB8 \xD1\x81\xD0\xB2\xD0\xB8\xD0\xBD \xD1\x84\xD0\xB0\xD1\x80\xD1\x88\xD0\xB8\xD1\x80\xD0\xBE\xD0\xB2\xD0\xB0\xD0\xBD\xD0\xBD\xD1\x8B\xD0\xB9",
		{
			"\xD0\x9C\xD0\xBE\xD0\xBA\xD1\x80\xD1\x8B\xD0\xB9 \xD0\xBA\xD1\x80\xD0\xBE\xD1\x81\xD0\xBE\xD0\xB2\xD0\xBE\xD0\xBA?",
			"\xD0\x98\xD0\xBB\xD0\xB8 \xD0\xBF\xD1\x80\xD0\xBE\xD1\x81\xD1\x82\xD0\xBE \xD0\xB5\xD0\xB1\xD0\xBB\xD0\xB0\xD0\xBD \xD1\x81 \xD0\xBD\xD0\xBE\xD1\x80\xD1\x82\xD0\xBE\xD0\xBD"
		},
		"\xD0\x9D\xD0\xB0 \xD0\xBF\xD0\xBE \xD0\xBF\xD0\xBE\xD1\x87\xD0\xBA\xD0\xB0\xD0\xBC",
		{
			"\xD1\x82\xD1\x8B \xD0\xB0\xD1\x84\xD0\xBA \xD0\xB8\xD0\xBB\xD0\xB8 \xD1\x87\xD0\xB5?",
			"\xD0\xB0 \xD1\x82\xD0\xBE \xD1\x85\xD1\x83\xD0\xB9 \xD0\xBF\xD0\xBE\xD0\xB9\xD0\xBC\xD0\xB5\xD1\x88\xD1\x8C \xD1\x82\xD0\xBE \xD0\xBC\xD1\x83\xD0\xB2\xD0\xB0\xD0\xB5\xD1\x82\xD1\x81\xD1\x8F \xD1\x82\xD0\xBE \xD1\x87\xD0\xB5\xD1\x82 \xD1\x81\xD0\xB8\xD0\xB4\xD0\xB8\xD1\x82 \xD0\xB4\xD1\x80\xD0\xBE\xD1\x87\xD0\xB8\xD1\x82.",
			"\xD0\xBA\xD0\xBE\xD1\x80\xD0\xBE\xD1\x87\xD0\xB5 \xD0\xBF\xD0\xBE\xD1\x81\xD0\xBF\xD0\xBE\xD1\x80\xD1\x82\xD0\xB8\xD0\xB2\xD0\xBD\xD0\xB5\xD0\xB9 \xD0\xBF\xD0\xBE \xD0\xBF\xD0\xB0\xD0\xB1\xD0\xBB\xD0\xBE\xD1\x81\xD1\x83 \xD0\xBF\xD0\xB5\xD1\x80\xD0\xB5\xD0\xB4\xD0\xB2\xD0\xB8\xD0\xB3\xD0\xB0\xD0\xB9\xD1\x81\xD1\x8F."
		},
		"\xD0\xB5\xD0\xB1\xD0\xB0\xD1\x82\xD1\x8C \xD1\x82\xD1\x8B \xD0\xB8\xD0\xB7 \xD1\x82\xD1\x80\xD1\x83\xD1\x81\xD0\xBE\xD0\xB2 \xD0\xB2\xD1\x8B\xD0\xBF\xD1\x80\xD1\x8B\xD0\xB3\xD0\xBD\xD1\x83\xD0\xBB",
		"\xD1\x82\xD1\x8B \xD0\xBF\xD1\x80\xD0\xBE\xD1\x81\xD1\x82\xD0\xBE \xD1\x82\xD1\x80\xD0\xB0\xD1\x82\xD0\xB8\xD1\x88\xD1\x8C \xD0\xB2\xD1\x80\xD0\xB5\xD0\xBC\xD1\x8F",
		{
			"\xD0\x9B\xD0\xB1\xD1\x83 \xD0\xB2\xD0\xBA\xD0\xBB\xD1\x8E\xD1\x87\xD0\xB8 \xD1\x83\xD1\x88\xD0\xB0\xD1\x81\xD1\x82\xD1\x8B\xD0\xB9",
			" \xD0\xB0 \xD1\x82\xD0\xBE \xD0\xBD\xD0\xB5 \xD0\xBE\xD1\x89\xD1\x83\xD1\x89\xD0\xB0\xD1\x8E"
		},
		"\xD1\x8F \xD1\x85\xD0\xB7 \xD1\x87\xD0\xBE \xD0\xB2 \xD0\xB1\xD0\xBE\xD0\xB4\xD0\xB8 \xD0\xBF\xD0\xB0\xD0\xBB\xD1\x8C\xD0\xBD\xD1\x83\xD0\xBB\xD0\xBE",
		{
			"\xD0\xB8\xD1\x89\xD0\xB8 \xD1\x81\xD0\xB5\xD0\xB1\xD1\x8F \xD0\xB2 ",
			"\xD1\x85\xD0\xBE\xD1\x82\xD1\x8F \xD0\xBA\xD0\xBE\xD0\xBC\xD1\x83 \xD1\x82\xD1\x8B \xD0\xBD\xD1\x83\xD0\xB6\xD0\xB5\xD0\xBD"
		},
		"\xD0\xB7\xD0\xB0\xD1\x87\xD0\xB5\xD0\xBC \xD1\x82\xD1\x8B \xD0\xB2\xD0\xBE\xD0\xBE\xD0\xB1\xD1\x89\xD0\xB5 \xD1\x81\xD1\x83\xD1\x89\xD0\xB5\xD1\x81\xD1\x82\xD0\xB2\xD1\x83\xD0\xB5\xD1\x88\xD1\x8C?",
		"\xD1\x82\xD1\x8B \xD1\x87\xD0\xB5 \xD1\x81\xD1\x82\xD0\xBE\xD0\xBF \xD0\xBA\xD1\x80\xD0\xB0\xD0\xBD \xD0\xBD\xD0\xB0\xD0\xB6\xD0\xB0\xD0\xBB?",
		{
			"\xD0\xBB\xD0\xB8\xD0\xB2\xD0\xB0\xD0\xB9 \xD1\x81\xD1\x8B\xD0\xBD \xD1\x88\xD0\xBB\xD1\x8E\xD1\x85\xD0\xB8 \xD1\x8F \xD0\xBD\xD0\xB0 \xD0\xBF\xD0\xB0\xD0\xB1\xD0\xB5",
			"\xD1\x85\xD0\xB0\xD0\xBD\xD0\xB0 \xD0\xB2\xD1\x81\xD0\xB5\xD0\xBC \xD0\xBD\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9"
		},
		"\xD0\xB8\xD0\xB7\xD1\x80\xD0\xB5\xD1\x88\xD0\xB8\xD1\x82\xD0\xB8\xD0\xBB \xD1\x85\xD1\x83\xD0\xB5\xD1\x81\xD0\xBE\xD1\x81\xD0\xB0",
		"\xD0\xBD\xD0\xB0\xD0\xB1\xD0\xBB\xD1\x8E\xD0\xB4\xD0\xB0\xD0\xB9 \xD0\xB7\xD0\xB0 \xD0\xBC\xD0\xBE\xD0\xB5\xD0\xB9 \xD0\xB8\xD0\xB3\xD1\x80\xD0\xBE\xD0\xB9 \xD1\x85\xD1\x83\xD0\xB5\xD1\x81\xD0\xBE\xD1\x81 \xD0\xBD\xD0\xB5\xD0\xBC\xD0\xBE\xD1\x89\xD0\xBD\xD1\x8B\xD0\xB9",
		"\xD1\x8D\xD1\x82\xD0\xBE \xD1\x82\xD0\xB8\xD0\xBF\xD0\xBE \xD0\xB2\xD0\xB0\xD0\xBD\xD0\xB2\xD0\xB5\xD0\xB9 \xD0\xB8\xD0\xBB\xD0\xB8 \xD1\x87\xD0\xB5",
		"???",
		{
			"neverlose.cc\\market\\item?id=bkRCJa",
			"\xD0\xBF\xD1\x80\xD0\xB8\xD0\xBA\xD1\x83\xD0\xBF\xD0\xB8 \xD0\xBC\xD0\xB1 \xD0\xBF\xD0\xBE\xD0\xBB\xD0\xB5\xD0\xB3\xD1\x87\xD0\xB5 \xD1\x81\xD1\x82\xD0\xB0\xD0\xBD\xD0\xB5\xD1\x82"
		},
		"\xD0\x9D\xD1\x83 \xD0\xBD\xD0\xB8\xD1\x87\xD0\xB5 \xD0\xB2 \xD0\xBD\xD0\xB5\xD0\xBA\xD1\x81\xD1\x82 \xD1\x80\xD0\xB0\xD1\x83\xD0\xBD\xD0\xB4\xD0\xB5 \xD0\xBF\xD0\xBE\xD0\xBF\xD1\x8B\xD1\x82\xD0\xB0\xD0\xB5\xD1\x88\xD1\x8C\xD1\x81\xD1\x8F",
		{
			"\xD1\x82\xD1\x8B \xD1\x82\xD0\xB8\xD0\xBF\xD0\xBE \xD0\xBD\xD0\xB0 \xD0\xB0\xD0\xB2\xD0\xBF \xD0\xBA\xD0\xBE\xD0\xBF\xD0\xB8\xD1\x88\xD1\x8C \xD0\xB8\xD0\xBB\xD0\xB8 \xD0\xB2 \xD1\x87\xD0\xB5\xD0\xBC \xD0\xBF\xD1\x80\xD0\xB5\xD0\xBA ?",
			"\xD1\x84\xD0\xB8\xD0\xBD\xD0\xB0\xD0\xBD\xD1\x81\xD0\xB8\xD1\x81\xD1\x82 \xD1\x85\xD1\x80\xD0\xB5\xD0\xBD\xD0\xBE\xD0\xB2"
		},
		"\xD0\xA2\xD1\x8B \xD0\xB2\xD0\xBE\xD0\xBE\xD0\xB1\xD1\x89\xD0\xB5 \xD0\xBF\xD0\xBE\xD0\xBD\xD0\xB8\xD0\xBC\xD0\xB0\xD0\xB5\xD1\x88\xD1\x8C \xD1\x87\xD1\x82\xD0\xBE \xD1\x82\xD0\xB0\xD0\xBA\xD0\xBE\xD0\xB5 \xD0\xB8\xD0\xB3\xD1\x80\xD0\xB0 \xD0\xB8\xD0\xBB\xD0\xB8 \xD0\xBF\xD1\x80\xD0\xBE\xD1\x81\xD1\x82\xD0\xBE \xD0\xBA\xD0\xBD\xD0\xBE\xD0\xBF\xD0\xBA\xD0\xB8 \xD0\xB6\xD0\xBC\xD0\xB5\xD1\x88\xD1\x8C?"
	}
}
anonteam_0_60.trash_enemy_body.counter = utils.random_int(1, #anonteam_0_60.trash_enemy_body.phrase)
anonteam_0_60.trash_local_head = {
	counter = 1,
	phrase = {
		"\xD1\x8F \xD0\xB2 \xD0\xB0\xD1\x85\xD1\x83\xD0\xB5 \xD0\xB2\xD1\x8B\xD0\xBB\xD1\x83\xD0\xBF\xD0\xB8\xD0\xBB\xD1\x81\xD1\x8F \xD1\x83\xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBD \xD1\x83\xD0\xB6\xD0\xB5 \xD0\xBF\xD0\xBE \xD0\xBA\xD0\xBB\xD0\xB0\xD0\xB2\xD0\xB8\xD0\xB0\xD1\x82\xD1\x83\xD1\x80\xD0\xB5 \xD1\x82\xD1\x8B\xD1\x80\xD0\xBA\xD0\xB0\xD0\xB5\xD1\x82",
		{
			"\xD0\xA7\xD1\x82\xD0\xBE\xD0\xB1 \xD1\x82\xD0\xB2\xD0\xBE\xD1\x8F \xD0\xBC\xD0\xB0\xD1\x82\xD1\x8C \xD1\x82\xD0\xB5\xD0\xB1\xD0\xB5 \xD1\x82\xD0\xB0\xD0\xBA \xD0\xBF\xD0\xBE\xD0\xBB\xD0\xBE\xD0\xB2\xD0\xBD\xD0\xB8\xD0\xBA\xD0\xBE\xD0\xBC \xD1\x83\xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBB\xD0\xB0",
			"\xD1\x81\xD1\x8B\xD0\xBD \xD1\x82\xD0\xB2\xD0\xB0\xD1\x80\xD0\xB8 \xD0\xBE\xD0\xB4\xD0\xBD\xD0\xBE\xD0\xBD\xD0\xBE\xD0\xB3\xD0\xBE\xD0\xB9                  "
		},
		"\xD0\x92\xD0\xB5\xD0\xB7\xD1\x83\xD1\x87\xD0\xB8\xD0\xB9 \xD1\x85\xD1\x83\xD0\xB5\xD0\xB3\xD0\xBB\xD0\xBE\xD1\x82",
		{
			"\xD0\xBF\xD0\xBE\xD1\x85\xD1\x83\xD0\xB9",
			"\xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBD\xD1\x8B\xD0\xB9 \xD1\x89\xD0\xB5\xD0\xB3\xD0\xBE\xD0\xBB \xD0\xB2\xD1\x8B\xD0\xBB\xD1\x83\xD0\xBF\xD0\xB8\xD0\xBB\xD1\x81\xD1\x8F \xD0\xB8\xD0\xB7 \xD0\xBF\xD0\xB8\xD0\xB7\xD0\xB4\xD1\x8B \xD1\x81\xD0\xB2\xD0\xBE\xD0\xB5\xD0\xB9 \xD0\xBC\xD0\xB0\xD1\x82\xD0\xB5\xD1\x80\xD0\xB8 \xD1\x88\xD0\xB2\xD0\xB0\xD0\xB1\xD1\x80\xD1\x8B \xD0\xB8 \xD0\xBE\xD0\xBD\xD0\xB0 \xD0\xB5\xD0\xBC\xD1\x83 \xD0\xBD\xD0\xB0 \xD1\x82\xD1\x80\xD0\xB0\xD1\x81\xD1\x81\xD0\xB5 \xD0\xBD\xD0\xB0\xD1\x81\xD0\xBE\xD1\x81\xD0\xB0\xD0\xBB\xD0\xB0 \xD1\x83 \xD0\xBE\xD1\x82\xD1\x86\xD0\xB0 \xD0\xB4\xD0\xB0\xD0\xBB\xD1\x8C\xD0\xBD\xD0\xBE\xD0\xB1\xD0\xBE\xD0\xB9\xD1\x89\xD0\xB8\xD0\xBA\xD0\xB0 \xD0\xBD\xD0\xB0 \xD0\xBF\xD0\xBE\xD0\xB4\xD0\xBF\xD0\xB8\xD1\x81\xD0\xBA\xD1\x83    "
		},
		"\xD0\xB3\xD0\xB4\xD0\xB5 \xD1\x82\xD0\xB0\xD0\xBA\xD0\xB8\xD0\xB5 \xD0\xBD\xD0\xB8\xD0\xBA\xD0\xB8 \xD1\x88\xD1\x82\xD0\xB0\xD0\xBC\xD0\xBF\xD1\x83\xD1\x8E\xD1\x82 \xD0\xBE\xD1\x82 \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F \xD1\x80\xD0\xB5\xD0\xB0\xD0\xBB\xD1\x8C\xD0\xBD\xD0\xBE \xD1\x81\xD0\xBC\xD0\xB5\xD1\x88\xD0\xBD\xD0\xBE \xD1\x83\xD0\xBC\xD0\xB8\xD1\x80\xD0\xB0\xD1\x82\xD1\x8C",
		{
			"ye fkj [etcjc",
			"\xD0\xB1\xD0\xBB\xD1\x8F\xD1\x82\xD1\x8C \xD0\xBF\xD0\xBE\xD1\x88\xD0\xB5\xD0\xBB \xD0\xBD\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9",
			"\xD0\xB2\xD1\x8B\xD1\x81\xD0\xB5\xD1\x80 \xD0\xB2 \xD0\xBF\xD0\xBE\xD0\xBF\xD1\x8B\xD1\x82\xD0\xBA\xD0\xB0\xD1\x85 \xD0\xBC\xD0\xB5\xD0\xBD\xD1\x8F \xD1\x83\xD0\xB1\xD0\xB8\xD1\x82\xD1\x8C \xD1\x82\xD0\xB0\xD0\xBC \xD0\xBA\xD0\xBB\xD0\xB0\xD0\xB2\xD1\x83 \xD1\x87\xD1\x83\xD1\x82\xD1\x8C \xD0\xBD\xD0\xB5 \xD0\xBF\xD0\xB5\xD1\x80\xD0\xB5\xD0\xB2\xD0\xB5\xD1\x80\xD0\xBD\xD1\x83\xD0\xBB     "
		},
		"\xD1\x87\xD1\x82\xD0\xBE \xD1\x82\xD1\x8B \xD0\xB4\xD0\xB5\xD0\xBB\xD0\xB0\xD0\xB5\xD1\x88\xD1\x8C",
		"\xD0\xB1\xD1\x83\xD1\x80\xD0\xBC\xD0\xB0\xD0\xBB\xD0\xB4\xD0\xB0 \xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBD\xD0\xB0\xD1\x8F",
		{
			"\xD0\xB4\xD0\xB5\xD1\x80\xD0\xB5\xD0\xB2\xD1\x8F\xD0\xBD\xD0\xBD\xD0\xB0\xD1\x8F \xD1\x82\xD1\x8B \xD1\x85\xD1\x83\xD0\xB9\xD0\xBD\xD1\x8F",
			"\xD0\xBA\xD1\x83\xD0\xB4\xD0\xB0 \xD1\x82\xD1\x8B \xD1\x81\xD1\x83\xD0\xBA\xD0\xB0 \xD0\xBF\xD0\xBE\xD0\xBF\xD0\xB0\xD0\xB4\xD0\xB0\xD0\xB5\xD1\x88\xD1\x8C \xD0\xB2 \xD0\xBC\xD0\xB5\xD0\xBD\xD1\x8F            "
		},
		"\xD0\xBD\xD1\x83 \xD1\x8F \xD0\xBC\xD0\xB0\xD1\x82\xD1\x8C \xD1\x82\xD0\xB2\xD0\xBE\xD1\x8E \xD1\x80\xD0\xB5\xD0\xB7\xD0\xB0\xD0\xBB",
		{
			"\xD0\xB1\xD0\xBB\xD1\x8F",
			"\xD1\x82\xD1\x8B \xD0\xB2\xD0\xBE\xD0\xBE\xD0\xB1\xD1\x89\xD0\xB5 \xD0\xB5\xD0\xB1\xD0\xBB\xD0\xB0\xD0\xBD \xD0\xBD\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9      ",
			"\xD1\x82\xD1\x83\xD0\xBF\xD0\xBE\xD1\x80\xD1\x8B\xD0\xBB\xD0\xB0\xD1\x8F \xD1\x85\xD1\x83\xD0\xB5\xD1\x82\xD0\xB0     ",
			"\xD0\xBE\xD0\xBD\xD0\xBE \xD0\xB6\xD0\xB5 \xD0\xB8\xD0\xB3\xD1\x80\xD0\xBE\xD0\xBA\xD0\xBE\xD0\xBC \xD1\x81\xD0\xB5\xD0\xB1\xD1\x8F \xD1\x81\xD1\x87\xD0\xB8\xD1\x82\xD0\xB0\xD0\xB5\xD1\x82       "
		},
		{
			"\xD0\xBD\xD1\x83 \xD1\x8F \xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBB \xD1\x87\xD1\x82\xD0\xBE \xD1\x82\xD1\x8B \xD1\x82\xD0\xB2\xD0\xBE\xD1\x80\xD0\xB8\xD1\x88\xD1\x8C",
			"\xD1\x81\xD0\xB0\xD0\xBC\xD0\xBE\xD1\x80\xD0\xBE\xD0\xB4\xD0\xBE\xD0\xBA 2024"
		},
		{
			"\xD0\xB1\xD0\xBB\xD1\x8F\xD1\x82\xD1\x8C \xD1\x81\xD1\x83\xD0\xBA\xD0\xB0 \xD0\xB0\xD0\xBD\xD1\x80\xD0\xB5\xD0\xB3     ",
			"\xD0\xBA\xD0\xB0\xD0\xBA \xD0\xB6\xD0\xB5 \xD0\xB5\xD0\xBC\xD1\x83 \xD0\xBF\xD0\xBE\xD0\xB2\xD0\xB5\xD0\xB7\xD0\xBB\xD0\xBE        ",
			"\xD1\x81\xD0\xBC\xD0\xBE\xD1\x82\xD1\x80\xD0\xB8\xD1\x82\xD0\xB5 \xD0\xBD\xD0\xB0 \xD1\x8D\xD1\x82\xD1\x83 \xD0\xBD\xD0\xB5\xD0\xB4\xD0\xBE\xD0\xBD\xD0\xBE\xD1\x88\xD0\xB5\xD0\xBD\xD0\xBD\xD1\x83\xD1\x8E \xD1\x85\xD1\x83\xD0\xB5\xD1\x82\xD1\x83            "
		},
		{
			"\xD0\xB1\xD0\xBB\xD1\x8F \xD0\xBD\xD1\x83 \xD0\xBE\xD0\xBD\xD0\xBE \xD0\xB6\xD0\xB5 \xD1\x85\xD1\x83\xD0\xB5\xD0\xB3\xD0\xBB\xD0\xBE\xD1\x82\xD0\xBE\xD0\xB2 \xD0\xBF\xD0\xBE \xD1\x82\xD0\xB8\xD0\xBF\xD1\x83 \xD1\x82\xD1\x80\xD1\x8E\xD0\xBA\xD0\xB0\xD1\x87\xD0\xB0 \xD0\xBD\xD0\xB0\xD1\x81\xD0\xBC\xD0\xBE\xD1\x82\xD1\x80\xD0\xB5\xD0\xBB\xD0\xBE\xD1\x81\xD1\x8C",
			"\xD1\x82\xD0\xB5\xD0\xBF\xD0\xB5\xD1\x80\xD1\x8C \xD0\xBF\xD0\xBE \xD0\xBF\xD0\xB0\xD0\xB1\xD0\xBB\xD1\x83 \xD0\xBF\xD1\x8B\xD1\x82\xD0\xB0\xD0\xB5\xD1\x82\xD1\x81\xD1\x8F \xD1\x82\xD1\x83\xD1\x82 \xD0\xBC\xD0\xBE\xD0\xB7\xD0\xB3 \xD0\xB2\xD1\x8B\xD1\x81\xD1\x80\xD0\xB0\xD1\x82\xD1\x8C \xD1\x87\xD0\xB5\xD1\x80\xD0\xB5\xD0\xB7 \xD0\xB3\xD0\xBB\xD0\xB0\xD0\xB7"
		},
		"))",
		"\xD0\xBD\xD0\xB0\xD0\xBA\xD0\xBE\xD0\xBD\xD0\xB5\xD1\x86 \xD1\x82\xD0\xBE \xD1\x83 \xD0\xBD\xD0\xB5\xD0\xB3\xD0\xBE \xD0\xBF\xD0\xBE\xD0\xBB\xD1\x83\xD1\x87\xD0\xB8\xD0\xBB\xD0\xBE\xD1\x81\xD1\x8C",
		{
			"\xD0\xBD\xD0\xB8\xD1\x85\xD1\x83\xD1\x8F",
			"\xD1\x8F \xD0\xB4\xD1\x83\xD0\xBC\xD0\xB0\xD0\xBB \xD1\x83 \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F \xD1\x80\xD0\xB5\xD0\xB9\xD0\xB4\xD0\xB6\xD0\xB1\xD0\xBE\xD1\x82 \xD0\xB2\xD1\x8B\xD0\xBA\xD0\xBB\xD1\x8E\xD1\x87\xD0\xB5\xD0\xBD"
		}
	}
}
anonteam_0_60.trash_local_head.counter = utils.random_int(1, #anonteam_0_60.trash_local_head.phrase)
anonteam_0_60.trash_local_body = {
	counter = 1,
	phrase = {
		{
			"\xD0\x90 \xD0\xB2 \xD0\xB3\xD0\xBE\xD0\xBB\xD0\xBE\xD0\xB2\xD1\x83 \xD1\x81\xD0\xBB\xD0\xB0\xD0\xB1\xD0\xBE \xD1\x87\xD0\xB8\xD1\x85\xD0\xBF\xD1\x8B\xD1\x85 \xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBD\xD1\x8B\xD0\xB9",
			"\xD0\xBD\xD0\xB5\xD0\xBC\xD0\xBE\xD1\x89\xD1\x8C"
		},
		{
			"\xD0\x92 \xD0\xBD\xD0\xB5\xD0\xBA\xD1\x81\xD1\x82 \xD1\x80\xD0\xB0\xD1\x83\xD0\xBD\xD0\xB4\xD0\xB5 \xD0\xB2\xD1\x8B\xD0\xB5\xD0\xB1\xD1\x83 \xD1\x82\xD1\x8F",
			"\xD1\x82\xD1\x83\xD1\x82\xD0\xBA\xD0\xB0\xD1\x87\xD0\xBE\xD0\xBD\xD0\xBE\xD0\xBA"
		},
		"\xD0\x9D\xD0\xB0\xD0\xB9\xD1\x81 \xD0\xBF\xD0\xBE\xD0\xB4\xD0\xBA\xD1\x80\xD1\x83\xD1\x82\xD0\xBA\xD0\xB0 \xD0\xB0\xD0\xB4\xD0\xBC\xD0\xB8\xD0\xBD\xD1\x81\xD0\xBA\xD0\xB0\xD1\x8F",
		"\xD1\x87\xD0\xB5 \xD1\x8D\xD1\x82\xD0\xBE",
		{
			"\xD1\x87\xD0\xB5 \xD0\xB7\xD0\xB0 \xD1\x85\xD1\x83\xD0\xB5\xD1\x81\xD0\xBE\xD1\x81 \xD0\xBD\xD0\xB0 \xD0\xBC\xD0\xB5\xD1\x81\xD1\x82\xD0\xB5 \xD1\x81\xD1\x82\xD0\xBE\xD0\xB8\xD1\x82",
			"\xD1\x88\xD0\xBB\xD1\x8E\xD1\x85\xD0\xB0 \xD0\xBD\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9 \xD0\xB4\xD0\xBE\xD1\x80\xD0\xBE\xD0\xB6\xD0\xBD\xD0\xB0\xD1\x8F"
		},
		{
			"\xD0\xB8 \xD0\xBE\xD0\xBD\xD0\xBE \xD0\xBD\xD0\xB0\xD0\xB7\xD1\x8B\xD0\xB2\xD0\xB0\xD0\xB5\xD1\x82 \xD1\x81\xD0\xB5\xD0\xB1\xD1\x8F \xD0\x98\xD0\xB3\xD1\x80\xD0\xBE\xD0\xBA\xD0\xBE\xD0\xBC",
			"\xD0\xBC\xD0\xB0\xD0\xBA\xD1\x81\xD0\xB8\xD0\xBC\xD1\x83\xD0\xBC \xD1\x82\xD1\x8B \xD1\x85\xD1\x83\xD0\xB5\xD0\xB3\xD0\xBB\xD0\xBE\xD1\x82 \xD0\xB8\xD0\xB7 \xD1\x82\xD1\x80\xD1\x83\xD1\x89\xD0\xBE\xD0\xB1"
		},
		"\xD0\xBD\xD0\xB5 \xD1\x80\xD0\xB0\xD1\x81\xD1\x81\xD0\xBB\xD0\xB0\xD0\xB1\xD0\xBB\xD1\x8F\xD0\xB9\xD1\x81\xD1\x8F \xD0\xB2 \xD0\xBD\xD0\xB5\xD0\xBA\xD1\x81\xD1\x82 \xD1\x80\xD0\xB0\xD1\x83\xD0\xBD\xD0\xB4\xD0\xB5 \xD1\x8F \xD1\x82\xD0\xB5\xD0\xB1\xD0\xB5 \xD0\xBD\xD0\xB0\xD1\x81\xD1\x82\xD1\x83\xD1\x87\xD1\x83 \xD0\xBF\xD0\xBE \xD0\xB5\xD0\xB1\xD0\xBB\xD1\x83",
		"\xD0\xB1\xD0\xBB\xD1\x8F \xD0\xBF\xD0\xBE\xD0\xB9\xD0\xB4\xD1\x83 \xD0\xBA\xD0\xB0\xD0\xBB\xD0\xB8\xD0\xBA \xD1\x80\xD0\xB0\xD0\xB7\xD0\xB4\xD1\x83\xD1\x8E \xD0\xBD\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9 \xD1\x8D\xD1\x82\xD1\x83 \xD0\xB8\xD0\xB3\xD1\x80\xD1\x83",
		{
			"\xD1\x8F \xD0\xB1\xD0\xB5\xD0\xB7 \xD0\xBE\xD1\x80\xD1\x83\xD0\xB6\xD0\xB8\xD1\x8F \xD0\xB1\xD1\x8B\xD0\xBB \xD1\x81\xD1\x83\xD0\xBA\xD0\xB0      ",
			"\xD0\xBF\xD0\xB0\xD0\xB4\xD0\xBB\xD0\xB0 \xD0\xBD\xD0\xB5\xD0\xB2\xD1\x8B\xD0\xBD\xD0\xBE\xD1\x81\xD0\xB8\xD0\xBC\xD0\xB0\xD1\x8F"
		},
		"\xD0\xB4\xD0\xB0 \xD1\x8F \xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBB \xD0\xBC\xD0\xB5\xD0\xBD\xD1\x8F \xD1\x82\xD0\xB5\xD0\xBF\xD0\xBD\xD1\x83\xD0\xBB\xD0\xBE \xD0\xBD\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9",
		"))",
		"\xD0\xBD\xD0\xB0\xD0\xBA\xD0\xBE\xD0\xBD\xD0\xB5\xD1\x86 \xD1\x82\xD0\xBE \xD1\x83 \xD0\xBD\xD0\xB5\xD0\xB3\xD0\xBE \xD0\xBF\xD0\xBE\xD0\xBB\xD1\x83\xD1\x87\xD0\xB8\xD0\xBB\xD0\xBE\xD1\x81\xD1\x8C",
		{
			"\xD0\xBD\xD0\xB8\xD1\x85\xD1\x83\xD1\x8F",
			"\xD1\x8F \xD0\xB4\xD1\x83\xD0\xBC\xD0\xB0\xD0\xBB \xD1\x83 \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F \xD1\x80\xD0\xB5\xD0\xB9\xD0\xB4\xD0\xB6\xD0\xB1\xD0\xBE\xD1\x82 \xD0\xB2\xD1\x8B\xD0\xBA\xD0\xBB\xD1\x8E\xD1\x87\xD0\xB5\xD0\xBD"
		},
		{
			"\xD1\x8D\xD1\x82\xD0\xBE \xD0\xB6\xD0\xB5 \xD0\xBA\xD0\xB0\xD0\xBA \xD0\xB4\xD0\xBE\xD0\xBB\xD0\xB6\xD0\xBD\xD0\xBE \xD0\xB1\xD1\x8B\xD0\xBB\xD0\xBE \xD0\xBF\xD0\xBE\xD0\xB2\xD0\xB5\xD1\x81\xD1\x82\xD0\xB8 \xD1\x87\xD1\x82\xD0\xBE\xD0\xB1\xD1\x8B \xD1\x82\xD1\x8B \xD1\x81\xD0\xBC\xD0\xBE\xD0\xB3 \xD0\xBC\xD0\xB5\xD0\xBD\xD1\x8F \xD1\x83\xD0\xB1\xD0\xB8\xD1\x82\xD1\x8C",
			"\xD1\x87\xD1\x82\xD0\xBE \xD1\x82\xD0\xBE \xD0\xBD\xD0\xB0 \xD1\x83\xD1\x80\xD0\xBE\xD0\xB2\xD0\xBD\xD0\xB5 \xD1\x84\xD0\xB0\xD0\xBD\xD1\x82\xD0\xB0\xD1\x81\xD1\x82\xD0\xB8\xD0\xBA\xD0\xB8"
		}
	}
}
anonteam_0_60.trash_local_body.counter = utils.random_int(1, #anonteam_0_60.trash_local_body.phrase)
anonteam_0_60.trash_enemy_molotov = {
	counter = 1,
	phrase = {
		{
			"\xD0\x90 \xD0\xBD\xD0\xB0\xD1\x85\xD1\x83\xD0\xB9 \xD1\x82\xD1\x8B \xD1\x81\xD0\xB3\xD0\xBE\xD1\x80\xD0\xB5\xD0\xBB?",
			"\xD0\xA3\xD0\xBC\xD1\x8B\xD0\xBB\xD1\x81\xD1\x8F \xD0\xB2 \xD1\x81\xD0\xBE\xD0\xBF\xD0\xBB\xD1\x8F\xD1\x85"
		},
		"\xD0\xA2\xD1\x8B \xD0\xB2\xD0\xBE\xD0\xBE\xD0\xB1\xD1\x89\xD0\xB5 \xD0\xB2 \xD0\xBA\xD1\x83\xD1\x80\xD1\x81\xD0\xB0\xD1\x85 \xD1\x87\xD1\x82\xD0\xBE \xD1\x81\xD0\xBC\xD0\xBE\xD0\xBA \xD1\x83 \xD1\x82\xD0\xB5\xD0\xB1\xD1\x8F \xD0\xB1\xD1\x8B\xD0\xBB",
		"\xD0\x9D\xD0\xB0\xD1\x81\xD1\x81\xD0\xB0\xD0\xBB \xD0\xB1\xD1\x8B \xD1\x83\xD0\xB6\xD0\xB5 \xD0\xBF\xD0\xBE\xD0\xB4 \xD1\x81\xD0\xB5\xD0\xB1\xD1\x8F \xD1\x87\xD0\xB5\xD0\xBC \xD1\x82\xD0\xB0\xD0\xBA \xD1\x83\xD0\xBC\xD0\xB8\xD1\x80\xD0\xB0\xD1\x82\xD1\x8C",
		{
			"\xD0\x9F\xD0\xBE\xD0\xB4\xD0\xBA\xD1\x83\xD1\x80 \xD0\xBF\xD0\xBE\xD1\x88\xD0\xB5\xD0\xBB",
			"\xD0\x92\xD0\xB8\xD0\xBD\xD1\x81\xD1\x82\xD0\xB0\xD0\xBA \xD0\xB8\xD0\xBB\xD0\xB8 \xD0\xBC\xD0\xB0\xD0\xBB\xD1\x8C\xD0\xB1\xD0\xBE\xD1\x80\xD0\xBE"
		}
	}
}
anonteam_0_60.trash_enemy_molotov.counter = utils.random_int(1, #anonteam_0_60.trash_enemy_molotov.phrase)
anonteam_0_60.trash_enemy_hegrenade = {
	counter = 1,
	phrase = {
		"\xD0\x91\xD0\xB0\xD0\xB1\xD0\xB0\xD1\x85 \xD1\x83\xD0\xB5\xD0\xB1\xD0\xB8\xD1\x89\xD0\xB5",
		"\xD0\xA2\xD1\x8B \xD1\x87\xD0\xB5 \xD0\xB2\xD0\xBE\xD0\xBE\xD0\xB1\xD1\x89\xD0\xB5 \xD0\xBD\xD0\xB8\xD1\x85\xD1\x83\xD1\x8F \xD0\xBD\xD0\xB5 \xD0\xB2\xD0\xB8\xD0\xB4\xD0\xB8\xD1\x88\xD1\x8C",
		"\xD1\x85\xD1\x8D\xD0\xB9 \xD0\xB3\xD0\xB0\xD0\xB9\xD1\x81 \xD1\x83 \xD0\xB1\xD0\xB8\xD1\x87\xD0\xB0 \xD0\xB2\xD1\x81\xD0\xB5 \xD0\xBD\xD0\xB0\xD0\xB9\xD1\x81",
		"TNT\xD1\x88\xD0\xBD\xD1\x83\xD1\x82"
	}
}
anonteam_0_60.trash_enemy_hegrenade.counter = utils.random_int(1, #anonteam_0_60.trash_enemy_hegrenade.phrase)
anonteam_0_60.trash_revenge = {
	counter = 1,
	phrase = {
		"1.",
		"\xD0\xA7\xD0\xB5 \xD0\xB4\xD1\x83\xD0\xBC\xD0\xB0\xD0\xBB \xD1\x82\xD0\xB5\xD0\xB1\xD0\xB5 \xD0\xB5\xD1\x89\xD0\xB5 \xD1\x80\xD0\xB0\xD0\xB7 \xD0\xBF\xD0\xBE\xD0\xB2\xD0\xB5\xD0\xB7\xD0\xB5\xD1\x82?",
		"\xD1\x81\xD0\xB2\xD0\xB0\xD0\xBB\xD0\xB8\xD0\xBB\xD1\x81\xD1\x8F \xD1\x83\xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBD \xD1\x81\xD0\xBB\xD0\xB0\xD0\xB1\xD0\xB5\xD0\xB9\xD1\x88\xD0\xB8\xD0\xB9",
		{
			"\xD1\x82\xD1\x8B \xD0\xBB\xD0\xBE\xD1\x83",
			"\xD0\xB4\xD1\x8F\xD0\xB4\xD1\x8F                     "
		},
		"\xD1\x82\xD1\x83\xD1\x88\xD0\xB8 \xD1\x81\xD0\xB2\xD0\xB5\xD1\x82 \xD0\xB2\xD1\x8B\xD0\xB1\xD0\xBB\xD1\x8F\xD0\xB4\xD0\xBE\xD0\xBA \xD1\x81\xD0\xBB\xD0\xB0\xD0\xB1\xD1\x8B\xD0\xB9",
		"1 \xD1\x81\xD1\x8B\xD0\xBD \xD1\x88\xD0\xB0\xD1\x85\xD0\xB5\xD1\x82\xD1\x80\xD0\xB0 \xD0\xB5\xD0\xB1\xD0\xBB\xD0\xB8\xD0\xB2\xD1\x8B\xD0\xB9",
		"\xD0\x9F\xD0\xB5\xD1\x80\xD0\xB5\xD0\xB8\xD0\xB3\xD1\x80\xD0\xB0\xD0\xBD \xD0\xBA\xD0\xBE\xD0\xB1\xD1\x8B\xD0\xBB\xD0\xB0 \xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBD\xD0\xB0\xD1\x8F",
		{
			"\xD0\x98\xD0\xB7\xD0\xB8 \xD1\x85\xD1\x83\xD0\xB5\xD1\x81\xD0\xBE\xD1\x81",
			"\xD0\x94\xD1\x83\xD0\xBC\xD0\xB0\xD0\xBB\xD0\xBA\xD1\x83 \xD0\xB2\xD0\xBA\xD0\xBB\xD1\x8E\xD1\x87\xD0\xB0\xD0\xB9 \xD1\x85\xD0\xBE\xD1\x82\xD1\x8C \xD0\xB8\xD0\xBD\xD0\xBE\xD0\xB3\xD0\xB4\xD0\xB0"
		}
	}
}
anonteam_0_60.trash_revenge.counter = utils.random_int(1, #anonteam_0_60.trash_revenge.phrase)
anonteam_0_60.trash_enemy_zeus = {
	counter = 1,
	phrase = {
		"\xD0\x9D\xD0\xB0\xD1\x8D\xD0\xBB\xD0\xB5\xD0\xBA\xD1\x82\xD1\x80\xD0\xB8\xD0\xB7\xD0\xBE\xD0\xB2\xD0\xB0\xD0\xBD \xD0\xBF\xD0\xB8\xD0\xB4\xD0\xBE\xD1\x80\xD0\xB0\xD1\x81",
		{
			"\xD0\x9D\xD1\x83 \xD0\xB0 \xD1\x85\xD1\x83\xD0\xBB\xD0\xB8 \xD1\x82\xD1\x8B \xD0\xB4\xD1\x83\xD0\xBC\xD0\xB0\xD0\xBB 220 \xD0\xB2\xD0\xBE\xD0\xBB\xD1\x8C\xD1\x82 \xD1\x82\xD1\x83\xD1\x82",
			"\xD0\x92\xD0\xBA\xD0\xBB\xD1\x8E\xD1\x87\xD0\xB0\xD0\xB9 \xD0\xB0\xD0\xBD\xD1\x82\xD0\xB8\xD0\xB7\xD0\xB5\xD0\xB2\xD1\x81\xD0\xB8\xD0\xBB\xD0\xBA\xD1\x83"
		},
		"\xD0\xBD\xD0\xB0 \xD0\xB7\xD0\xB5\xD0\xB2\xD1\x81\xD0\xB5 \xD0\xB1\xD0\xBE\xD1\x82\xD1\x8F\xD1\x80\xD0\xB0 \xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBD\xD0\xB0\xD1\x8F",
		"\xD0\xA3\xD0\xB2\xD0\xB0\xD1\x80\xD0\xBE\xD1\x82 \xD0\xBD\xD0\xB0\xD0\xB6\xD0\xB8\xD0\xBC\xD0\xB0\xD0\xB9 \xD1\x85\xD0\xBE\xD1\x82\xD1\x8C \xD0\xB8\xD0\xBD\xD0\xBE\xD0\xB3\xD0\xB4\xD0\xB0"
	}
}
anonteam_0_60.trash_enemy_zeus.counter = utils.random_int(1, #anonteam_0_60.trash_enemy_zeus.phrase)
anonteam_0_60.trash_enemy_knife = {
	counter = 1,
	phrase = {
		{
			"\xD0\x9D\xD0\xB0 \xD0\xBC\xD1\x8F\xD1\x81\xD0\xB5",
			"\xD0\x9A\xD0\xBE\xD0\xBB\xD0\xB1\xD0\xB0\xD1\x81\xD0\xB0 \xD0\xB5\xD0\xB1\xD0\xB0\xD0\xBD\xD0\xB0\xD1\x8F"
		},
		"\xD0\x9D\xD0\xB0 \xD0\xBD\xD0\xBE\xD0\xB6\xD0\xB5 \xD1\x82\xD0\xB5\xD1\x80\xD0\xBF\xD0\xB8\xD0\xBB\xD0\xB0",
		"\xD0\xA3\xD1\x88\xD0\xB8 \xD1\x82\xD0\xB5\xD0\xB1\xD0\xB5 \xD0\xBE\xD1\x82\xD1\x80\xD0\xB5\xD0\xB7\xD0\xB0\xD0\xBB",
		"\xD0\xA1\xD0\xBF\xD0\xBE\xD0\xBA\xD0\xBE\xD0\xB9\xD0\xBD\xD0\xBE\xD0\xB9 \xD0\xBD\xD0\xBE\xD1\x87\xD0\xB8 \xD0\xB4\xD0\xBE\xD0\xBB\xD0\xB1\xD0\xB0\xD0\xB5\xD0\xB1"
	}
}
anonteam_0_60.trash_enemy_knife.counter = utils.random_int(1, #anonteam_0_60.trash_enemy_knife.phrase)
anonteam_0_60.trash_revenge_id = nil
anonteam_0_60.last_kill = nil
anonteam_0_60.trashtalk_list = {}

events.player_death:set(function(arg_480_0)
	-- function 480
	if not anonteam_0_47.ui_tables.misc.trashtalk_switch.value then
		return
	end

	local anonteam_480_0 = entity.get(arg_480_0.userid, true)

	if not anonteam_480_0 then
		return
	end

	local anonteam_480_1 = entity.get(arg_480_0.attacker, true)

	if anonteam_480_1 == entity.get(0) then
		return
	end

	local anonteam_480_2 = arg_480_0.headshot
	local anonteam_480_3 = arg_480_0.weapon == "taser"
	local anonteam_480_4 = arg_480_0.weapon == "hegrenade"
	local anonteam_480_5 = arg_480_0.weapon == "inferno"
	local anonteam_480_6 = arg_480_0.weapon:find("knife")
	local anonteam_480_7
	local anonteam_480_8 = false
	local anonteam_480_9 = anonteam_0_23()

	if anonteam_480_0 == anonteam_480_9 and anonteam_480_1 ~= anonteam_480_9 and anonteam_480_1:is_enemy() then
		anonteam_480_7 = false
		anonteam_0_60.last_kill = anonteam_480_1
	end

	if anonteam_480_0 ~= anonteam_480_9 and anonteam_480_1 == anonteam_480_9 and anonteam_480_0:is_enemy() then
		anonteam_480_7 = true
	end

	if anonteam_0_60.last_kill == anonteam_480_0 then
		anonteam_480_8 = true
	end

	if anonteam_480_7 == nil and not anonteam_480_8 then
		return
	end

	local anonteam_480_10
	local anonteam_480_11 = 0
	local anonteam_480_12 = anonteam_0_47.ui_tables.misc.trash_type.ref

	if anonteam_480_7 then
		if not anonteam_480_12:get(1) then
			return
		end

		if anonteam_480_2 then
			local anonteam_480_13 = "enemy_head"

			anonteam_480_10 = anonteam_0_60.trash_enemy_head
		else
			local anonteam_480_14 = true

			if anonteam_480_4 then
				anonteam_480_10 = anonteam_0_60.trash_enemy_hegrenade

				local anonteam_480_15 = "he"

				anonteam_480_14 = false
			end

			if anonteam_480_5 then
				anonteam_480_10 = anonteam_0_60.trash_enemy_molotov

				local anonteam_480_16 = "molotov"

				anonteam_480_14 = false
			end

			if anonteam_480_3 then
				anonteam_480_10 = anonteam_0_60.trash_enemy_zeus

				local anonteam_480_17 = "zeus"

				anonteam_480_14 = false
			end

			if anonteam_480_6 then
				anonteam_480_10 = anonteam_0_60.trash_enemy_knife

				local anonteam_480_18 = "knife"

				anonteam_480_14 = false
			end

			if anonteam_480_14 then
				local anonteam_480_19 = "enemy_body"

				anonteam_480_10 = anonteam_0_60.trash_enemy_body
			end
		end
	elseif anonteam_480_8 then
		if not anonteam_480_12:get(3) then
			return
		end

		local anonteam_480_20 = "revenge"

		anonteam_480_10 = anonteam_0_60.trash_revenge
		anonteam_0_60.last_kill = nil
	else
		if not anonteam_480_12:get(2) then
			return
		end

		if anonteam_480_2 then
			local anonteam_480_21 = "local_head"

			anonteam_480_10 = anonteam_0_60.trash_local_head
		else
			local anonteam_480_22 = "local_body"

			anonteam_480_10 = anonteam_0_60.trash_local_body
		end
	end

	local anonteam_480_23 = anonteam_480_10.counter
	local anonteam_480_24 = anonteam_480_0:get_name()

	if not anonteam_0_47.ui_tables.misc.trashtalk_switch.value then
		return
	end

	local anonteam_480_25 = anonteam_480_10.phrase[anonteam_480_23]

	anonteam_480_10.counter = anonteam_480_10.counter + 1

	if #anonteam_480_10.phrase < anonteam_480_10.counter then
		anonteam_480_10.counter = 1
	end

	if type(anonteam_480_25) == "table" then
		if anonteam_480_25[1] == "log" then
			anonteam_480_25[1] = string.format("extension Hit %s head for %s(%s) (0 hp remaining) backtrack: %s hitchance: %s", anonteam_480_24, 100 + utils.random_int(0, 100), utils.random_int(1, 10), utils.random_int(30, 40), utils.random_int(1, 30))
		end

		if anonteam_480_25[1] == "death" then
			anonteam_480_25[1] = string.format("*\xD0\x9C\xD0\x95\xD0\xA0\xD0\xA2\xD0\x92* %s", anonteam_480_24)
		end

		for iter_480_0 = 1, #anonteam_480_25 do
			table.insert(anonteam_0_60.trashtalk_list, {
				time = #anonteam_480_25[iter_480_0] * 0.034,
				text = anonteam_480_25[iter_480_0]
			})
		end

		return
	end

	table.insert(anonteam_0_60.trashtalk_list, {
		time = #anonteam_480_25 * 0.032,
		text = anonteam_480_25
	})
end)

anonteam_0_60.trashtalk_curtime = 0

events.render:set(function()
	-- function 481
	if not anonteam_0_47.ui_tables.misc.trashtalk_switch.value then
		anonteam_0_60.trashtalk_list = {}

		return
	end

	if anonteam_0_11(anonteam_0_60.trashtalk_curtime - globals.curtime) > 10 then
		anonteam_0_60.trashtalk_curtime = globals.curtime
		anonteam_0_60.trashtalk_list = {}
	end

	if anonteam_0_60.trashtalk_curtime - globals.curtime > 0 then
		return
	end

	for iter_481_0 = 1, #anonteam_0_60.trashtalk_list do
		local anonteam_481_0 = anonteam_0_60.trashtalk_list[iter_481_0]

		if anonteam_481_0.time < 0.8 then
			anonteam_481_0.time = 0.8
		end

		utils.execute_after(anonteam_481_0.time, function()
			-- function 482
			utils.console_exec("say \"" .. anonteam_481_0.text .. "\"")
		end)

		anonteam_0_60.trashtalk_curtime = globals.curtime + anonteam_481_0.time

		table.remove(anonteam_0_60.trashtalk_list, iter_481_0)

		break
	end
end)
events.round_start:set(function()
	-- function 483
	anonteam_0_60.last_kill = nil
end)
events.render:set(function()
	-- function 484
	local anonteam_484_0 = ui.get_style("Link Active")
	local anonteam_484_1 = {
		anonteam_484_0:to_hsv()
	}
	local anonteam_484_2 = ui.get_style("Link Active")
	local anonteam_484_3 = color(255):as_hsv(anonteam_484_1[1], math.max(anonteam_484_1[2] - 0.2, 0), math.max(anonteam_484_1[3] - 0.5, 0))
	local anonteam_484_4 = ui.get_style("Link Active")
	local anonteam_484_5 = globals.curtime * 6 % 23 - 2
	local anonteam_484_6 = {}

	for iter_484_0 = 1, 9 do
		local anonteam_484_7 = iter_484_0 < anonteam_484_5 and anonteam_484_5 - iter_484_0 or iter_484_0 - anonteam_484_5

		if iter_484_0 < anonteam_484_5 then
			if anonteam_484_7 <= 5 then
				anonteam_484_6[iter_484_0] = anonteam_484_3
			elseif anonteam_484_7 <= 8 then
				anonteam_484_7 = (anonteam_484_7 - 5) / 3
				anonteam_484_6[iter_484_0] = anonteam_0_31.calculate_color(anonteam_484_4, anonteam_484_3, anonteam_484_7)
			else
				anonteam_484_7 = (anonteam_484_7 - 8) / 4
				anonteam_484_6[iter_484_0] = anonteam_0_31.calculate_color(anonteam_484_2, anonteam_484_4, anonteam_484_7)
			end
		else
			local anonteam_484_8 = anonteam_484_7 / 3

			anonteam_484_6[iter_484_0] = anonteam_0_31.calculate_color(anonteam_484_2, anonteam_484_3, anonteam_484_8)
		end
	end

	local anonteam_484_9 = "Extension"
	local anonteam_484_10 = ""

	for iter_484_1 = 1, #anonteam_484_9 do
		anonteam_484_10 = anonteam_484_10 .. "\a" .. anonteam_484_6[iter_484_1]:to_hex() .. anonteam_484_9:sub(iter_484_1, iter_484_1)
	end

	ui.sidebar(anonteam_484_10 .. " ", "\a" .. anonteam_484_6[1]:to_hex() .. "\xEE\x8C\xBB")
end)
utils.execute_after(0.5, function()
	-- function 485
	anonteam_0_2("\aFFFFFFFFext - " .. "\a{Link Active}" .. common.get_username() .. "\n")
end)
