/// @description Creates Echo Ring
// You can write your code in this editor
var precision,deg,currDeg,spd,prevNode,firstNode,node;
move_bounce_solid(true);
image_angle = direction;
image_alpha = 0;
speed = .001;
precision = 16;
deg		  = 360 / precision;
spd		  = 5;
currDeg   = 0;
prevNode  = 0;

//Start
for(i=0;i<precision;i++){
	//Create Echo Node
	node			= instance_create_depth(x,y,-1,obj_soundwave);
	node.speed		= spd;
	node.direction  = currDeg;
	node.node		= prevNode;
	
	//Updated Vars
	currDeg += deg;
	if(prevNode = 0){
		firstNode = node;
	}
	prevNode = node;
}

//Tie it up in the end
firstNode.node = node;
instance_destroy();
