??
?/?/
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
?
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype?
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceApplyAdadelta
var	
accum
accum_update
lr"T
rho"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( ?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?
9
VarIsInitializedOp
resource
is_initialized
?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.15.52unknown??
?
conv2d_1_inputPlaceholder*
dtype0*/
_output_shapes
:?????????*$
shape:?????????
?
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"             *
_output_shapes
:*
dtype0*"
_class
loc:@conv2d_1/kernel
?
.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *???*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel*
dtype0
?
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *??>*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel*
dtype0
?
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*&
_output_shapes
: *
dtype0*"
_class
loc:@conv2d_1/kernel*
T0*

seed *
seed2 
?
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel*
T0
?
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: 
?
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*&
_output_shapes
: *
T0*"
_class
loc:@conv2d_1/kernel
?
conv2d_1/kernelVarHandleOp* 
shared_nameconv2d_1/kernel*
_output_shapes
: *
shape: *
	container *
dtype0*"
_class
loc:@conv2d_1/kernel
o
0conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
t
conv2d_1/kernel/AssignAssignVariableOpconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
?
conv2d_1/bias/Initializer/zerosConst*
_output_shapes
: * 
_class
loc:@conv2d_1/bias*
valueB *    *
dtype0
?
conv2d_1/biasVarHandleOp*
_output_shapes
: * 
_class
loc:@conv2d_1/bias*
dtype0*
	container *
shape: *
shared_nameconv2d_1/bias
k
.conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
e
conv2d_1/bias/AssignAssignVariableOpconv2d_1/biasconv2d_1/bias/Initializer/zeros*
dtype0
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
: 
g
conv2d_1/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
v
conv2d_1/Conv2D/ReadVariableOpReadVariableOpconv2d_1/kernel*
dtype0*&
_output_shapes
: 
?
conv2d_1/Conv2DConv2Dconv2d_1_inputconv2d_1/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
T0*
	dilations
*
paddingVALID*
explicit_paddings
 *
