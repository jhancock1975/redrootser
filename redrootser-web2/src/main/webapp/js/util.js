/**
 * 
 */
/**
 * @param str
 * returns true if string is empty, null or undefined
 */
function isEmpty(str) {
    return (!str || 0 === str.trim().length);
}

/**
 * @param str
 * @returns true if str is blank, null or undefined
 */
function isBlank(str) {
    return (!str || /^\s*$/.test(str.trim()));
}

/**
 * @param str
 * @returns true if str is blank, null, empty, or undefined
 */
function isBlankOrEmpty(str){
	return isEmpty(str) || (isBlank(str));
}

/**
 * 
 * @param str date in mm/dd/yyyy format
 * @returns date in yyyy-mm-dd format
 */
function toSqlDateStr(str){
	strArr = str.split("/");
	//for some reason day is off by one somewhere between
	//javascript->rest->sql table
	return strArr[2] + "-" + strArr[0] + "-" + (parseInt(strArr[1]) + 1);
}