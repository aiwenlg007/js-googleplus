<?php
function jietu($url,$savepath){//��ҳ��ͼ
	if(empty($savepath)){
		exit('��ͼ����Ŀ¼Ϊ�ջ��߲���Ŀ¼��');
	}else{
		//�����ͼĿ¼���������½�
		if(!file_exists($savepath)){
			mkdir($savepath);
		}
	}
	if(!url_exists($url)){
		exit('URL��ַ�����ڣ�');
	}
	$newImgName=time().rand(0,99999).'.jpg';
	$filename=rtrim($savepath,'/').'/'.$newImgName;//ƴװ���ɽ�ͼ���ļ���
	$rutycapt=dirname($_SERVER['SCRIPT_FILENAME']).'/js/IECapt.exe';//$_SERVER['SCRIPT_FILENAME'] ���ļ���������index.php �Ǿ���index.php��Ŀ¼ ����IECapt��·��
	$cmd="$rutycapt --url=$url --out=$filename";//ƴװ��ͼ����
	system($cmd);//ִ������
	//echo $cmd;
	return $newImgName;
}
function url_exists($url){ //�ж�URL��ַ�Ƿ����
	$head=@get_headers($url);
	if(is_array($head)){
		return true;
	}else{
		return false;
	}
}

?>