use_cudnn_on_gpu(*/
_output_shapes
:????????? 
i
conv2d_1/BiasAdd/ReadVariableOpReadVariableOpconv2d_1/bias*
dtype0*
_output_shapes
: 
?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:????????? 
a
conv2d_1/ReluReluconv2d_1/BiasAdd*/
_output_shapes
:????????? *
T0
?
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"          @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
?
.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *????*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0
?
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*"
_class
loc:@conv2d_2/kernel*
valueB
 *???=
?
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*&
_output_shapes
: @*

seed *
dtype0*
seed2 *"
_class
loc:@conv2d_2/kernel*
T0
?
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
T0
?
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*&
_output_shapes
: @*"
_class
loc:@conv2d_2/kernel
?
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*&
_output_shapes
: @
?
conv2d_2/kernelVarHandleOp*
dtype0*
shape: @*"
_class
loc:@conv2d_2/kernel*
	container * 
shared_nameconv2d_2/kernel*
_output_shapes
: 
o
0conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
t
conv2d_2/kernel/AssignAssignVariableOpconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
dtype0
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*
dtype0*&
_output_shapes
: @
?
conv2d_2/bias/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@*
dtype0*
valueB@*    
?
conv2d_2/biasVarHandleOp*
shape:@*
shared_nameconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
	container *
_output_shapes
: *
dtype0
k
.conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
e
conv2d_2/bias/AssignAssignVariableOpconv2d_2/biasconv2d_2/bias/Initializer/zeros*
dtype0
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
g
conv2d_2/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
v
conv2d_2/Conv2D/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_2/Conv2DConv2Dconv2d_1/Reluconv2d_2/Conv2D/ReadVariableOp*
T0*
strides
*/
_output_shapes
:?????????@*
explicit_paddings
 *
paddingVALID*
use_cudnn_on_gpu(*
	dilations
*
data_formatNHWC
i
conv2d_2/BiasAdd/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/BiasAdd/ReadVariableOp*
data_formatNHWC*
T0*/
_output_shapes
:?????????@
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:?????????@
?
max_pooling2d_1/MaxPoolMaxPoolconv2d_2/Relu*/
_output_shapes
:?????????@*
T0*
paddingVALID*
ksize
*
data_formatNHWC*
strides

\
keras_learning_phase/inputConst*
_output_shapes
: *
dtype0
*
value	B
 Z 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
n
dropout_1/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
: 
Y
dropout_1/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ?>
?
dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
?
#dropout_1/cond/dropout/Shape/SwitchSwitchmax_pooling2d_1/MaxPooldropout_1/cond/pred_id*
T0*J
_output_shapes8
6:?????????@:?????????@**
_class 
loc:@max_pooling2d_1/MaxPool
?
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
_output_shapes
: *
dtype0
?
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
seed2 *
dtype0*

seed *
T0*/
_output_shapes
:?????????@
?
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
?
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*/
_output_shapes
:?????????@
?
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*/
_output_shapes
:?????????@
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *  ??
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
_output_shapes
: *
T0

 dropout_1/cond/dropout/truediv/xConst^dropout_1/cond/switch_t*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
dropout_1/cond/dropout/truedivRealDiv dropout_1/cond/dropout/truediv/xdropout_1/cond/dropout/sub*
T0*
_output_shapes
: 
?
#dropout_1/cond/dropout/GreaterEqualGreaterEqual%dropout_1/cond/dropout/random_uniformdropout_1/cond/dropout/rate*
T0*/
_output_shapes
:?????????@
?
dropout_1/cond/dropout/mulMul%dropout_1/cond/dropout/Shape/Switch:1dropout_1/cond/dropout/truediv*/
_output_shapes
:?????????@*
T0
?
dropout_1/cond/dropout/CastCast#dropout_1/cond/dropout/GreaterEqual*
Truncate( *

DstT0*

SrcT0
*/
_output_shapes
:?????????@
?
dropout_1/cond/dropout/mul_1Muldropout_1/cond/dropout/muldropout_1/cond/dropout/Cast*
T0*/
_output_shapes
:?????????@
}
dropout_1/cond/IdentityIdentitydropout_1/cond/Identity/Switch*/
_output_shapes
:?????????@*
T0
?
dropout_1/cond/Identity/SwitchSwitchmax_pooling2d_1/MaxPooldropout_1/cond/pred_id*
T0**
_class 
loc:@max_pooling2d_1/MaxPool*J
_output_shapes8
6:?????????@:?????????@
?
dropout_1/cond/MergeMergedropout_1/cond/Identitydropout_1/cond/dropout/mul_1*1
_output_shapes
:?????????@: *
N*
T0
c
flatten_1/ShapeShapedropout_1/cond/Merge*
_output_shapes
:*
out_type0*
T0
g
flatten_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
i
flatten_1/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
i
flatten_1/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*

begin_mask *
T0*
_output_shapes
: *
shrink_axis_mask*
end_mask *
new_axis_mask *
ellipsis_mask *
Index0
d
flatten_1/Reshape/shape/1Const*
valueB :
?????????*
_output_shapes
: *
dtype0
?
flatten_1/Reshape/shapePackflatten_1/strided_sliceflatten_1/Reshape/shape/1*
N*

axis *
_output_shapes
:*
T0
?
flatten_1/ReshapeReshapedropout_1/cond/Mergeflatten_1/Reshape/shape*(
_output_shapes
:??????????H*
Tshape0*
T0
?
/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB" $  ?   *!
_class
loc:@dense_1/kernel
?
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *&?ϼ*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
?
-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *&??<*
_output_shapes
: *
dtype0
?
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
?H?*!
_class
loc:@dense_1/kernel*
T0*

seed 
?
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *!
_class
loc:@dense_1/kernel*
T0
?
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
?H?
?
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min* 
_output_shapes
:
?H?*
T0*!
_class
loc:@dense_1/kernel
?
dense_1/kernelVarHandleOp*
shape:
?H?*
_output_shapes
: *
	container *
shared_namedense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
?H?*
dtype0
?
dense_1/bias/Initializer/zerosConst*
_output_shapes	
:?*
_class
loc:@dense_1/bias*
valueB?*    *
dtype0
?
dense_1/biasVarHandleOp*
_output_shapes
: *
	container *
dtype0*
shape:?*
shared_namedense_1/bias*
_class
loc:@dense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes	
:?
n
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
?H?*
dtype0
?
dense_1/MatMulMatMulflatten_1/Reshapedense_1/MatMul/ReadVariableOp*
transpose_a( *(
_output_shapes
:??????????*
T0*
transpose_b( 
h
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes	
:?
?
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:??????????*
T0
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:??????????
n
dropout_2/cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

]
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
_output_shapes
: *
T0

Y
dropout_2/cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

z
dropout_2/cond/dropout/rateConst^dropout_2/cond/switch_t*
valueB
 *   ?*
dtype0*
_output_shapes
: 
?
dropout_2/cond/dropout/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
?
#dropout_2/cond/dropout/Shape/SwitchSwitchdense_1/Reludropout_2/cond/pred_id*
_class
loc:@dense_1/Relu*<
_output_shapes*
(:??????????:??????????*
T0
?
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
?
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*

seed *
dtype0*
T0*(
_output_shapes
:??????????*
seed2 
?
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:??????????
?
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*(
_output_shapes
:??????????*
T0
{
dropout_2/cond/dropout/sub/xConst^dropout_2/cond/switch_t*
dtype0*
valueB
 *  ??*
_output_shapes
: 
}
dropout_2/cond/dropout/subSubdropout_2/cond/dropout/sub/xdropout_2/cond/dropout/rate*
T0*
_output_shapes
: 

 dropout_2/cond/dropout/truediv/xConst^dropout_2/cond/switch_t*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
dropout_2/cond/dropout/truedivRealDiv dropout_2/cond/dropout/truediv/xdropout_2/cond/dropout/sub*
T0*
_output_shapes
: 
?
#dropout_2/cond/dropout/GreaterEqualGreaterEqual%dropout_2/cond/dropout/random_uniformdropout_2/cond/dropout/rate*(
_output_shapes
:??????????*
T0
?
dropout_2/cond/dropout/mulMul%dropout_2/cond/dropout/Shape/Switch:1dropout_2/cond/dropout/truediv*
T0*(
_output_shapes
:??????????
?
dropout_2/cond/dropout/CastCast#dropout_2/cond/dropout/GreaterEqual*(
_output_shapes
:??????????*

SrcT0
*

DstT0*
Truncate( 
?
dropout_2/cond/dropout/mul_1Muldropout_2/cond/dropout/muldropout_2/cond/dropout/Cast*
T0*(
_output_shapes
:??????????
v
dropout_2/cond/IdentityIdentitydropout_2/cond/Identity/Switch*
T0*(
_output_shapes
:??????????
?
dropout_2/cond/Identity/SwitchSwitchdense_1/Reludropout_2/cond/pred_id*<
_output_shapes*
(:??????????:??????????*
T0*
_class
loc:@dense_1/Relu
?
dropout_2/cond/MergeMergedropout_2/cond/Identitydropout_2/cond/dropout/mul_1*
T0*
N**
_output_shapes
:??????????: 
?
/dense_2/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_2/kernel*
_output_shapes
:*
valueB"?   
   *
dtype0
?
-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *̈́U?*
dtype0*
_output_shapes
: *!
_class
loc:@dense_2/kernel
?
-dense_2/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_2/kernel*
valueB
 *̈́U>*
_output_shapes
: *
dtype0
?
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	?
*

seed *
seed2 *
dtype0
?
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *!
_class
loc:@dense_2/kernel
?
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	?

?
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	?
*
T0*!
_class
loc:@dense_2/kernel
?
dense_2/kernelVarHandleOp*
shape:	?
*!
_class
loc:@dense_2/kernel*
	container *
_output_shapes
: *
shared_namedense_2/kernel*
dtype0
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 
q
dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*
dtype0
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes
:	?

?
dense_2/bias/Initializer/zerosConst*
_output_shapes
:
*
valueB
*    *
dtype0*
_class
loc:@dense_2/bias
?
dense_2/biasVarHandleOp*
shared_namedense_2/bias*
_output_shapes
: *
dtype0*
shape:
*
	container *
_class
loc:@dense_2/bias
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
b
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
dtype0
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
m
dense_2/MatMul/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes
:	?

?
dense_2/MatMulMatMuldropout_2/cond/Mergedense_2/MatMul/ReadVariableOp*'
_output_shapes
:?????????
*
transpose_a( *
T0*
transpose_b( 
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
?
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/BiasAdd/ReadVariableOp*
data_formatNHWC*
T0*'
_output_shapes
:?????????

]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*'
_output_shapes
:?????????
*
T0
?
PlaceholderPlaceholder*
dtype0*J
_output_shapes8
6:4????????????????????????????????????*?
shape6:4????????????????????????????????????
O
AssignVariableOpAssignVariableOpconv2d_1/kernelPlaceholder*
dtype0
y
ReadVariableOpReadVariableOpconv2d_1/kernel^AssignVariableOp*&
_output_shapes
: *
dtype0
h
Placeholder_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
Q
AssignVariableOp_1AssignVariableOpconv2d_1/biasPlaceholder_1*
dtype0
o
ReadVariableOp_1ReadVariableOpconv2d_1/bias^AssignVariableOp_1*
_output_shapes
: *
dtype0
?
Placeholder_2Placeholder*J
_output_shapes8
6:4????????????????????????????????????*
dtype0*?
shape6:4????????????????????????????????????
S
AssignVariableOp_2AssignVariableOpconv2d_2/kernelPlaceholder_2*
dtype0
}
ReadVariableOp_2ReadVariableOpconv2d_2/kernel^AssignVariableOp_2*
dtype0*&
_output_shapes
: @
h
Placeholder_3Placeholder*#
_output_shapes
:?????????*
shape:?????????*
dtype0
Q
AssignVariableOp_3AssignVariableOpconv2d_2/biasPlaceholder_3*
dtype0
o
ReadVariableOp_3ReadVariableOpconv2d_2/bias^AssignVariableOp_3*
_output_shapes
:@*
dtype0
?
Placeholder_4Placeholder*
dtype0*0
_output_shapes
:??????????????????*%
shape:??????????????????
R
AssignVariableOp_4AssignVariableOpdense_1/kernelPlaceholder_4*
dtype0
v
ReadVariableOp_4ReadVariableOpdense_1/kernel^AssignVariableOp_4* 
_output_shapes
:
?H?*
dtype0
h
Placeholder_5Placeholder*#
_output_shapes
:?????????*
shape:?????????*
dtype0
P
AssignVariableOp_5AssignVariableOpdense_1/biasPlaceholder_5*
dtype0
o
ReadVariableOp_5ReadVariableOpdense_1/bias^AssignVariableOp_5*
dtype0*
_output_shapes	
:?
?
Placeholder_6Placeholder*0
_output_shapes
:??????????????????*%
shape:??????????????????*
dtype0
R
AssignVariableOp_6AssignVariableOpdense_2/kernelPlaceholder_6*
dtype0
u
ReadVariableOp_6ReadVariableOpdense_2/kernel^AssignVariableOp_6*
dtype0*
_output_shapes
:	?

h
Placeholder_7Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
P
AssignVariableOp_7AssignVariableOpdense_2/biasPlaceholder_7*
dtype0
n
ReadVariableOp_7ReadVariableOpdense_2/bias^AssignVariableOp_7*
dtype0*
_output_shapes
:

O
VarIsInitializedOpVarIsInitializedOpconv2d_1/bias*
_output_shapes
: 
Q
VarIsInitializedOp_1VarIsInitializedOpconv2d_2/bias*
_output_shapes
: 
R
VarIsInitializedOp_2VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
R
VarIsInitializedOp_3VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
P
VarIsInitializedOp_4VarIsInitializedOpdense_1/bias*
_output_shapes
: 
S
VarIsInitializedOp_5VarIsInitializedOpconv2d_2/kernel*
_output_shapes
: 
P
VarIsInitializedOp_6VarIsInitializedOpdense_2/bias*
_output_shapes
: 
S
VarIsInitializedOp_7VarIsInitializedOpconv2d_1/kernel*
_output_shapes
: 
?
initNoOp^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign
?
dense_2_targetPlaceholder*%
shape:??????????????????*
dtype0*0
_output_shapes
:??????????????????
v
total/Initializer/zerosConst*
dtype0*
_class

loc:@total*
_output_shapes
: *
valueB
 *    
?
totalVarHandleOp*
shared_nametotal*
dtype0*
shape: *
_output_shapes
: *
_class

loc:@total*
	container 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
v
count/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *
dtype0*
_class

loc:@count
?
countVarHandleOp*
_output_shapes
: *
shared_namecount*
_class

loc:@count*
shape: *
	container *
dtype0
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
g
metrics/acc/ArgMax/dimensionConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
metrics/acc/ArgMaxArgMaxdense_2_targetmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:?????????
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
?????????*
_output_shapes
: *
dtype0
?
metrics/acc/ArgMax_1ArgMaxdense_2/Softmaxmetrics/acc/ArgMax_1/dimension*#
_output_shapes
:?????????*
output_type0	*

Tidx0*
T0
?
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*#
_output_shapes
:?????????*
T0	*
incompatible_shape_error(
x
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*#
_output_shapes
:?????????*

DstT0*
Truncate( 
[
metrics/acc/ConstConst*
valueB: *
_output_shapes
:*
dtype0
y
metrics/acc/SumSummetrics/acc/Castmetrics/acc/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0
?
metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
[
metrics/acc/SizeSizemetrics/acc/Cast*
out_type0*
T0*
_output_shapes
: 
l
metrics/acc/Cast_1Castmetrics/acc/Size*
Truncate( *
_output_shapes
: *

SrcT0*

DstT0
?
!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_1 ^metrics/acc/AssignAddVariableOp*
dtype0
?
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
?
metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
_output_shapes
: *
T0
\
loss/dense_2_loss/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: 
z
8loss/dense_2_loss/softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
value	B :*
dtype0
?
9loss/dense_2_loss/softmax_cross_entropy_with_logits/ShapeShapedense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
|
:loss/dense_2_loss/softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
_output_shapes
: *
dtype0
?
;loss/dense_2_loss/softmax_cross_entropy_with_logits/Shape_1Shapedense_2/BiasAdd*
_output_shapes
:*
T0*
out_type0
{
9loss/dense_2_loss/softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
value	B :*
dtype0
?
7loss/dense_2_loss/softmax_cross_entropy_with_logits/SubSub:loss/dense_2_loss/softmax_cross_entropy_with_logits/Rank_19loss/dense_2_loss/softmax_cross_entropy_with_logits/Sub/y*
_output_shapes
: *
T0
?
?loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice/beginPack7loss/dense_2_loss/softmax_cross_entropy_with_logits/Sub*
T0*

axis *
_output_shapes
:*
N
?
>loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
?
9loss/dense_2_loss/softmax_cross_entropy_with_logits/SliceSlice;loss/dense_2_loss/softmax_cross_entropy_with_logits/Shape_1?loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice/begin>loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice/size*
T0*
_output_shapes
:*
Index0
?
Closs/dense_2_loss/softmax_cross_entropy_with_logits/concat/values_0Const*
dtype0*
valueB:
?????????*
_output_shapes
:
?
?loss/dense_2_loss/softmax_cross_entropy_with_logits/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
:loss/dense_2_loss/softmax_cross_entropy_with_logits/concatConcatV2Closs/dense_2_loss/softmax_cross_entropy_with_logits/concat/values_09loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice?loss/dense_2_loss/softmax_cross_entropy_with_logits/concat/axis*

Tidx0*
N*
_output_shapes
:*
T0
?
;loss/dense_2_loss/softmax_cross_entropy_with_logits/ReshapeReshapedense_2/BiasAdd:loss/dense_2_loss/softmax_cross_entropy_with_logits/concat*
T0*
Tshape0*0
_output_shapes
:??????????????????
|
:loss/dense_2_loss/softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
value	B :*
dtype0
?
;loss/dense_2_loss/softmax_cross_entropy_with_logits/Shape_2Shapedense_2_target*
T0*
out_type0*
_output_shapes
:
}
;loss/dense_2_loss/softmax_cross_entropy_with_logits/Sub_1/yConst*
dtype0*
value	B :*
_output_shapes
: 
?
9loss/dense_2_loss/softmax_cross_entropy_with_logits/Sub_1Sub:loss/dense_2_loss/softmax_cross_entropy_with_logits/Rank_2;loss/dense_2_loss/softmax_cross_entropy_with_logits/Sub_1/y*
_output_shapes
: *
T0
?
Aloss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_1/beginPack9loss/dense_2_loss/softmax_cross_entropy_with_logits/Sub_1*
_output_shapes
:*
N*
T0*

axis 
?
@loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
?
;loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_1Slice;loss/dense_2_loss/softmax_cross_entropy_with_logits/Shape_2Aloss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_1/begin@loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_1/size*
T0*
_output_shapes
:*
Index0
?
Eloss/dense_2_loss/softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
?
Aloss/dense_2_loss/softmax_cross_entropy_with_logits/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
<loss/dense_2_loss/softmax_cross_entropy_with_logits/concat_1ConcatV2Eloss/dense_2_loss/softmax_cross_entropy_with_logits/concat_1/values_0;loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_1Aloss/dense_2_loss/softmax_cross_entropy_with_logits/concat_1/axis*
T0*
N*

Tidx0*
_output_shapes
:
?
=loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_1Reshapedense_2_target<loss/dense_2_loss/softmax_cross_entropy_with_logits/concat_1*
Tshape0*0
_output_shapes
:??????????????????*
T0
?
3loss/dense_2_loss/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits;loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape=loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_1*?
_output_shapes-
+:?????????:??????????????????*
T0
}
;loss/dense_2_loss/softmax_cross_entropy_with_logits/Sub_2/yConst*
dtype0*
_output_shapes
: *
value	B :
?
9loss/dense_2_loss/softmax_cross_entropy_with_logits/Sub_2Sub8loss/dense_2_loss/softmax_cross_entropy_with_logits/Rank;loss/dense_2_loss/softmax_cross_entropy_with_logits/Sub_2/y*
_output_shapes
: *
T0
?
Aloss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
_output_shapes
:*
dtype0
?
@loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_2/sizePack9loss/dense_2_loss/softmax_cross_entropy_with_logits/Sub_2*
N*
T0*
_output_shapes
:*

axis 
?
;loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_2Slice9loss/dense_2_loss/softmax_cross_entropy_with_logits/ShapeAloss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_2/begin@loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
_output_shapes
:*
T0
?
=loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_2Reshape3loss/dense_2_loss/softmax_cross_entropy_with_logits;loss/dense_2_loss/softmax_cross_entropy_with_logits/Slice_2*#
_output_shapes
:?????????*
Tshape0*
T0
k
&loss/dense_2_loss/weighted_loss/Cast/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Tloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
valueB *
dtype0
?
Sloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
_output_shapes
: *
dtype0
?
Sloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShape=loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_2*
out_type0*
T0*
_output_shapes
:
?
Rloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
value	B :*
dtype0
j
bloss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
?
Aloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ShapeShape=loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_2c^loss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
out_type0*
T0
?
Aloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ConstConstc^loss/dense_2_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ??*
_output_shapes
: *
dtype0
?
;loss/dense_2_loss/weighted_loss/broadcast_weights/ones_likeFillAloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/ShapeAloss/dense_2_loss/weighted_loss/broadcast_weights/ones_like/Const*

index_type0*#
_output_shapes
:?????????*
T0
?
1loss/dense_2_loss/weighted_loss/broadcast_weightsMul&loss/dense_2_loss/weighted_loss/Cast/x;loss/dense_2_loss/weighted_loss/broadcast_weights/ones_like*#
_output_shapes
:?????????*
T0
?
#loss/dense_2_loss/weighted_loss/MulMul=loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_21loss/dense_2_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
c
loss/dense_2_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
?
loss/dense_2_loss/SumSum#loss/dense_2_loss/weighted_loss/Mulloss/dense_2_loss/Const_1*
T0*
	keep_dims( *
_output_shapes
: *

Tidx0
|
loss/dense_2_loss/num_elementsSize#loss/dense_2_loss/weighted_loss/Mul*
out_type0*
T0*
_output_shapes
: 
?
#loss/dense_2_loss/num_elements/CastCastloss/dense_2_loss/num_elements*

DstT0*
Truncate( *

SrcT0*
_output_shapes
: 
\
loss/dense_2_loss/Const_2Const*
dtype0*
valueB *
_output_shapes
: 
?
loss/dense_2_loss/Sum_1Sumloss/dense_2_loss/Sumloss/dense_2_loss/Const_2*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
?
loss/dense_2_loss/valueDivNoNanloss/dense_2_loss/Sum_1#loss/dense_2_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
U
loss/mulMul
loss/mul/xloss/dense_2_loss/value*
T0*
_output_shapes
: 
n
+training/Adadelta/gradients/gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
t
/training/Adadelta/gradients/gradients/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  ??
?
*training/Adadelta/gradients/gradients/FillFill+training/Adadelta/gradients/gradients/Shape/training/Adadelta/gradients/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
?
7training/Adadelta/gradients/gradients/loss/mul_grad/MulMul*training/Adadelta/gradients/gradients/Fillloss/dense_2_loss/value*
_output_shapes
: *
T0
?
9training/Adadelta/gradients/gradients/loss/mul_grad/Mul_1Mul*training/Adadelta/gradients/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
?
Htraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
?
Jtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
?
Xtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsHtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/ShapeJtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
Mtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nanDivNoNan9training/Adadelta/gradients/gradients/loss/mul_grad/Mul_1#loss/dense_2_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
Ftraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/SumSumMtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nanXtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
?
Jtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/ReshapeReshapeFtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/SumHtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/Shape*
_output_shapes
: *
T0*
Tshape0
?
Ftraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/NegNegloss/dense_2_loss/Sum_1*
T0*
_output_shapes
: 
?
Otraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nan_1DivNoNanFtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/Neg#loss/dense_2_loss/num_elements/Cast*
_output_shapes
: *
T0
?
Otraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nan_2DivNoNanOtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nan_1#loss/dense_2_loss/num_elements/Cast*
T0*
_output_shapes
: 
?
Ftraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/mulMul9training/Adadelta/gradients/gradients/loss/mul_grad/Mul_1Otraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
?
Htraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/Sum_1SumFtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/mulZtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
?
Ltraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/Reshape_1ReshapeHtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/Sum_1Jtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
?
Ptraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB 
?
Jtraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeReshapeJtraining/Adadelta/gradients/gradients/loss/dense_2_loss/value_grad/ReshapePtraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_1_grad/Reshape/shape*
T0*
_output_shapes
: *
Tshape0
?
Htraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_1_grad/ConstConst*
dtype0*
valueB *
_output_shapes
: 
?
Gtraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_1_grad/TileTileJtraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeHtraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_1_grad/Const*

Tmultiples0*
_output_shapes
: *
T0
?
Ntraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0
?
Htraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshapeGtraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_1_grad/TileNtraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
?
Ftraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_grad/ShapeShape#loss/dense_2_loss/weighted_loss/Mul*
_output_shapes
:*
out_type0*
T0
?
Etraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_grad/TileTileHtraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_grad/ReshapeFtraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_grad/Shape*

Tmultiples0*#
_output_shapes
:?????????*
T0
?
Ttraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/ShapeShape=loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_2*
_output_shapes
:*
T0*
out_type0
?
Vtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1Shape1loss/dense_2_loss/weighted_loss/broadcast_weights*
T0*
out_type0*
_output_shapes
:
?
dtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsTtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/ShapeVtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
Rtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/MulMulEtraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_grad/Tile1loss/dense_2_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:?????????
?
Rtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/SumSumRtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Muldtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
Vtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/ReshapeReshapeRtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/SumTtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape*
Tshape0*#
_output_shapes
:?????????*
T0
?
Ttraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Mul_1Mul=loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_2Etraining/Adadelta/gradients/gradients/loss/dense_2_loss/Sum_grad/Tile*#
_output_shapes
:?????????*
T0
?
Ttraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Sum_1SumTtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Mul_1ftraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Xtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Reshape_1ReshapeTtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Sum_1Vtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Shape_1*
Tshape0*#
_output_shapes
:?????????*
T0
?
ntraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape3loss/dense_2_loss/softmax_cross_entropy_with_logits*
_output_shapes
:*
out_type0*
T0
?
ptraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshapeVtraining/Adadelta/gradients/gradients/loss/dense_2_loss/weighted_loss/Mul_grad/Reshapentraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
0training/Adadelta/gradients/gradients/zeros_like	ZerosLike5loss/dense_2_loss/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:??????????????????
?
mtraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
itraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsptraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshapemtraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:?????????
?
btraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/mulMulitraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/ExpandDims5loss/dense_2_loss/softmax_cross_entropy_with_logits:1*0
_output_shapes
:??????????????????*
T0
?
itraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax;loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape*0
_output_shapes
:??????????????????*
T0
?
btraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/NegNegitraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/LogSoftmax*0
_output_shapes
:??????????????????*
T0
?
otraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
ktraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsptraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshapeotraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*'
_output_shapes
:?????????*

Tdim0
?
dtraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/mul_1Mulktraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1btraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/Neg*
T0*0
_output_shapes
:??????????????????
?
ltraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapedense_2/BiasAdd*
T0*
_output_shapes
:*
out_type0
?
ntraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapebtraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits_grad/mulltraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
Tshape0*'
_output_shapes
:?????????
*
T0
?
Ftraining/Adadelta/gradients/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGradntraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
_output_shapes
:
*
T0*
data_formatNHWC
?
@training/Adadelta/gradients/gradients/dense_2/MatMul_grad/MatMulMatMulntraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshapedense_2/MatMul/ReadVariableOp*(
_output_shapes
:??????????*
transpose_b(*
transpose_a( *
T0
?
Btraining/Adadelta/gradients/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_2/cond/Mergentraining/Adadelta/gradients/gradients/loss/dense_2_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
T0*
transpose_a(*
transpose_b( *
_output_shapes
:	?

?
Itraining/Adadelta/gradients/gradients/dropout_2/cond/Merge_grad/cond_gradSwitch@training/Adadelta/gradients/gradients/dense_2/MatMul_grad/MatMuldropout_2/cond/pred_id*S
_classI
GEloc:@training/Adadelta/gradients/gradients/dense_2/MatMul_grad/MatMul*
T0*<
_output_shapes*
(:??????????:??????????
?
Mtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/ShapeShapedropout_2/cond/dropout/mul*
_output_shapes
:*
T0*
out_type0
?
Otraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1Shapedropout_2/cond/dropout/Cast*
_output_shapes
:*
T0*
out_type0
?
]training/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsMtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/ShapeOtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
Ktraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/MulMulKtraining/Adadelta/gradients/gradients/dropout_2/cond/Merge_grad/cond_grad:1dropout_2/cond/dropout/Cast*
T0*(
_output_shapes
:??????????
?
Ktraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/SumSumKtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Mul]training/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
?
Otraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/ReshapeReshapeKtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/SumMtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Shape*
Tshape0*(
_output_shapes
:??????????*
T0
?
Mtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Mul_1Muldropout_2/cond/dropout/mulKtraining/Adadelta/gradients/gradients/dropout_2/cond/Merge_grad/cond_grad:1*(
_output_shapes
:??????????*
T0
?
Mtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Sum_1SumMtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Mul_1_training/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
Qtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Reshape_1ReshapeMtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Sum_1Otraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Shape_1*
Tshape0*
T0*(
_output_shapes
:??????????
?
,training/Adadelta/gradients/gradients/SwitchSwitchdense_1/Reludropout_2/cond/pred_id*<
_output_shapes*
(:??????????:??????????*
T0
?
.training/Adadelta/gradients/gradients/IdentityIdentity.training/Adadelta/gradients/gradients/Switch:1*
T0*(
_output_shapes
:??????????
?
-training/Adadelta/gradients/gradients/Shape_1Shape.training/Adadelta/gradients/gradients/Switch:1*
out_type0*
_output_shapes
:*
T0
?
1training/Adadelta/gradients/gradients/zeros/ConstConst/^training/Adadelta/gradients/gradients/Identity*
_output_shapes
: *
valueB
 *    *
dtype0
?
+training/Adadelta/gradients/gradients/zerosFill-training/Adadelta/gradients/gradients/Shape_11training/Adadelta/gradients/gradients/zeros/Const*(
_output_shapes
:??????????*
T0*

index_type0
?
Straining/Adadelta/gradients/gradients/dropout_2/cond/Identity/Switch_grad/cond_gradMergeItraining/Adadelta/gradients/gradients/dropout_2/cond/Merge_grad/cond_grad+training/Adadelta/gradients/gradients/zeros*
N**
_output_shapes
:??????????: *
T0
?
Ktraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1*
T0*
_output_shapes
:*
out_type0
?
Mtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/Shape_1Shapedropout_2/cond/dropout/truediv*
T0*
_output_shapes
: *
out_type0
?
[training/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsKtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/ShapeMtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
Itraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/MulMulOtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Reshapedropout_2/cond/dropout/truediv*
T0*(
_output_shapes
:??????????
?
Itraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/SumSumItraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/Mul[training/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
?
Mtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/ReshapeReshapeItraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/SumKtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/Shape*(
_output_shapes
:??????????*
Tshape0*
T0
?
Ktraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Mul%dropout_2/cond/dropout/Shape/Switch:1Otraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_1_grad/Reshape*(
_output_shapes
:??????????*
T0
?
Ktraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/Sum_1SumKtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/Mul_1]training/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
T0*
	keep_dims( 
?
Otraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/Reshape_1ReshapeKtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/Sum_1Mtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
?
.training/Adadelta/gradients/gradients/Switch_1Switchdense_1/Reludropout_2/cond/pred_id*<
_output_shapes*
(:??????????:??????????*
T0
?
0training/Adadelta/gradients/gradients/Identity_1Identity.training/Adadelta/gradients/gradients/Switch_1*
T0*(
_output_shapes
:??????????
?
-training/Adadelta/gradients/gradients/Shape_2Shape.training/Adadelta/gradients/gradients/Switch_1*
_output_shapes
:*
T0*
out_type0
?
3training/Adadelta/gradients/gradients/zeros_1/ConstConst1^training/Adadelta/gradients/gradients/Identity_1*
_output_shapes
: *
dtype0*
valueB
 *    
?
-training/Adadelta/gradients/gradients/zeros_1Fill-training/Adadelta/gradients/gradients/Shape_23training/Adadelta/gradients/gradients/zeros_1/Const*

index_type0*(
_output_shapes
:??????????*
T0
?
Xtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/Shape/Switch_grad/cond_gradMerge-training/Adadelta/gradients/gradients/zeros_1Mtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/mul_grad/Reshape*
T0*
N**
_output_shapes
:??????????: 
?
*training/Adadelta/gradients/gradients/AddNAddNStraining/Adadelta/gradients/gradients/dropout_2/cond/Identity/Switch_grad/cond_gradXtraining/Adadelta/gradients/gradients/dropout_2/cond/dropout/Shape/Switch_grad/cond_grad*(
_output_shapes
:??????????*f
_class\
ZXloc:@training/Adadelta/gradients/gradients/dropout_2/cond/Identity/Switch_grad/cond_grad*
N*
T0
?
@training/Adadelta/gradients/gradients/dense_1/Relu_grad/ReluGradReluGrad*training/Adadelta/gradients/gradients/AddNdense_1/Relu*(
_output_shapes
:??????????*
T0
?
Ftraining/Adadelta/gradients/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad@training/Adadelta/gradients/gradients/dense_1/Relu_grad/ReluGrad*
_output_shapes	
:?*
T0*
data_formatNHWC
?
@training/Adadelta/gradients/gradients/dense_1/MatMul_grad/MatMulMatMul@training/Adadelta/gradients/gradients/dense_1/Relu_grad/ReluGraddense_1/MatMul/ReadVariableOp*
transpose_b(*
T0*(
_output_shapes
:??????????H*
transpose_a( 
?
Btraining/Adadelta/gradients/gradients/dense_1/MatMul_grad/MatMul_1MatMulflatten_1/Reshape@training/Adadelta/gradients/gradients/dense_1/Relu_grad/ReluGrad* 
_output_shapes
:
?H?*
T0*
transpose_a(*
transpose_b( 
?
Btraining/Adadelta/gradients/gradients/flatten_1/Reshape_grad/ShapeShapedropout_1/cond/Merge*
_output_shapes
:*
T0*
out_type0
?
Dtraining/Adadelta/gradients/gradients/flatten_1/Reshape_grad/ReshapeReshape@training/Adadelta/gradients/gradients/dense_1/MatMul_grad/MatMulBtraining/Adadelta/gradients/gradients/flatten_1/Reshape_grad/Shape*/
_output_shapes
:?????????@*
Tshape0*
T0
?
Itraining/Adadelta/gradients/gradients/dropout_1/cond/Merge_grad/cond_gradSwitchDtraining/Adadelta/gradients/gradients/flatten_1/Reshape_grad/Reshapedropout_1/cond/pred_id*W
_classM
KIloc:@training/Adadelta/gradients/gradients/flatten_1/Reshape_grad/Reshape*
T0*J
_output_shapes8
6:?????????@:?????????@
?
Mtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeShapedropout_1/cond/dropout/mul*
out_type0*
T0*
_output_shapes
:
?
Otraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1Shapedropout_1/cond/dropout/Cast*
T0*
out_type0*
_output_shapes
:
?
]training/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsMtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/ShapeOtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
Ktraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/MulMulKtraining/Adadelta/gradients/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Cast*
T0*/
_output_shapes
:?????????@
?
Ktraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/SumSumKtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Mul]training/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
Otraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/ReshapeReshapeKtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/SumMtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Shape*
T0*/
_output_shapes
:?????????@*
Tshape0
?
Mtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1Muldropout_1/cond/dropout/mulKtraining/Adadelta/gradients/gradients/dropout_1/cond/Merge_grad/cond_grad:1*/
_output_shapes
:?????????@*
T0
?
Mtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1SumMtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Mul_1_training/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Qtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape_1ReshapeMtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Sum_1Otraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Shape_1*
Tshape0*/
_output_shapes
:?????????@*
T0
?
.training/Adadelta/gradients/gradients/Switch_2Switchmax_pooling2d_1/MaxPooldropout_1/cond/pred_id*
T0*J
_output_shapes8
6:?????????@:?????????@
?
0training/Adadelta/gradients/gradients/Identity_2Identity0training/Adadelta/gradients/gradients/Switch_2:1*/
_output_shapes
:?????????@*
T0
?
-training/Adadelta/gradients/gradients/Shape_3Shape0training/Adadelta/gradients/gradients/Switch_2:1*
out_type0*
_output_shapes
:*
T0
?
3training/Adadelta/gradients/gradients/zeros_2/ConstConst1^training/Adadelta/gradients/gradients/Identity_2*
_output_shapes
: *
dtype0*
valueB
 *    
?
-training/Adadelta/gradients/gradients/zeros_2Fill-training/Adadelta/gradients/gradients/Shape_33training/Adadelta/gradients/gradients/zeros_2/Const*/
_output_shapes
:?????????@*

index_type0*
T0
?
Straining/Adadelta/gradients/gradients/dropout_1/cond/Identity/Switch_grad/cond_gradMergeItraining/Adadelta/gradients/gradients/dropout_1/cond/Merge_grad/cond_grad-training/Adadelta/gradients/gradients/zeros_2*1
_output_shapes
:?????????@: *
N*
T0
?
Ktraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
out_type0*
_output_shapes
:*
T0
?
Mtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/Shape_1Shapedropout_1/cond/dropout/truediv*
out_type0*
_output_shapes
: *
T0
?
[training/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsKtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/ShapeMtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
Itraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/MulMulOtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Reshapedropout_1/cond/dropout/truediv*
T0*/
_output_shapes
:?????????@
?
Itraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/SumSumItraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/Mul[training/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
?
Mtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshapeItraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/SumKtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/Shape*/
_output_shapes
:?????????@*
T0*
Tshape0
?
Ktraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Mul%dropout_1/cond/dropout/Shape/Switch:1Otraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_1_grad/Reshape*/
_output_shapes
:?????????@*
T0
?
Ktraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/Sum_1SumKtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/Mul_1]training/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
?
Otraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/Reshape_1ReshapeKtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Mtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
?
.training/Adadelta/gradients/gradients/Switch_3Switchmax_pooling2d_1/MaxPooldropout_1/cond/pred_id*J
_output_shapes8
6:?????????@:?????????@*
T0
?
0training/Adadelta/gradients/gradients/Identity_3Identity.training/Adadelta/gradients/gradients/Switch_3*
T0*/
_output_shapes
:?????????@
?
-training/Adadelta/gradients/gradients/Shape_4Shape.training/Adadelta/gradients/gradients/Switch_3*
out_type0*
T0*
_output_shapes
:
?
3training/Adadelta/gradients/gradients/zeros_3/ConstConst1^training/Adadelta/gradients/gradients/Identity_3*
valueB
 *    *
_output_shapes
: *
dtype0
?
-training/Adadelta/gradients/gradients/zeros_3Fill-training/Adadelta/gradients/gradients/Shape_43training/Adadelta/gradients/gradients/zeros_3/Const*/
_output_shapes
:?????????@*
T0*

index_type0
?
Xtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_gradMerge-training/Adadelta/gradients/gradients/zeros_3Mtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/mul_grad/Reshape*
N*
T0*1
_output_shapes
:?????????@: 
?
,training/Adadelta/gradients/gradients/AddN_1AddNStraining/Adadelta/gradients/gradients/dropout_1/cond/Identity/Switch_grad/cond_gradXtraining/Adadelta/gradients/gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_grad*f
_class\
ZXloc:@training/Adadelta/gradients/gradients/dropout_1/cond/Identity/Switch_grad/cond_grad*
T0*/
_output_shapes
:?????????@*
N
?
Ntraining/Adadelta/gradients/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_2/Relumax_pooling2d_1/MaxPool,training/Adadelta/gradients/gradients/AddN_1*
paddingVALID*
data_formatNHWC*
strides
*/
_output_shapes
:?????????@*
ksize
*
T0
?
Atraining/Adadelta/gradients/gradients/conv2d_2/Relu_grad/ReluGradReluGradNtraining/Adadelta/gradients/gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_2/Relu*
T0*/
_output_shapes
:?????????@
?
Gtraining/Adadelta/gradients/gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradAtraining/Adadelta/gradients/gradients/conv2d_2/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
:@
?
Atraining/Adadelta/gradients/gradients/conv2d_2/Conv2D_grad/ShapeNShapeNconv2d_1/Reluconv2d_2/Conv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::*
out_type0
?
Ntraining/Adadelta/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputAtraining/Adadelta/gradients/gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/Conv2D/ReadVariableOpAtraining/Adadelta/gradients/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*
paddingVALID*
data_formatNHWC*
strides
*/
_output_shapes
:????????? *
use_cudnn_on_gpu(*
	dilations
*
explicit_paddings
 
?
Otraining/Adadelta/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_1/ReluCtraining/Adadelta/gradients/gradients/conv2d_2/Conv2D_grad/ShapeN:1Atraining/Adadelta/gradients/gradients/conv2d_2/Relu_grad/ReluGrad*
T0*
paddingVALID*
data_formatNHWC*
	dilations
*&
_output_shapes
: @*
use_cudnn_on_gpu(*
strides
*
explicit_paddings
 
?
Atraining/Adadelta/gradients/gradients/conv2d_1/Relu_grad/ReluGradReluGradNtraining/Adadelta/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputconv2d_1/Relu*
T0*/
_output_shapes
:????????? 
?
Gtraining/Adadelta/gradients/gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradAtraining/Adadelta/gradients/gradients/conv2d_1/Relu_grad/ReluGrad*
T0*
_output_shapes
: *
data_formatNHWC
?
Atraining/Adadelta/gradients/gradients/conv2d_1/Conv2D_grad/ShapeNShapeNconv2d_1_inputconv2d_1/Conv2D/ReadVariableOp*
out_type0*
N* 
_output_shapes
::*
T0
?
Ntraining/Adadelta/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputAtraining/Adadelta/gradients/gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/Conv2D/ReadVariableOpAtraining/Adadelta/gradients/gradients/conv2d_1/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
	dilations
*
paddingVALID*/
_output_shapes
:?????????*
explicit_paddings
 *
use_cudnn_on_gpu(*
strides

?
Otraining/Adadelta/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_1_inputCtraining/Adadelta/gradients/gradients/conv2d_1/Conv2D_grad/ShapeN:1Atraining/Adadelta/gradients/gradients/conv2d_1/Relu_grad/ReluGrad*
strides
*&
_output_shapes
: *
explicit_paddings
 *
T0*
use_cudnn_on_gpu(*
paddingVALID*
data_formatNHWC*
	dilations

?
(training/Adadelta/iter/Initializer/zerosConst*
dtype0	*
value	B	 R *
_output_shapes
: *)
_class
loc:@training/Adadelta/iter
?
training/Adadelta/iterVarHandleOp*'
shared_nametraining/Adadelta/iter*
	container *)
_class
loc:@training/Adadelta/iter*
_output_shapes
: *
shape: *
dtype0	
}
7training/Adadelta/iter/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adadelta/iter*
_output_shapes
: 
?
training/Adadelta/iter/AssignAssignVariableOptraining/Adadelta/iter(training/Adadelta/iter/Initializer/zeros*
dtype0	
y
*training/Adadelta/iter/Read/ReadVariableOpReadVariableOptraining/Adadelta/iter*
dtype0	*
_output_shapes
: 
?
1training/Adadelta/decay/Initializer/initial_valueConst**
_class 
loc:@training/Adadelta/decay*
dtype0*
_output_shapes
: *
valueB
 *    
?
training/Adadelta/decayVarHandleOp*
_output_shapes
: **
_class 
loc:@training/Adadelta/decay*(
shared_nametraining/Adadelta/decay*
dtype0*
	container *
shape: 

8training/Adadelta/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adadelta/decay*
_output_shapes
: 
?
training/Adadelta/decay/AssignAssignVariableOptraining/Adadelta/decay1training/Adadelta/decay/Initializer/initial_value*
dtype0
{
+training/Adadelta/decay/Read/ReadVariableOpReadVariableOptraining/Adadelta/decay*
_output_shapes
: *
dtype0
?
9training/Adadelta/learning_rate/Initializer/initial_valueConst*
_output_shapes
: *
dtype0*2
_class(
&$loc:@training/Adadelta/learning_rate*
valueB
 *  ??
?
training/Adadelta/learning_rateVarHandleOp*0
shared_name!training/Adadelta/learning_rate*
dtype0*
_output_shapes
: *
shape: *
	container *2
_class(
&$loc:@training/Adadelta/learning_rate
?
@training/Adadelta/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adadelta/learning_rate*
_output_shapes
: 
?
&training/Adadelta/learning_rate/AssignAssignVariableOptraining/Adadelta/learning_rate9training/Adadelta/learning_rate/Initializer/initial_value*
dtype0
?
3training/Adadelta/learning_rate/Read/ReadVariableOpReadVariableOptraining/Adadelta/learning_rate*
dtype0*
_output_shapes
: 
?
/training/Adadelta/rho/Initializer/initial_valueConst*
valueB
 *33s?*
dtype0*(
_class
loc:@training/Adadelta/rho*
_output_shapes
: 
?
training/Adadelta/rhoVarHandleOp*&
shared_nametraining/Adadelta/rho*
dtype0*(
_class
loc:@training/Adadelta/rho*
	container *
_output_shapes
: *
shape: 
{
6training/Adadelta/rho/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adadelta/rho*
_output_shapes
: 
?
training/Adadelta/rho/AssignAssignVariableOptraining/Adadelta/rho/training/Adadelta/rho/Initializer/initial_value*
dtype0
w
)training/Adadelta/rho/Read/ReadVariableOpReadVariableOptraining/Adadelta/rho*
dtype0*
_output_shapes
: 
?
>training/Adadelta/conv2d_1/kernel/accum_grad/Initializer/zerosConst*%
valueB *    *&
_output_shapes
: *"
_class
loc:@conv2d_1/kernel*
dtype0
?
,training/Adadelta/conv2d_1/kernel/accum_gradVarHandleOp*
shape: *=
shared_name.,training/Adadelta/conv2d_1/kernel/accum_grad*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel*
	container 
?
Mtraining/Adadelta/conv2d_1/kernel/accum_grad/IsInitialized/VarIsInitializedOpVarIsInitializedOp,training/Adadelta/conv2d_1/kernel/accum_grad*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
?
3training/Adadelta/conv2d_1/kernel/accum_grad/AssignAssignVariableOp,training/Adadelta/conv2d_1/kernel/accum_grad>training/Adadelta/conv2d_1/kernel/accum_grad/Initializer/zeros*
dtype0
?
@training/Adadelta/conv2d_1/kernel/accum_grad/Read/ReadVariableOpReadVariableOp,training/Adadelta/conv2d_1/kernel/accum_grad*
dtype0*&
_output_shapes
: *"
_class
loc:@conv2d_1/kernel
?
<training/Adadelta/conv2d_1/bias/accum_grad/Initializer/zerosConst*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_1/bias*
valueB *    
?
*training/Adadelta/conv2d_1/bias/accum_gradVarHandleOp*
dtype0*
_output_shapes
: *
	container *;
shared_name,*training/Adadelta/conv2d_1/bias/accum_grad* 
_class
loc:@conv2d_1/bias*
shape: 
?
Ktraining/Adadelta/conv2d_1/bias/accum_grad/IsInitialized/VarIsInitializedOpVarIsInitializedOp*training/Adadelta/conv2d_1/bias/accum_grad*
_output_shapes
: * 
_class
loc:@conv2d_1/bias
?
1training/Adadelta/conv2d_1/bias/accum_grad/AssignAssignVariableOp*training/Adadelta/conv2d_1/bias/accum_grad<training/Adadelta/conv2d_1/bias/accum_grad/Initializer/zeros*
dtype0
?
>training/Adadelta/conv2d_1/bias/accum_grad/Read/ReadVariableOpReadVariableOp*training/Adadelta/conv2d_1/bias/accum_grad*
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
?
Ntraining/Adadelta/conv2d_2/kernel/accum_grad/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*"
_class
loc:@conv2d_2/kernel*%
valueB"          @   *
dtype0
?
Dtraining/Adadelta/conv2d_2/kernel/accum_grad/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
?
>training/Adadelta/conv2d_2/kernel/accum_grad/Initializer/zerosFillNtraining/Adadelta/conv2d_2/kernel/accum_grad/Initializer/zeros/shape_as_tensorDtraining/Adadelta/conv2d_2/kernel/accum_grad/Initializer/zeros/Const*

index_type0*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel
?
,training/Adadelta/conv2d_2/kernel/accum_gradVarHandleOp*
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: *=
shared_name.,training/Adadelta/conv2d_2/kernel/accum_grad*
shape: @*
	container 
?
Mtraining/Adadelta/conv2d_2/kernel/accum_grad/IsInitialized/VarIsInitializedOpVarIsInitializedOp,training/Adadelta/conv2d_2/kernel/accum_grad*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
?
3training/Adadelta/conv2d_2/kernel/accum_grad/AssignAssignVariableOp,training/Adadelta/conv2d_2/kernel/accum_grad>training/Adadelta/conv2d_2/kernel/accum_grad/Initializer/zeros*
dtype0
?
@training/Adadelta/conv2d_2/kernel/accum_grad/Read/ReadVariableOpReadVariableOp,training/Adadelta/conv2d_2/kernel/accum_grad*
dtype0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
?
<training/Adadelta/conv2d_2/bias/accum_grad/Initializer/zerosConst*
_output_shapes
:@* 
_class
loc:@conv2d_2/bias*
dtype0*
valueB@*    
?
*training/Adadelta/conv2d_2/bias/accum_gradVarHandleOp*
_output_shapes
: *
shape:@*
	container *
dtype0* 
_class
loc:@conv2d_2/bias*;
shared_name,*training/Adadelta/conv2d_2/bias/accum_grad
?
Ktraining/Adadelta/conv2d_2/bias/accum_grad/IsInitialized/VarIsInitializedOpVarIsInitializedOp*training/Adadelta/conv2d_2/bias/accum_grad* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
?
1training/Adadelta/conv2d_2/bias/accum_grad/AssignAssignVariableOp*training/Adadelta/conv2d_2/bias/accum_grad<training/Adadelta/conv2d_2/bias/accum_grad/Initializer/zeros*
dtype0
?
>training/Adadelta/conv2d_2/bias/accum_grad/Read/ReadVariableOpReadVariableOp*training/Adadelta/conv2d_2/bias/accum_grad*
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
?
Mtraining/Adadelta/dense_1/kernel/accum_grad/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
_output_shapes
:*
dtype0*
valueB" $  ?   
?
Ctraining/Adadelta/dense_1/kernel/accum_grad/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
=training/Adadelta/dense_1/kernel/accum_grad/Initializer/zerosFillMtraining/Adadelta/dense_1/kernel/accum_grad/Initializer/zeros/shape_as_tensorCtraining/Adadelta/dense_1/kernel/accum_grad/Initializer/zeros/Const*

index_type0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
?H?*
T0
?
+training/Adadelta/dense_1/kernel/accum_gradVarHandleOp*
_output_shapes
: *
	container *!
_class
loc:@dense_1/kernel*<
shared_name-+training/Adadelta/dense_1/kernel/accum_grad*
dtype0*
shape:
?H?
?
Ltraining/Adadelta/dense_1/kernel/accum_grad/IsInitialized/VarIsInitializedOpVarIsInitializedOp+training/Adadelta/dense_1/kernel/accum_grad*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
2training/Adadelta/dense_1/kernel/accum_grad/AssignAssignVariableOp+training/Adadelta/dense_1/kernel/accum_grad=training/Adadelta/dense_1/kernel/accum_grad/Initializer/zeros*
dtype0
?
?training/Adadelta/dense_1/kernel/accum_grad/Read/ReadVariableOpReadVariableOp+training/Adadelta/dense_1/kernel/accum_grad* 
_output_shapes
:
?H?*
dtype0*!
_class
loc:@dense_1/kernel
?
;training/Adadelta/dense_1/bias/accum_grad/Initializer/zerosConst*
valueB?*    *
dtype0*
_output_shapes	
:?*
_class
loc:@dense_1/bias
?
)training/Adadelta/dense_1/bias/accum_gradVarHandleOp*
_class
loc:@dense_1/bias*
shape:?*:
shared_name+)training/Adadelta/dense_1/bias/accum_grad*
	container *
dtype0*
_output_shapes
: 
?
Jtraining/Adadelta/dense_1/bias/accum_grad/IsInitialized/VarIsInitializedOpVarIsInitializedOp)training/Adadelta/dense_1/bias/accum_grad*
_output_shapes
: *
_class
loc:@dense_1/bias
?
0training/Adadelta/dense_1/bias/accum_grad/AssignAssignVariableOp)training/Adadelta/dense_1/bias/accum_grad;training/Adadelta/dense_1/bias/accum_grad/Initializer/zeros*
dtype0
?
=training/Adadelta/dense_1/bias/accum_grad/Read/ReadVariableOpReadVariableOp)training/Adadelta/dense_1/bias/accum_grad*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:?
?
Mtraining/Adadelta/dense_2/kernel/accum_grad/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"?   
   *
_output_shapes
:*!
_class
loc:@dense_2/kernel
?
Ctraining/Adadelta/dense_2/kernel/accum_grad/Initializer/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *!
_class
loc:@dense_2/kernel*
dtype0
?
=training/Adadelta/dense_2/kernel/accum_grad/Initializer/zerosFillMtraining/Adadelta/dense_2/kernel/accum_grad/Initializer/zeros/shape_as_tensorCtraining/Adadelta/dense_2/kernel/accum_grad/Initializer/zeros/Const*
T0*
_output_shapes
:	?
*

index_type0*!
_class
loc:@dense_2/kernel
?
+training/Adadelta/dense_2/kernel/accum_gradVarHandleOp*
dtype0*!
_class
loc:@dense_2/kernel*<
shared_name-+training/Adadelta/dense_2/kernel/accum_grad*
shape:	?
*
_output_shapes
: *
	container 
?
Ltraining/Adadelta/dense_2/kernel/accum_grad/IsInitialized/VarIsInitializedOpVarIsInitializedOp+training/Adadelta/dense_2/kernel/accum_grad*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
?
2training/Adadelta/dense_2/kernel/accum_grad/AssignAssignVariableOp+training/Adadelta/dense_2/kernel/accum_grad=training/Adadelta/dense_2/kernel/accum_grad/Initializer/zeros*
dtype0
?
?training/Adadelta/dense_2/kernel/accum_grad/Read/ReadVariableOpReadVariableOp+training/Adadelta/dense_2/kernel/accum_grad*
_output_shapes
:	?
*!
_class
loc:@dense_2/kernel*
dtype0
?
;training/Adadelta/dense_2/bias/accum_grad/Initializer/zerosConst*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
*
valueB
*    
?
)training/Adadelta/dense_2/bias/accum_gradVarHandleOp*
_output_shapes
: *
_class
loc:@dense_2/bias*
shape:
*
	container *:
shared_name+)training/Adadelta/dense_2/bias/accum_grad*
dtype0
?
Jtraining/Adadelta/dense_2/bias/accum_grad/IsInitialized/VarIsInitializedOpVarIsInitializedOp)training/Adadelta/dense_2/bias/accum_grad*
_class
loc:@dense_2/bias*
_output_shapes
: 
?
0training/Adadelta/dense_2/bias/accum_grad/AssignAssignVariableOp)training/Adadelta/dense_2/bias/accum_grad;training/Adadelta/dense_2/bias/accum_grad/Initializer/zeros*
dtype0
?
=training/Adadelta/dense_2/bias/accum_grad/Read/ReadVariableOpReadVariableOp)training/Adadelta/dense_2/bias/accum_grad*
dtype0*
_output_shapes
:
*
_class
loc:@dense_2/bias
?
=training/Adadelta/conv2d_1/kernel/accum_var/Initializer/zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    *"
_class
loc:@conv2d_1/kernel
?
+training/Adadelta/conv2d_1/kernel/accum_varVarHandleOp*<
shared_name-+training/Adadelta/conv2d_1/kernel/accum_var*
shape: *
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: *
	container 
?
Ltraining/Adadelta/conv2d_1/kernel/accum_var/IsInitialized/VarIsInitializedOpVarIsInitializedOp+training/Adadelta/conv2d_1/kernel/accum_var*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel
?
2training/Adadelta/conv2d_1/kernel/accum_var/AssignAssignVariableOp+training/Adadelta/conv2d_1/kernel/accum_var=training/Adadelta/conv2d_1/kernel/accum_var/Initializer/zeros*
dtype0
?
?training/Adadelta/conv2d_1/kernel/accum_var/Read/ReadVariableOpReadVariableOp+training/Adadelta/conv2d_1/kernel/accum_var*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
: 
?
;training/Adadelta/conv2d_1/bias/accum_var/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
dtype0*
valueB *    *
_output_shapes
: 
?
)training/Adadelta/conv2d_1/bias/accum_varVarHandleOp*
dtype0* 
_class
loc:@conv2d_1/bias*
	container *
shape: *
_output_shapes
: *:
shared_name+)training/Adadelta/conv2d_1/bias/accum_var
?
Jtraining/Adadelta/conv2d_1/bias/accum_var/IsInitialized/VarIsInitializedOpVarIsInitializedOp)training/Adadelta/conv2d_1/bias/accum_var*
_output_shapes
: * 
_class
loc:@conv2d_1/bias
?
0training/Adadelta/conv2d_1/bias/accum_var/AssignAssignVariableOp)training/Adadelta/conv2d_1/bias/accum_var;training/Adadelta/conv2d_1/bias/accum_var/Initializer/zeros*
dtype0
?
=training/Adadelta/conv2d_1/bias/accum_var/Read/ReadVariableOpReadVariableOp)training/Adadelta/conv2d_1/bias/accum_var* 
_class
loc:@conv2d_1/bias*
_output_shapes
: *
dtype0
?
Mtraining/Adadelta/conv2d_2/kernel/accum_var/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*"
_class
loc:@conv2d_2/kernel*%
valueB"          @   
?
Ctraining/Adadelta/conv2d_2/kernel/accum_var/Initializer/zeros/ConstConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *    *
_output_shapes
: *
dtype0
?
=training/Adadelta/conv2d_2/kernel/accum_var/Initializer/zerosFillMtraining/Adadelta/conv2d_2/kernel/accum_var/Initializer/zeros/shape_as_tensorCtraining/Adadelta/conv2d_2/kernel/accum_var/Initializer/zeros/Const*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_2/kernel*

index_type0
?
+training/Adadelta/conv2d_2/kernel/accum_varVarHandleOp*"
_class
loc:@conv2d_2/kernel*
dtype0*<
shared_name-+training/Adadelta/conv2d_2/kernel/accum_var*
	container *
shape: @*
_output_shapes
: 
?
Ltraining/Adadelta/conv2d_2/kernel/accum_var/IsInitialized/VarIsInitializedOpVarIsInitializedOp+training/Adadelta/conv2d_2/kernel/accum_var*
_output_shapes
: *"
_class
loc:@conv2d_2/kernel
?
2training/Adadelta/conv2d_2/kernel/accum_var/AssignAssignVariableOp+training/Adadelta/conv2d_2/kernel/accum_var=training/Adadelta/conv2d_2/kernel/accum_var/Initializer/zeros*
dtype0
?
?training/Adadelta/conv2d_2/kernel/accum_var/Read/ReadVariableOpReadVariableOp+training/Adadelta/conv2d_2/kernel/accum_var*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @*
dtype0
?
;training/Adadelta/conv2d_2/bias/accum_var/Initializer/zerosConst*
_output_shapes
:@* 
_class
loc:@conv2d_2/bias*
dtype0*
valueB@*    
?
)training/Adadelta/conv2d_2/bias/accum_varVarHandleOp*:
shared_name+)training/Adadelta/conv2d_2/bias/accum_var*
shape:@* 
_class
loc:@conv2d_2/bias*
_output_shapes
: *
	container *
dtype0
?
Jtraining/Adadelta/conv2d_2/bias/accum_var/IsInitialized/VarIsInitializedOpVarIsInitializedOp)training/Adadelta/conv2d_2/bias/accum_var*
_output_shapes
: * 
_class
loc:@conv2d_2/bias
?
0training/Adadelta/conv2d_2/bias/accum_var/AssignAssignVariableOp)training/Adadelta/conv2d_2/bias/accum_var;training/Adadelta/conv2d_2/bias/accum_var/Initializer/zeros*
dtype0
?
=training/Adadelta/conv2d_2/bias/accum_var/Read/ReadVariableOpReadVariableOp)training/Adadelta/conv2d_2/bias/accum_var*
_output_shapes
:@*
dtype0* 
_class
loc:@conv2d_2/bias
?
Ltraining/Adadelta/dense_1/kernel/accum_var/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:*
valueB" $  ?   
?
Btraining/Adadelta/dense_1/kernel/accum_var/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
dtype0*
valueB
 *    *
_output_shapes
: 
?
<training/Adadelta/dense_1/kernel/accum_var/Initializer/zerosFillLtraining/Adadelta/dense_1/kernel/accum_var/Initializer/zeros/shape_as_tensorBtraining/Adadelta/dense_1/kernel/accum_var/Initializer/zeros/Const* 
_output_shapes
:
?H?*
T0*

index_type0*!
_class
loc:@dense_1/kernel
?
*training/Adadelta/dense_1/kernel/accum_varVarHandleOp*
dtype0*
shape:
?H?*
	container *
_output_shapes
: *!
_class
loc:@dense_1/kernel*;
shared_name,*training/Adadelta/dense_1/kernel/accum_var
?
Ktraining/Adadelta/dense_1/kernel/accum_var/IsInitialized/VarIsInitializedOpVarIsInitializedOp*training/Adadelta/dense_1/kernel/accum_var*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
?
1training/Adadelta/dense_1/kernel/accum_var/AssignAssignVariableOp*training/Adadelta/dense_1/kernel/accum_var<training/Adadelta/dense_1/kernel/accum_var/Initializer/zeros*
dtype0
?
>training/Adadelta/dense_1/kernel/accum_var/Read/ReadVariableOpReadVariableOp*training/Adadelta/dense_1/kernel/accum_var* 
_output_shapes
:
?H?*!
_class
loc:@dense_1/kernel*
dtype0
?
:training/Adadelta/dense_1/bias/accum_var/Initializer/zerosConst*
valueB?*    *
_class
loc:@dense_1/bias*
_output_shapes	
:?*
dtype0
?
(training/Adadelta/dense_1/bias/accum_varVarHandleOp*9
shared_name*(training/Adadelta/dense_1/bias/accum_var*
	container *
shape:?*
_output_shapes
: *
_class
loc:@dense_1/bias*
dtype0
?
Itraining/Adadelta/dense_1/bias/accum_var/IsInitialized/VarIsInitializedOpVarIsInitializedOp(training/Adadelta/dense_1/bias/accum_var*
_output_shapes
: *
_class
loc:@dense_1/bias
?
/training/Adadelta/dense_1/bias/accum_var/AssignAssignVariableOp(training/Adadelta/dense_1/bias/accum_var:training/Adadelta/dense_1/bias/accum_var/Initializer/zeros*
dtype0
?
<training/Adadelta/dense_1/bias/accum_var/Read/ReadVariableOpReadVariableOp(training/Adadelta/dense_1/bias/accum_var*
_output_shapes	
:?*
dtype0*
_class
loc:@dense_1/bias
?
Ltraining/Adadelta/dense_2/kernel/accum_var/Initializer/zeros/shape_as_tensorConst*
valueB"?   
   *!
_class
loc:@dense_2/kernel*
_output_shapes
:*
dtype0
?
Btraining/Adadelta/dense_2/kernel/accum_var/Initializer/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *!
_class
loc:@dense_2/kernel
?
<training/Adadelta/dense_2/kernel/accum_var/Initializer/zerosFillLtraining/Adadelta/dense_2/kernel/accum_var/Initializer/zeros/shape_as_tensorBtraining/Adadelta/dense_2/kernel/accum_var/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	?

?
*training/Adadelta/dense_2/kernel/accum_varVarHandleOp*;
shared_name,*training/Adadelta/dense_2/kernel/accum_var*
shape:	?
*
_output_shapes
: *!
_class
loc:@dense_2/kernel*
dtype0*
	container 
?
Ktraining/Adadelta/dense_2/kernel/accum_var/IsInitialized/VarIsInitializedOpVarIsInitializedOp*training/Adadelta/dense_2/kernel/accum_var*
_output_shapes
: *!
_class
loc:@dense_2/kernel
?
1training/Adadelta/dense_2/kernel/accum_var/AssignAssignVariableOp*training/Adadelta/dense_2/kernel/accum_var<training/Adadelta/dense_2/kernel/accum_var/Initializer/zeros*
dtype0
?
>training/Adadelta/dense_2/kernel/accum_var/Read/ReadVariableOpReadVariableOp*training/Adadelta/dense_2/kernel/accum_var*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	?

?
:training/Adadelta/dense_2/bias/accum_var/Initializer/zerosConst*
dtype0*
_class
loc:@dense_2/bias*
valueB
*    *
_output_shapes
:

?
(training/Adadelta/dense_2/bias/accum_varVarHandleOp*
dtype0*
	container *
shape:
*
_output_shapes
: *
_class
loc:@dense_2/bias*9
shared_name*(training/Adadelta/dense_2/bias/accum_var
?
Itraining/Adadelta/dense_2/bias/accum_var/IsInitialized/VarIsInitializedOpVarIsInitializedOp(training/Adadelta/dense_2/bias/accum_var*
_output_shapes
: *
_class
loc:@dense_2/bias
?
/training/Adadelta/dense_2/bias/accum_var/AssignAssignVariableOp(training/Adadelta/dense_2/bias/accum_var:training/Adadelta/dense_2/bias/accum_var/Initializer/zeros*
dtype0
?
<training/Adadelta/dense_2/bias/accum_var/Read/ReadVariableOpReadVariableOp(training/Adadelta/dense_2/bias/accum_var*
dtype0*
_output_shapes
:
*
_class
loc:@dense_2/bias
?
)training/Adadelta/Identity/ReadVariableOpReadVariableOptraining/Adadelta/learning_rate*
_output_shapes
: *
dtype0
r
training/Adadelta/IdentityIdentity)training/Adadelta/Identity/ReadVariableOp*
_output_shapes
: *
T0
\
training/Adadelta/ConstConst*
valueB
 *???3*
dtype0*
_output_shapes
: 
y
+training/Adadelta/Identity_1/ReadVariableOpReadVariableOptraining/Adadelta/rho*
_output_shapes
: *
dtype0
v
training/Adadelta/Identity_1Identity+training/Adadelta/Identity_1/ReadVariableOp*
_output_shapes
: *
T0
?
Gtraining/Adadelta/Adadelta/update_conv2d_1/kernel/ResourceApplyAdadeltaResourceApplyAdadeltaconv2d_1/kernel,training/Adadelta/conv2d_1/kernel/accum_grad+training/Adadelta/conv2d_1/kernel/accum_vartraining/Adadelta/Identitytraining/Adadelta/Identity_1training/Adadelta/ConstOtraining/Adadelta/gradients/gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
?
Etraining/Adadelta/Adadelta/update_conv2d_1/bias/ResourceApplyAdadeltaResourceApplyAdadeltaconv2d_1/bias*training/Adadelta/conv2d_1/bias/accum_grad)training/Adadelta/conv2d_1/bias/accum_vartraining/Adadelta/Identitytraining/Adadelta/Identity_1training/Adadelta/ConstGtraining/Adadelta/gradients/gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
?
Gtraining/Adadelta/Adadelta/update_conv2d_2/kernel/ResourceApplyAdadeltaResourceApplyAdadeltaconv2d_2/kernel,training/Adadelta/conv2d_2/kernel/accum_grad+training/Adadelta/conv2d_2/kernel/accum_vartraining/Adadelta/Identitytraining/Adadelta/Identity_1training/Adadelta/ConstOtraining/Adadelta/gradients/gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel
?
Etraining/Adadelta/Adadelta/update_conv2d_2/bias/ResourceApplyAdadeltaResourceApplyAdadeltaconv2d_2/bias*training/Adadelta/conv2d_2/bias/accum_grad)training/Adadelta/conv2d_2/bias/accum_vartraining/Adadelta/Identitytraining/Adadelta/Identity_1training/Adadelta/ConstGtraining/Adadelta/gradients/gradients/conv2d_2/BiasAdd_grad/BiasAddGrad* 
_class
loc:@conv2d_2/bias*
use_locking(*
T0
?
Ftraining/Adadelta/Adadelta/update_dense_1/kernel/ResourceApplyAdadeltaResourceApplyAdadeltadense_1/kernel+training/Adadelta/dense_1/kernel/accum_grad*training/Adadelta/dense_1/kernel/accum_vartraining/Adadelta/Identitytraining/Adadelta/Identity_1training/Adadelta/ConstBtraining/Adadelta/gradients/gradients/dense_1/MatMul_grad/MatMul_1*!
_class
loc:@dense_1/kernel*
use_locking(*
T0
?
Dtraining/Adadelta/Adadelta/update_dense_1/bias/ResourceApplyAdadeltaResourceApplyAdadeltadense_1/bias)training/Adadelta/dense_1/bias/accum_grad(training/Adadelta/dense_1/bias/accum_vartraining/Adadelta/Identitytraining/Adadelta/Identity_1training/Adadelta/ConstFtraining/Adadelta/gradients/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0*
_class
loc:@dense_1/bias
?
Ftraining/Adadelta/Adadelta/update_dense_2/kernel/ResourceApplyAdadeltaResourceApplyAdadeltadense_2/kernel+training/Adadelta/dense_2/kernel/accum_grad*training/Adadelta/dense_2/kernel/accum_vartraining/Adadelta/Identitytraining/Adadelta/Identity_1training/Adadelta/ConstBtraining/Adadelta/gradients/gradients/dense_2/MatMul_grad/MatMul_1*!
_class
loc:@dense_2/kernel*
use_locking(*
T0
?
Dtraining/Adadelta/Adadelta/update_dense_2/bias/ResourceApplyAdadeltaResourceApplyAdadeltadense_2/bias)training/Adadelta/dense_2/bias/accum_grad(training/Adadelta/dense_2/bias/accum_vartraining/Adadelta/Identitytraining/Adadelta/Identity_1training/Adadelta/ConstFtraining/Adadelta/gradients/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_class
loc:@dense_2/bias*
use_locking(
?
 training/Adadelta/Adadelta/ConstConstF^training/Adadelta/Adadelta/update_conv2d_1/bias/ResourceApplyAdadeltaH^training/Adadelta/Adadelta/update_conv2d_1/kernel/ResourceApplyAdadeltaF^training/Adadelta/Adadelta/update_conv2d_2/bias/ResourceApplyAdadeltaH^training/Adadelta/Adadelta/update_conv2d_2/kernel/ResourceApplyAdadeltaE^training/Adadelta/Adadelta/update_dense_1/bias/ResourceApplyAdadeltaG^training/Adadelta/Adadelta/update_dense_1/kernel/ResourceApplyAdadeltaE^training/Adadelta/Adadelta/update_dense_2/bias/ResourceApplyAdadeltaG^training/Adadelta/Adadelta/update_dense_2/kernel/ResourceApplyAdadelta*
dtype0	*
_output_shapes
: *
value	B	 R
?
.training/Adadelta/Adadelta/AssignAddVariableOpAssignAddVariableOptraining/Adadelta/iter training/Adadelta/Adadelta/Const*
dtype0	
?
)training/Adadelta/Adadelta/ReadVariableOpReadVariableOptraining/Adadelta/iter/^training/Adadelta/Adadelta/AssignAddVariableOpF^training/Adadelta/Adadelta/update_conv2d_1/bias/ResourceApplyAdadeltaH^training/Adadelta/Adadelta/update_conv2d_1/kernel/ResourceApplyAdadeltaF^training/Adadelta/Adadelta/update_conv2d_2/bias/ResourceApplyAdadeltaH^training/Adadelta/Adadelta/update_conv2d_2/kernel/ResourceApplyAdadeltaE^training/Adadelta/Adadelta/update_dense_1/bias/ResourceApplyAdadeltaG^training/Adadelta/Adadelta/update_dense_1/kernel/ResourceApplyAdadeltaE^training/Adadelta/Adadelta/update_dense_2/bias/ResourceApplyAdadeltaG^training/Adadelta/Adadelta/update_dense_2/kernel/ResourceApplyAdadelta*
dtype0	*
_output_shapes
: 
Y
training_1/group_depsNoOp	^loss/mul/^training/Adadelta/Adadelta/AssignAddVariableOp
o
VarIsInitializedOp_8VarIsInitializedOp+training/Adadelta/dense_1/kernel/accum_grad*
_output_shapes
: 
p
VarIsInitializedOp_9VarIsInitializedOp,training/Adadelta/conv2d_1/kernel/accum_grad*
_output_shapes
: 
o
VarIsInitializedOp_10VarIsInitializedOp*training/Adadelta/conv2d_2/bias/accum_grad*
_output_shapes
: 
d
VarIsInitializedOp_11VarIsInitializedOptraining/Adadelta/learning_rate*
_output_shapes
: 
n
VarIsInitializedOp_12VarIsInitializedOp)training/Adadelta/dense_2/bias/accum_grad*
_output_shapes
: 
o
VarIsInitializedOp_13VarIsInitializedOp*training/Adadelta/dense_2/kernel/accum_var*
_output_shapes
: 
o
VarIsInitializedOp_14VarIsInitializedOp*training/Adadelta/conv2d_1/bias/accum_grad*
_output_shapes
: 
p
VarIsInitializedOp_15VarIsInitializedOp+training/Adadelta/conv2d_2/kernel/accum_var*
_output_shapes
: 
m
VarIsInitializedOp_16VarIsInitializedOp(training/Adadelta/dense_2/bias/accum_var*
_output_shapes
: 
q
VarIsInitializedOp_17VarIsInitializedOp,training/Adadelta/conv2d_2/kernel/accum_grad*
_output_shapes
: 
J
VarIsInitializedOp_18VarIsInitializedOpcount*
_output_shapes
: 
\
VarIsInitializedOp_19VarIsInitializedOptraining/Adadelta/decay*
_output_shapes
: 
Z
VarIsInitializedOp_20VarIsInitializedOptraining/Adadelta/rho*
_output_shapes
: 
p
VarIsInitializedOp_21VarIsInitializedOp+training/Adadelta/conv2d_1/kernel/accum_var*
_output_shapes
: 
n
VarIsInitializedOp_22VarIsInitializedOp)training/Adadelta/conv2d_2/bias/accum_var*
_output_shapes
: 
m
VarIsInitializedOp_23VarIsInitializedOp(training/Adadelta/dense_1/bias/accum_var*
_output_shapes
: 
[
VarIsInitializedOp_24VarIsInitializedOptraining/Adadelta/iter*
_output_shapes
: 
o
VarIsInitializedOp_25VarIsInitializedOp*training/Adadelta/dense_1/kernel/accum_var*
_output_shapes
: 
p
VarIsInitializedOp_26VarIsInitializedOp+training/Adadelta/dense_2/kernel/accum_grad*
_output_shapes
: 
n
VarIsInitializedOp_27VarIsInitializedOp)training/Adadelta/dense_1/bias/accum_grad*
_output_shapes
: 
n
VarIsInitializedOp_28VarIsInitializedOp)training/Adadelta/conv2d_1/bias/accum_var*
_output_shapes
: 
J
VarIsInitializedOp_29VarIsInitializedOptotal*
_output_shapes
: 
?
init_1NoOp^count/Assign^total/Assign2^training/Adadelta/conv2d_1/bias/accum_grad/Assign1^training/Adadelta/conv2d_1/bias/accum_var/Assign4^training/Adadelta/conv2d_1/kernel/accum_grad/Assign3^training/Adadelta/conv2d_1/kernel/accum_var/Assign2^training/Adadelta/conv2d_2/bias/accum_grad/Assign1^training/Adadelta/conv2d_2/bias/accum_var/Assign4^training/Adadelta/conv2d_2/kernel/accum_grad/Assign3^training/Adadelta/conv2d_2/kernel/accum_var/Assign^training/Adadelta/decay/Assign1^training/Adadelta/dense_1/bias/accum_grad/Assign0^training/Adadelta/dense_1/bias/accum_var/Assign3^training/Adadelta/dense_1/kernel/accum_grad/Assign2^training/Adadelta/dense_1/kernel/accum_var/Assign1^training/Adadelta/dense_2/bias/accum_grad/Assign0^training/Adadelta/dense_2/bias/accum_var/Assign3^training/Adadelta/dense_2/kernel/accum_grad/Assign2^training/Adadelta/dense_2/kernel/accum_var/Assign^training/Adadelta/iter/Assign'^training/Adadelta/learning_rate/Assign^training/Adadelta/rho/Assign
N
Placeholder_8Placeholder*
dtype0	*
shape: *
_output_shapes
: 
Z
AssignVariableOp_8AssignVariableOptraining/Adadelta/iterPlaceholder_8*
dtype0	
t
ReadVariableOp_8ReadVariableOptraining/Adadelta/iter^AssignVariableOp_8*
dtype0	*
_output_shapes
: 
?
Placeholder_9Placeholder*
dtype0*?
shape6:4????????????????????????????????????*J
_output_shapes8
6:4????????????????????????????????????
p
AssignVariableOp_9AssignVariableOp,training/Adadelta/conv2d_1/kernel/accum_gradPlaceholder_9*
dtype0
?
ReadVariableOp_9ReadVariableOp,training/Adadelta/conv2d_1/kernel/accum_grad^AssignVariableOp_9*&
_output_shapes
: *
dtype0
i
Placeholder_10Placeholder*
dtype0*
shape:?????????*#
_output_shapes
:?????????
p
AssignVariableOp_10AssignVariableOp*training/Adadelta/conv2d_1/bias/accum_gradPlaceholder_10*
dtype0
?
ReadVariableOp_10ReadVariableOp*training/Adadelta/conv2d_1/bias/accum_grad^AssignVariableOp_10*
dtype0*
_output_shapes
: 
?
Placeholder_11Placeholder*J
_output_shapes8
6:4????????????????????????????????????*
dtype0*?
shape6:4????????????????????????????????????
r
AssignVariableOp_11AssignVariableOp,training/Adadelta/conv2d_2/kernel/accum_gradPlaceholder_11*
dtype0
?
ReadVariableOp_11ReadVariableOp,training/Adadelta/conv2d_2/kernel/accum_grad^AssignVariableOp_11*&
_output_shapes
: @*
dtype0
i
Placeholder_12Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
p
AssignVariableOp_12AssignVariableOp*training/Adadelta/conv2d_2/bias/accum_gradPlaceholder_12*
dtype0
?
ReadVariableOp_12ReadVariableOp*training/Adadelta/conv2d_2/bias/accum_grad^AssignVariableOp_12*
_output_shapes
:@*
dtype0
?
Placeholder_13Placeholder*
dtype0*%
shape:??????????????????*0
_output_shapes
:??????????????????
q
AssignVariableOp_13AssignVariableOp+training/Adadelta/dense_1/kernel/accum_gradPlaceholder_13*
dtype0
?
ReadVariableOp_13ReadVariableOp+training/Adadelta/dense_1/kernel/accum_grad^AssignVariableOp_13*
dtype0* 
_output_shapes
:
?H?
i
Placeholder_14Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
o
AssignVariableOp_14AssignVariableOp)training/Adadelta/dense_1/bias/accum_gradPlaceholder_14*
dtype0
?
ReadVariableOp_14ReadVariableOp)training/Adadelta/dense_1/bias/accum_grad^AssignVariableOp_14*
_output_shapes	
:?*
dtype0
?
Placeholder_15Placeholder*
dtype0*0
_output_shapes
:??????????????????*%
shape:??????????????????
q
AssignVariableOp_15AssignVariableOp+training/Adadelta/dense_2/kernel/accum_gradPlaceholder_15*
dtype0
?
ReadVariableOp_15ReadVariableOp+training/Adadelta/dense_2/kernel/accum_grad^AssignVariableOp_15*
_output_shapes
:	?
*
dtype0
i
Placeholder_16Placeholder*#
_output_shapes
:?????????*
shape:?????????*
dtype0
o
AssignVariableOp_16AssignVariableOp)training/Adadelta/dense_2/bias/accum_gradPlaceholder_16*
dtype0
?
ReadVariableOp_16ReadVariableOp)training/Adadelta/dense_2/bias/accum_grad^AssignVariableOp_16*
dtype0*
_output_shapes
:

?
Placeholder_17Placeholder*J
_output_shapes8
6:4????????????????????????????????????*
dtype0*?
shape6:4????????????????????????????????????
q
AssignVariableOp_17AssignVariableOp+training/Adadelta/conv2d_1/kernel/accum_varPlaceholder_17*
dtype0
?
ReadVariableOp_17ReadVariableOp+training/Adadelta/conv2d_1/kernel/accum_var^AssignVariableOp_17*&
_output_shapes
: *
dtype0
i
Placeholder_18Placeholder*#
_output_shapes
:?????????*
shape:?????????*
dtype0
o
AssignVariableOp_18AssignVariableOp)training/Adadelta/conv2d_1/bias/accum_varPlaceholder_18*
dtype0
?
ReadVariableOp_18ReadVariableOp)training/Adadelta/conv2d_1/bias/accum_var^AssignVariableOp_18*
dtype0*
_output_shapes
: 
?
Placeholder_19Placeholder*J
_output_shapes8
6:4????????????????????????????????????*?
shape6:4????????????????????????????????????*
dtype0
q
AssignVariableOp_19AssignVariableOp+training/Adadelta/conv2d_2/kernel/accum_varPlaceholder_19*
dtype0
?
ReadVariableOp_19ReadVariableOp+training/Adadelta/conv2d_2/kernel/accum_var^AssignVariableOp_19*&
_output_shapes
: @*
dtype0
i
Placeholder_20Placeholder*
shape:?????????*#
_output_shapes
:?????????*
dtype0
o
AssignVariableOp_20AssignVariableOp)training/Adadelta/conv2d_2/bias/accum_varPlaceholder_20*
dtype0
?
ReadVariableOp_20ReadVariableOp)training/Adadelta/conv2d_2/bias/accum_var^AssignVariableOp_20*
_output_shapes
:@*
dtype0
?
Placeholder_21Placeholder*%
shape:??????????????????*0
_output_shapes
:??????????????????*
dtype0
p
AssignVariableOp_21AssignVariableOp*training/Adadelta/dense_1/kernel/accum_varPlaceholder_21*
dtype0
?
ReadVariableOp_21ReadVariableOp*training/Adadelta/dense_1/kernel/accum_var^AssignVariableOp_21*
dtype0* 
_output_shapes
:
?H?
i
Placeholder_22Placeholder*#
_output_shapes
:?????????*
shape:?????????*
dtype0
n
AssignVariableOp_22AssignVariableOp(training/Adadelta/dense_1/bias/accum_varPlaceholder_22*
dtype0
?
ReadVariableOp_22ReadVariableOp(training/Adadelta/dense_1/bias/accum_var^AssignVariableOp_22*
_output_shapes	
:?*
dtype0
?
Placeholder_23Placeholder*
dtype0*0
_output_shapes
:??????????????????*%
shape:??????????????????
p
AssignVariableOp_23AssignVariableOp*training/Adadelta/dense_2/kernel/accum_varPlaceholder_23*
dtype0
?
ReadVariableOp_23ReadVariableOp*training/Adadelta/dense_2/kernel/accum_var^AssignVariableOp_23*
dtype0*
_output_shapes
:	?

i
Placeholder_24Placeholder*
shape:?????????*
dtype0*#
_output_shapes
:?????????
n
AssignVariableOp_24AssignVariableOp(training/Adadelta/dense_2/bias/accum_varPlaceholder_24*
dtype0
?
ReadVariableOp_24ReadVariableOp(training/Adadelta/dense_2/bias/accum_var^AssignVariableOp_24*
dtype0*
_output_shapes
:


init_all_tablesNoOp
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
l
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const*
pattern
^s3://.**
_output_shapes
: 
s
save/cond/SwitchSwitchsave/StaticRegexFullMatchsave/StaticRegexFullMatch*
_output_shapes
: : *
T0

S
save/cond/switch_tIdentitysave/cond/Switch:1*
_output_shapes
: *
T0

Q
save/cond/switch_fIdentitysave/cond/Switch*
T0
*
_output_shapes
: 
Y
save/cond/pred_idIdentitysave/StaticRegexFullMatch*
_output_shapes
: *
T0

j
save/cond/ConstConst^save/cond/switch_t*
valueB B.part*
_output_shapes
: *
dtype0
?
save/cond/Const_1Const^save/cond/switch_f*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_ec7df32911264b15906b284157ea6a6b/part
h
save/cond/MergeMergesave/cond/Const_1save/cond/Const*
T0*
N*
_output_shapes
: : 
l
save/StringJoin
StringJoin
save/Constsave/cond/Merge*
_output_shapes
: *
N*
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelB*training/Adadelta/conv2d_1/bias/accum_gradB)training/Adadelta/conv2d_1/bias/accum_varB,training/Adadelta/conv2d_1/kernel/accum_gradB+training/Adadelta/conv2d_1/kernel/accum_varB*training/Adadelta/conv2d_2/bias/accum_gradB)training/Adadelta/conv2d_2/bias/accum_varB,training/Adadelta/conv2d_2/kernel/accum_gradB+training/Adadelta/conv2d_2/kernel/accum_varBtraining/Adadelta/decayB)training/Adadelta/dense_1/bias/accum_gradB(training/Adadelta/dense_1/bias/accum_varB+training/Adadelta/dense_1/kernel/accum_gradB*training/Adadelta/dense_1/kernel/accum_varB)training/Adadelta/dense_2/bias/accum_gradB(training/Adadelta/dense_2/bias/accum_varB+training/Adadelta/dense_2/kernel/accum_gradB*training/Adadelta/dense_2/kernel/accum_varBtraining/Adadelta/iterBtraining/Adadelta/learning_rateBtraining/Adadelta/rho
?
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!conv2d_1/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp>training/Adadelta/conv2d_1/bias/accum_grad/Read/ReadVariableOp=training/Adadelta/conv2d_1/bias/accum_var/Read/ReadVariableOp@training/Adadelta/conv2d_1/kernel/accum_grad/Read/ReadVariableOp?training/Adadelta/conv2d_1/kernel/accum_var/Read/ReadVariableOp>training/Adadelta/conv2d_2/bias/accum_grad/Read/ReadVariableOp=training/Adadelta/conv2d_2/bias/accum_var/Read/ReadVariableOp@training/Adadelta/conv2d_2/kernel/accum_grad/Read/ReadVariableOp?training/Adadelta/conv2d_2/kernel/accum_var/Read/ReadVariableOp+training/Adadelta/decay/Read/ReadVariableOp=training/Adadelta/dense_1/bias/accum_grad/Read/ReadVariableOp<training/Adadelta/dense_1/bias/accum_var/Read/ReadVariableOp?training/Adadelta/dense_1/kernel/accum_grad/Read/ReadVariableOp>training/Adadelta/dense_1/kernel/accum_var/Read/ReadVariableOp=training/Adadelta/dense_2/bias/accum_grad/Read/ReadVariableOp<training/Adadelta/dense_2/bias/accum_var/Read/ReadVariableOp?training/Adadelta/dense_2/kernel/accum_grad/Read/ReadVariableOp>training/Adadelta/dense_2/kernel/accum_var/Read/ReadVariableOp*training/Adadelta/iter/Read/ReadVariableOp3training/Adadelta/learning_rate/Read/ReadVariableOp)training/Adadelta/rho/Read/ReadVariableOp"/device:CPU:0**
dtypes 
2	
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
_output_shapes
:*
T0*
N
?
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelB*training/Adadelta/conv2d_1/bias/accum_gradB)training/Adadelta/conv2d_1/bias/accum_varB,training/Adadelta/conv2d_1/kernel/accum_gradB+training/Adadelta/conv2d_1/kernel/accum_varB*training/Adadelta/conv2d_2/bias/accum_gradB)training/Adadelta/conv2d_2/bias/accum_varB,training/Adadelta/conv2d_2/kernel/accum_gradB+training/Adadelta/conv2d_2/kernel/accum_varBtraining/Adadelta/decayB)training/Adadelta/dense_1/bias/accum_gradB(training/Adadelta/dense_1/bias/accum_varB+training/Adadelta/dense_1/kernel/accum_gradB*training/Adadelta/dense_1/kernel/accum_varB)training/Adadelta/dense_2/bias/accum_gradB(training/Adadelta/dense_2/bias/accum_varB+training/Adadelta/dense_2/kernel/accum_gradB*training/Adadelta/dense_2/kernel/accum_varBtraining/Adadelta/iterBtraining/Adadelta/learning_rateBtraining/Adadelta/rho
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:*
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
V
save/AssignVariableOpAssignVariableOpconv2d_1/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
Z
save/AssignVariableOp_1AssignVariableOpconv2d_1/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpconv2d_2/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
_output_shapes
:*
T0
Z
save/AssignVariableOp_3AssignVariableOpconv2d_2/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
_output_shapes
:*
T0
W
save/AssignVariableOp_4AssignVariableOpdense_1/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
_output_shapes
:*
T0
Y
save/AssignVariableOp_5AssignVariableOpdense_1/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
W
save/AssignVariableOp_6AssignVariableOpdense_2/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
_output_shapes
:*
T0
Y
save/AssignVariableOp_7AssignVariableOpdense_2/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
u
save/AssignVariableOp_8AssignVariableOp*training/Adadelta/conv2d_1/bias/accum_gradsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
u
save/AssignVariableOp_9AssignVariableOp)training/Adadelta/conv2d_1/bias/accum_varsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
y
save/AssignVariableOp_10AssignVariableOp,training/Adadelta/conv2d_1/kernel/accum_gradsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
x
save/AssignVariableOp_11AssignVariableOp+training/Adadelta/conv2d_1/kernel/accum_varsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
w
save/AssignVariableOp_12AssignVariableOp*training/Adadelta/conv2d_2/bias/accum_gradsave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
v
save/AssignVariableOp_13AssignVariableOp)training/Adadelta/conv2d_2/bias/accum_varsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
_output_shapes
:*
T0
y
save/AssignVariableOp_14AssignVariableOp,training/Adadelta/conv2d_2/kernel/accum_gradsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
_output_shapes
:*
T0
x
save/AssignVariableOp_15AssignVariableOp+training/Adadelta/conv2d_2/kernel/accum_varsave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
d
save/AssignVariableOp_16AssignVariableOptraining/Adadelta/decaysave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
_output_shapes
:*
T0
v
save/AssignVariableOp_17AssignVariableOp)training/Adadelta/dense_1/bias/accum_gradsave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
_output_shapes
:*
T0
u
save/AssignVariableOp_18AssignVariableOp(training/Adadelta/dense_1/bias/accum_varsave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
x
save/AssignVariableOp_19AssignVariableOp+training/Adadelta/dense_1/kernel/accum_gradsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
w
save/AssignVariableOp_20AssignVariableOp*training/Adadelta/dense_1/kernel/accum_varsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
_output_shapes
:*
T0
v
save/AssignVariableOp_21AssignVariableOp)training/Adadelta/dense_2/bias/accum_gradsave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
u
save/AssignVariableOp_22AssignVariableOp(training/Adadelta/dense_2/bias/accum_varsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
_output_shapes
:*
T0
x
save/AssignVariableOp_23AssignVariableOp+training/Adadelta/dense_2/kernel/accum_gradsave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
_output_shapes
:*
T0
w
save/AssignVariableOp_24AssignVariableOp*training/Adadelta/dense_2/kernel/accum_varsave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
_output_shapes
:*
T0	
c
save/AssignVariableOp_25AssignVariableOptraining/Adadelta/itersave/Identity_26*
dtype0	
R
save/Identity_27Identitysave/RestoreV2:26*
_output_shapes
:*
T0
l
save/AssignVariableOp_26AssignVariableOptraining/Adadelta/learning_ratesave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
b
save/AssignVariableOp_27AssignVariableOptraining/Adadelta/rhosave/Identity_28*
dtype0
?
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard"?<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
cond_context??
?
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *?
dropout_1/cond/dropout/Cast:0
%dropout_1/cond/dropout/GreaterEqual:0
%dropout_1/cond/dropout/Shape/Switch:1
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/mul:0
dropout_1/cond/dropout/mul_1:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/dropout/rate:0
dropout_1/cond/dropout/sub/x:0
dropout_1/cond/dropout/sub:0
"dropout_1/cond/dropout/truediv/x:0
 dropout_1/cond/dropout/truediv:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:0
max_pooling2d_1/MaxPool:0B
max_pooling2d_1/MaxPool:0%dropout_1/cond/dropout/Shape/Switch:14
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0
?
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*?
 dropout_1/cond/Identity/Switch:0
dropout_1/cond/Identity:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:0
max_pooling2d_1/MaxPool:0=
max_pooling2d_1/MaxPool:0 dropout_1/cond/Identity/Switch:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0
?
dropout_2/cond/cond_textdropout_2/cond/pred_id:0dropout_2/cond/switch_t:0 *?
dense_1/Relu:0
dropout_2/cond/dropout/Cast:0
%dropout_2/cond/dropout/GreaterEqual:0
%dropout_2/cond/dropout/Shape/Switch:1
dropout_2/cond/dropout/Shape:0
dropout_2/cond/dropout/mul:0
dropout_2/cond/dropout/mul_1:0
5dropout_2/cond/dropout/random_uniform/RandomUniform:0
+dropout_2/cond/dropout/random_uniform/max:0
+dropout_2/cond/dropout/random_uniform/min:0
+dropout_2/cond/dropout/random_uniform/mul:0
+dropout_2/cond/dropout/random_uniform/sub:0
'dropout_2/cond/dropout/random_uniform:0
dropout_2/cond/dropout/rate:0
dropout_2/cond/dropout/sub/x:0
dropout_2/cond/dropout/sub:0
"dropout_2/cond/dropout/truediv/x:0
 dropout_2/cond/dropout/truediv:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_t:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:07
dense_1/Relu:0%dropout_2/cond/dropout/Shape/Switch:1
?
dropout_2/cond/cond_text_1dropout_2/cond/pred_id:0dropout_2/cond/switch_f:0*?
dense_1/Relu:0
 dropout_2/cond/Identity/Switch:0
dropout_2/cond/Identity:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_f:02
dense_1/Relu:0 dropout_2/cond/Identity/Switch:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0
?
save/cond/cond_textsave/cond/pred_id:0save/cond/switch_t:0 *j
save/cond/Const:0
save/cond/pred_id:0
save/cond/switch_t:0*
save/cond/pred_id:0save/cond/pred_id:0
?
save/cond/cond_text_1save/cond/pred_id:0save/cond/switch_f:0*l
save/cond/Const_1:0
save/cond/pred_id:0
save/cond/switch_f:0*
save/cond/pred_id:0save/cond/pred_id:0"*
saved_model_main_op

init_all_tables"?
trainable_variables??
?
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
?
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
?
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08"?*
	variables?*?*
?
conv2d_1/kernel:0conv2d_1/kernel/Assign%conv2d_1/kernel/Read/ReadVariableOp:0(2,conv2d_1/kernel/Initializer/random_uniform:08
s
conv2d_1/bias:0conv2d_1/bias/Assign#conv2d_1/bias/Read/ReadVariableOp:0(2!conv2d_1/bias/Initializer/zeros:08
?
conv2d_2/kernel:0conv2d_2/kernel/Assign%conv2d_2/kernel/Read/ReadVariableOp:0(2,conv2d_2/kernel/Initializer/random_uniform:08
s
conv2d_2/bias:0conv2d_2/bias/Assign#conv2d_2/bias/Read/ReadVariableOp:0(2!conv2d_2/bias/Initializer/zeros:08
?
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
?
dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
?
training/Adadelta/iter:0training/Adadelta/iter/Assign,training/Adadelta/iter/Read/ReadVariableOp:0(2*training/Adadelta/iter/Initializer/zeros:0H
?
training/Adadelta/decay:0training/Adadelta/decay/Assign-training/Adadelta/decay/Read/ReadVariableOp:0(23training/Adadelta/decay/Initializer/initial_value:0H
?
!training/Adadelta/learning_rate:0&training/Adadelta/learning_rate/Assign5training/Adadelta/learning_rate/Read/ReadVariableOp:0(2;training/Adadelta/learning_rate/Initializer/initial_value:0H
?
training/Adadelta/rho:0training/Adadelta/rho/Assign+training/Adadelta/rho/Read/ReadVariableOp:0(21training/Adadelta/rho/Initializer/initial_value:0H
?
.training/Adadelta/conv2d_1/kernel/accum_grad:03training/Adadelta/conv2d_1/kernel/accum_grad/AssignBtraining/Adadelta/conv2d_1/kernel/accum_grad/Read/ReadVariableOp:0(2@training/Adadelta/conv2d_1/kernel/accum_grad/Initializer/zeros:0
?
,training/Adadelta/conv2d_1/bias/accum_grad:01training/Adadelta/conv2d_1/bias/accum_grad/Assign@training/Adadelta/conv2d_1/bias/accum_grad/Read/ReadVariableOp:0(2>training/Adadelta/conv2d_1/bias/accum_grad/Initializer/zeros:0
?
.training/Adadelta/conv2d_2/kernel/accum_grad:03training/Adadelta/conv2d_2/kernel/accum_grad/AssignBtraining/Adadelta/conv2d_2/kernel/accum_grad/Read/ReadVariableOp:0(2@training/Adadelta/conv2d_2/kernel/accum_grad/Initializer/zeros:0
?
,training/Adadelta/conv2d_2/bias/accum_grad:01training/Adadelta/conv2d_2/bias/accum_grad/Assign@training/Adadelta/conv2d_2/bias/accum_grad/Read/ReadVariableOp:0(2>training/Adadelta/conv2d_2/bias/accum_grad/Initializer/zeros:0
?
-training/Adadelta/dense_1/kernel/accum_grad:02training/Adadelta/dense_1/kernel/accum_grad/AssignAtraining/Adadelta/dense_1/kernel/accum_grad/Read/ReadVariableOp:0(2?training/Adadelta/dense_1/kernel/accum_grad/Initializer/zeros:0
?
+training/Adadelta/dense_1/bias/accum_grad:00training/Adadelta/dense_1/bias/accum_grad/Assign?training/Adadelta/dense_1/bias/accum_grad/Read/ReadVariableOp:0(2=training/Adadelta/dense_1/bias/accum_grad/Initializer/zeros:0
?
-training/Adadelta/dense_2/kernel/accum_grad:02training/Adadelta/dense_2/kernel/accum_grad/AssignAtraining/Adadelta/dense_2/kernel/accum_grad/Read/ReadVariableOp:0(2?training/Adadelta/dense_2/kernel/accum_grad/Initializer/zeros:0
?
+training/Adadelta/dense_2/bias/accum_grad:00training/Adadelta/dense_2/bias/accum_grad/Assign?training/Adadelta/dense_2/bias/accum_grad/Read/ReadVariableOp:0(2=training/Adadelta/dense_2/bias/accum_grad/Initializer/zeros:0
?
-training/Adadelta/conv2d_1/kernel/accum_var:02training/Adadelta/conv2d_1/kernel/accum_var/AssignAtraining/Adadelta/conv2d_1/kernel/accum_var/Read/ReadVariableOp:0(2?training/Adadelta/conv2d_1/kernel/accum_var/Initializer/zeros:0
?
+training/Adadelta/conv2d_1/bias/accum_var:00training/Adadelta/conv2d_1/bias/accum_var/Assign?training/Adadelta/conv2d_1/bias/accum_var/Read/ReadVariableOp:0(2=training/Adadelta/conv2d_1/bias/accum_var/Initializer/zeros:0
?
-training/Adadelta/conv2d_2/kernel/accum_var:02training/Adadelta/conv2d_2/kernel/accum_var/AssignAtraining/Adadelta/conv2d_2/kernel/accum_var/Read/ReadVariableOp:0(2?training/Adadelta/conv2d_2/kernel/accum_var/Initializer/zeros:0
?
+training/Adadelta/conv2d_2/bias/accum_var:00training/Adadelta/conv2d_2/bias/accum_var/Assign?training/Adadelta/conv2d_2/bias/accum_var/Read/ReadVariableOp:0(2=training/Adadelta/conv2d_2/bias/accum_var/Initializer/zeros:0
?
,training/Adadelta/dense_1/kernel/accum_var:01training/Adadelta/dense_1/kernel/accum_var/Assign@training/Adadelta/dense_1/kernel/accum_var/Read/ReadVariableOp:0(2>training/Adadelta/dense_1/kernel/accum_var/Initializer/zeros:0
?
*training/Adadelta/dense_1/bias/accum_var:0/training/Adadelta/dense_1/bias/accum_var/Assign>training/Adadelta/dense_1/bias/accum_var/Read/ReadVariableOp:0(2<training/Adadelta/dense_1/bias/accum_var/Initializer/zeros:0
?
,training/Adadelta/dense_2/kernel/accum_var:01training/Adadelta/dense_2/kernel/accum_var/Assign@training/Adadelta/dense_2/kernel/accum_var/Read/ReadVariableOp:0(2>training/Adadelta/dense_2/kernel/accum_var/Initializer/zeros:0
?
*training/Adadelta/dense_2/bias/accum_var:0/training/Adadelta/dense_2/bias/accum_var/Assign>training/Adadelta/dense_2/bias/accum_var/Read/ReadVariableOp:0(2<training/Adadelta/dense_2/bias/accum_var/Initializer/zeros:0*?
serving_default?
9
inputs/
conv2d_1_input:0?????????1
score(
dense_2/Softmax:0?????????
tensorflow/serving/predict