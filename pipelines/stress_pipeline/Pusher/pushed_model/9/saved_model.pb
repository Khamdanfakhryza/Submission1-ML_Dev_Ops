Ӊ
�1�0
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
�
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( ""
Ttype:
2	"
Tidxtype0:
2	
�
DenseBincount
input"Tidx
size"Tidx
weights"T
output"T"
Tidxtype:
2	"
Ttype:
2	"
binary_outputbool( 
$
DisableCopyOnRead
resource�
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorMod
x"T
y"T
z"T"
Ttype:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype�
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
�
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
�
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
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
�
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint���������
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.16.22v2.16.1-19-g810f233968c8��
��
ConstConst*
_output_shapes	
:�*
dtype0*��
value�B��BiBtoBandBtheBaBmyBofBmeBinBthatBforBitBwasBthisBisBbutBheBwithBhaveBsoBonBsheBimBherBbeBweBatBjustByouBorBlikeBnotBaboutBdoBhadBoutBifBasBwhatBwhenBbecauseBhimBbeenBallBupBknowBdontBfeelBareBamBwouldBfromBhasBgetBtimeBtheyBreallyBevenBcanBwillBnowBwantBsomeBhisBanBbeingBiveBhelpBthingsBoneBbyBbackBwhoBhowBdayBoverBgoingByearsBmuchBi’mBitsBpeopleBgoBneedBanyByourBthereBthemBnoBmoreBotherBafterBneverBthroughBthinkBcouldBthenBintoBlifeBworkBrightBalsoBwhichBfriendsBwayBonlyBcantBwhereBthoughtBoffBmyselfBcomeBveryBtooBmakeBlastBtoldBourBdidB	somethingBpersonBnightBgoodBfirstBbeforeBanxietyBtheirBtellBstillBseeBalwaysBwereBwentBsinceBhereBgotBenoughBdidntBtalkBsomeoneBsameBrelationshipBmonthsBwhileBtryingBstartedBsaidBloveBlotBjobBhavingBfriendB
everythingBanyoneBwellBissuesBfeelingBagainBlongBdon’tBaskBuntilBtakeBfamilyByearBusBfeltBanythingBthanBshouldBschoolBpastBhomeBbadBagoB2BweekBmostBhappenedBgettingBtheseBmadeBhealthBfewBdoesntBaskedBabuseBableBsureBnextBmoneyBlittleBi’veBelseBdownBawayBaroundBtimesBnothingBmentalBit’sBcarBanymoreBthoughBthoseBputBmotherBmaybeBkindBwhyBtriedBtalkingBpayBonceBidBhesBeveryoneBdueBanotherBtwoBtogetherBstopBpointBplaceBmomBmetBillBhardBfindBeveryBdaysBbestBalmostBworkingBwantedBthingBsideBnewBletBlaterBkeepBdadB	boyfriendBbitBactuallyBwantsBthinkingB	therapistBthatsBsleepBsayBmightBliveBfoodBetcBduringBdecidedBcoupleBcloseBadviceB3BwithoutB
understandBtryBrememberBmeanBhoursBhomelessBdoesB
depressionBcameBwasntBtellingBstuffBstartBptsdBpanicBownBgiveBdoneBcallBalreadyBuseBshesBpleaseBphoneBmovedBmindBmanyBhiBheadBguyBfuckingBdealBdateBbothBbedBwontBtldrBtiredBthoughtsBprobablyBpostBparentsBoftenBmoveBmonthBmanBmakingBisntBhouseBhappyBgreatBfoundBendBeitherBeachBcan’tBbetweenBanxiousB5B1BworseBtodayBtheresBthanksBsymptomsB	situationBshortBshareBscaredBrecentlyBmakesBleaveB
experienceBeverBenjoyBdoingBcollegeBbrainBaskingBafraidBworriedBthreeBsupportBstoryBstayBreadingBprettyBopenBoldBleastBgirlBexBcryingBchildBbelieveBangryBabusiveByoungerBweeksBwaysBurlBunderBtherapyBsoonBsexBsayingBrunBreasonBreadBquestionBpoliceBothersBneededBmayBlivingBleftBknewBissueBinsteadBideaBhonestlyBhighBcouldntB
completelyBbrotherBbetterBwouldntBworldBwallBtookBtableBstudyBstoppedB	sometimesBsisterBsaysBhoweverBhitBgetsBgaveBfeelingsBendedBdidn’tB	currentlyBcomesBcannotBattacksBaloneBabusedB4ByesBworstBworryBwishBwhateverBweirdBusedBtakingBtakenBsurveyBspentBselfBseemedBseemBrelationshipsBrealizeBproblemBnoticedBnormalBmenBlookingBkidsBhospitalBhopeBfatherBfactBfaceBdoorB
constantlyBchangeBbringBbreakBbigBanywayBaccessB10BvictimBventB
universityBtrustBtouchBsuchBsortBshitBsexualBseeingBsafeBroomBrestBrentBproblemsBpartBpainBpaidBokayBnameBmorningBmomentBlettingBkindaBhusbandBhurtBhugeBholdBhateBhappenBguysBgroupBfearBexperiencedBeasyBdrinkingBdogB	doesn’tBdoctorB	depressedBdatingBcostBcomingBbrokeBbodyBbillsBbecomeBbecameB	apartmentBageB18ByetBwrongBwomanBwithinBwifeBweveBwantingBtwiceBturnedBtraumaBthrowBthat’sBthankBteamBstoreBstepBspendBsocialBsmallBseveralB	seriouslyBsentBsecondBsawBsadBresultBprocessBpresentBpostedBnearlyBnearBmustBmemoryB	literallyBlistenBknowsBisn’tB
interestedBhorribleBhedBheartBhearBhaventBhandBgoneB	followingBfinallyBfaultBeffortBeatingBdisorderB	difficultB	differentBcurrentBcryBcompanyBcommonBcoffeeBcheckBcareBcalledBbookB	beginningBanswerBalcoholBagainstB“iByoungB	wonderingBunderstandingBtrueBtripB	treatmentBtownBtearsBtalkedBsurgeryBsuperBstudentBstruggleBstomachBsoundBsorryBsleepingBsickBshelterBsevereBseenBseemsBrunningBrecoveryBrealBreadyBquiteB	questionsBpossibleBpositiveBpillowBpictureBpartnerBoweBorderBokBnumberBmovingBmentallyBmeetingBlovedBlessBlateBjulyBinterestBintenseBhelpedBhellBharderBhadntBgottenBgoesBgeneralBforwardBfocusBfloorBfigureBfightingBfallBexplainBexperiencesBexactlyBcrazyBcourseBcountryB
counselingBcontrolBcontinueBchildrenBcausingBcaseBbagBbBattackBanywhereBaffordBaddressBaddedBaccountBacceptB8B6B17BwritingBworthBworkedBwomenBwillingBwholeBwatchBvoiceBvetBturnBtowardsBtopBtonightBtensionBsummerBsuicideBsuggestionsBstrongBstraightBstoriesBstandingBstaffBsleptBsingleBshowBsetBseriousBsendBsafetyBresearchBrescueBrepeatBredditBreachBquitBpmBplayBplanBphysicalBperiodBparticipateB	obviouslyBnobodyBniceBmultipleBminutesBmessageBmessBmemoriesBmembersB
medicationBmedicalBmeantBmatterBmanagerBmaleBmaintainBlookBlikesBknownBkickedBkeptBinsideBinformationBhourBhopingBhittingBhidingB	happeningBguiltyB	groceriesBgivenB
girlfriendBfixBfellBfeelsBexceptB
eventuallyB	emotionalBdrinkBdailyBcutB	coworkersB
couldn’tBconversationBconstantBcoldBcityB	childhoodBcausedBcatBburdenBbraveBboyBbillBbfBbehindBbeganB
backgroundBawfulB	availableBasleepBarentBappreciatedBamountBamazingBalongB7B30B12B	yesterdayBweightBwatchingBwalkingBwalkedBwalkBwakeBwaitingBwaitBvisitBviolenceBvacationBusingBupsetBunableBtrulyB	triggeredB	traumaticB
threatenedB
successfulBsubBstupidBspeechBsoundedBsoulBsolveBslowlyBsixBsittingBsignBshoulderBshittyBshakingBsexuallyBsessionBserviceBsearchedBscreenBsaveBrulesBroughBrideBrickB
repeatedlyBrefusedBrealizedBrantBrandomBquickBputtingBpushedBpushBpunchedBpsychiatristBpregnantBplatformBplansBpickB
physicallyBpetsBpayingBpassedBpassBonlineBnoticeBnoteBnormallyBnightsB
nightmaresBnecessitiesBnametagBmuseumBmouthBmobilityB	miserableBmilitaryBmiddleB	mentionedBmedsBmeansBmealBmattressBmarriageBmanageBlosingBlookedBlongerBlivedBledBleavingBlearnBlatelyBkeyBkeepsBjoinBjobsBinternetBinsecureBinjuredBimmediatelyBhe’sBheyBherselfBhelpsBhearingBhalfBgradeBgofundmeBgodBgivingBgirlsBfutureBfundsBfrustrationBfrontBfreeBfreakingBforeverBforcedB
flashbacksBfinishBfindingBfiguredBfightBfemaleBfarBfallingB	extremelyBexpressBexperiencingB	expensiveBeverydayB
especiallyBentirelyBemailBdrugsBdrivingB
disgustingBdiscordBdatedBcptsdBconfusedB	concernedBcompleteBclearBcleanBchoseBchangingBchanceBcertainBcausesBcalfBbuyBbusinessBbroughtBbornBbeginB	basicallyBbargedBbarB	attentionB
assistanceB	apologizeBanimalsB	ambulanceBallowedBaheadBagreedBadultBactingB
absolutelyB16B15B“youB–ByourselfByoureByoullByelledBwroteBwreckBworriesBwordsBwordBwon’tB	wonderfulBwishingBwerentBweedBwaterBwasn’tB
volunteersBviolatedBupdateBunfortunatelyBunderstandsBtruthBtroubleB	trimesterBtransmissionBtotallyBtinderBthrowingBtheyllB	there’sBtextedB	terrifiedBterribleBtendBsupposedBsufferBsuddenlyBsuccessB	subredditBstuckB
strugglingBstrongerB	strangersB
stepfatherBstayingBstandBspaceBsoberBsmokingBsitBsimplyBsimilarBshotBshiningBshe’sBserveBsenseBseniorBseekingBsecretlyB	screamingBscareBruinedBruinBroomsBromanticBrockBroadBretiredB	responsesBrespondB	resourcesB
researcherBremovedBrelatedBrelateB	regardingBrecoverBreceivedBreasonsBrateBrBpushingB
punishmentBpublicBprotectBprogramBpreciousBpositionBplayingBplannedBpizzaBpillsBpillBpickedBpermanentlyB	perfectlyBperBpeoplesBpeerBpeacefulBpeaceBpatientBpartnersBparanoidB	overheardBoutsideBoptionsBolderBnurseBnumbBnorB	nightmareB
negativityBneckB	necessaryBnastyBmuscleBmoviesBmondayBmomsB
moderatorsBmilesBme…mostlyBmarriedB	marijuanaBmarchBluckBloudBloseBloopBlocksBlocalB	listeningBlinkBlimitedBliedBlieBlevelBletterBlegBladyBknightBkilledBkillBkidBkeepingBjanuaryBjamesBjailBi’llBinvolvedB	interviewBinteractionsBinjuryBindependentBincreaseBimpactBignoredBhumanBholidayBholeBhigherBhelpingBhasntBharmBhappensBgroundBgrossB	generallyBgasBfuriousBfunBfullBfuckBfridayBfreedomBformerBforgotBfootBfollowedBflyingBfixedBfireBfineBfinanciallyBfatigueBfarmBfailBfacebookBeyesB	existenceBexaggeratingBevictionBeveningBescapeBenergyBendingBemptyBemotionallyB	emergencyB	educationBeatBeaseBearlierBdrunkBdreamBdramaticBdisabledB
disabilityBdinnerBdiedBdieB	diagnosedBdetailsBdeskB
departmentB
definitelyBdecadeBdebtsBdeadBdaughterBdadsBcriminalBcriedBcreativeBcreateBcrapBcoverBcopeBcontributedB
contributeBcontactBconstructiveBconsideringBconfuseBcomplexBcomplainBcommunityorientedB	collapsedBclubBclothesBclassBchooseBchoiceBchestBcheapBchatroomBchancesBcenterBcellBcaresB	caregiverBcardsBcardBcallingBbunchBbuiltBbreatheBboughtBbossBbloodBblamingBblameBbillingBbiggerBbecomingB	beautifulBbathroomBbarelyBbalanceBbadlyBawkwardBaverageB
atmosphereBassBarmourBarmBareaB
appreciateBappointmentsBappointmentB
apartmentsBanywaysBallowB
aggressiveBactivityBactionsBactionBactBacrossB60B500B50B160B”B“thisB“i’mBzombieBzachByou”Byou’reByoungestByellingByardsBx200bBwrittenBwoundB	worthlessBworkoutBwitsBwinBwildBwhoseBwhosBwhomBwhetherBwheneverBwhat’sBwelcomeBweekendsBweekendBwedBweatherBweakBwannaBwakingBvoicedBviolentBvideosBvictimsBviaBveteransBveteranBvariousBvalueBvaginaBusuallyBuselessBupstairsBuponBunsteadyBunsafeBunnecessaryBunlessBuniqueBunhappyBunderstatementBuncomfortableBuncleBunBultimateBuberBtypeBtwentyBtvBtrumpsBtruckersBtrialBtraumasBtoughBtouchingBtornBtomorrowBtinyBtillB	tightenedBtiesBthrownB
throughoutBthriftBthreatsBthirdB	they’veBtheyreB	thereforeB
themselvesB
thankfullyBtextBtestsBtestedB
terrifyingBtermsBtermBtenseBtendonsB
tendonitisB	temporaryBteenageBtechnicallyBteaBtallBtalksBsyndromeBswitchBswellingBsustainableBsuspectBsurveysB	supportedB	suggestedBsuffersBsuddenBsucksB
subsequentBstudyingBstudiedBstudentsBstressBstrainBstorytellingBstormedBstoodBstepsBstationBstartingBstareBstampsBstairsB	stabilityBspotBsportsBspokeBspmiBsplitBspilledBspendingBspecificallyBspasmsBsparkBspanBsoundsBsonB	somewhereBsolutionBsoldBsocketBsocietyBsmiledBsmarterBsmackingBslowBslipsBslightlyBslammedBskippedBskiingB
situationsBsilBshutBshowsBshowingBshowerB
shorteningBshopBshookBshoesBshiftBshellBshedBseverelyBsettledBseparateBsellingBsellBselfishB	seenheardB	seeminglyBseekBsecurityBsectionBsecretBscrewdriverB	screeningBschoolsBscheduleBsavingsBsatisfactionBrushedBrushBrupturedBrudeBroleBridBriceBreviewsBreturnedBretireBretailBresponseBresolveBrequiresB	requestedBreportsBreplyBrepairsBrepairBrememberingBrelicsBreliableBrelevantBreleaseBrelativeBrelatingB	relatableBrejectedB	regularlyB	recognizeBreciprocatedBreciprocateBrecallBrealityBrealiseBreactionBreactBratherBrapedBrammingBraisingBraisedBraiseBrageBradiatorBquestioningBpyschBpurchaseBpulledBpullBprovidedBprovideB
protectionBprisonBprintedB	pretendedB
prescribedB	pregnancyB	preferredBpplBpowerBpostsBpostingBpossiblyB	portrayalBpopularB	politicalBpointsBpointingBpocketBpleasureBplantarBpicturesBphonesBphoenixBphilipsBphaseBperspectivesBpersonalBperhapsBperfectBpayedBpaydayBpaulBpastaBpassiveBparttimeBparticipantsBparkBpantryBpamelaBpainfulBpageBpackingBoverseasBoverreactingB	overdraftBovercomeBoutcomeBoutcastBoutbreakB	ourselvesBosteoarthritisBoppositeBopinionsBongoingBonesBofficerBofficeBoffersBofferBodourBoctoberBobjectsBnyBnowhereBnovBnoneBnewsBnegativeBneedsBnearrelationshipBnavyBnatureBnanBnamedBnakedBmusclesBmumBmsBmonthlyBmonsterBmonitorBmomentsBmolestedBmoduleBmodsBmobileBmiscommunicationB
miniwinnieBminimalBmineBmillionBmildBmilBmidnightBmidBmemberB	melbourneBmeetBmeantimeBmasturbatingBmarinesBmanagedBmajorBmadBlyingBluckilyBlowerBlowB	lorazepamBlongtermBlocationBloanBlivesBliverBlistedBlimitsBlikelyBlightsBliarBlengthBlegalBleadsBleaderBlayBlaughingBlargeBlackBknowingBknifeBkissingBkillingBkidneyBkickingBkBjustifyB	judgementBjoggingBjoblessBjawBjackingBi’dBit”BitemsB	isolatingBisolatedBinvestigationBintimidatingB	insuranceB	instagramBinseparableBinpersonBinfoB	influenceBinflammatoryBindividualsB
individualB
incrediblyBincreasinglyBincomeBincludeBincidentBimprovementB	importantBimagineBillnessBignoresBideasBhurtingBhungBhundredBhousesBhotBhostageBhorrorB	horrifiedBhopefulBhopedBhoneyBhometownBhistoryBhipBhimselfB
highschoolBhideBhelpfulBhelloBheldBheelBheavenBheardB	headachesBharshB	harassingB	happinessBhangingBhangBhandoutBhandleBhandfulBhairBhadn’tBgymBguyevenBguideBguessBgrowingBgroceryBgrewBgreatlyBgrandB
graduationBgradesBgradBgrabbedBgoogleBgonnaBgoalBgingerBgiantBgfB	genuinelyBgeneralizedBgamingBgainBgBfunnyB
frustratedBfruitBfrozenBfriendlyBfreshmanBfreezeBfranklyB
formattingBformatBformBforceBfolksBfliesBfitBfirefighterBfiredBfindsB	financialBfilledBfieldBfideszBfibromyalgiachronicBfeetBfebruaryBfastBfarthestBfamilialBfallsBfairlyBfairBfailureBfailingBfaciitisBfacedBexposedB	expectingBexpectedBexpandBexistB
exhibitionBexgirlfriendBexcitedBexampleB
everywhereBeventsBeventBesteemBentiretyBenjoyingBengineeringBengagedBendangermentB	encounterB	employeesBemotionsB
elementaryBeditBeddiesBeddieBeasilyBearlyBearBdyingBdroveBdroppedBdreamsBdreadBdoubleBdoseBdoorsBdoctorsBdiwnBdistanceBdissatisfactionBdiskBdiseaseBdirtyBdirectlyBdiaryB	diagnosesB
developingBdespiteBdesireBdenyingBdementiaBdegreeBdeeperBdeclinedBdecisionBdecentBdecemberBdecadesBdeathBdearBdealingBdeadlyBdarkBdamnBdamageBcutsB	customersBcuratingBcupBcuoBcrushesBcreatedBcrawlBcoworkerBcousinsBcourageBcounsellingBcougarsBcorrectBcopedBcoolB	convincedBconversationsBcontemplatingB
containersB	consumingBconsistentlyBconnectBcongratsBconfiscatedBcondomBcomputerB	completedBcompetitionBcomparedBcommunicationBcommitBcommentsBcomfortableBcollectivelyB
collectiveB	collectedBcollapseBclothingBcloneBclinicalBclearestBclassesBcirclesB
cigarettesBchoosesBchillBcheckingBcheatedBchasedBchaseBchargeBchaosBchangedBcentersBcauseBcaughtBcannotdoBcancelBcalmlyBcalmBbygonesBbusyBbullyBbuildingBbtwB	brunswickBbrowseBbrothersBbreakingBbrandBbrakesB
boundariesBbottomB	botheringBbotheredBbotherBborrowBboredB	boondocksBbooksBbondBblowBblogBblamedBbladderBbizarreBbitsBbitcoinBbipolarBbeyondBbeverageBbenefitB
belongingsBbelievedBbeatBbearBbatBbasisBbasicBbankBbanB	awarenessBawareBavoidBautodepositsBautisticBauntBaugustB
attractionB	attendantBatenololBassumingBassumeBassholeB	assaultedBassaultB	arthritisBapprovedBapplyingBappetiteBappearsBapartBanybodyBannoyedBankleBangerBamongB
alternatorBalternatingB	alongsideBaimBagendaB
afterwardsBaffiliationBaffectBadultsBadmitBaddB
activitiesBachillesBaccountsB	accordingBaccidentBabsoluteB9B815B800B7thB717B550B4thB40mgB300B26B2500B25B247B24B22B21B20sB2017B2016B1mgB19B15thB13B100B🙂B🐰🥕B❤B…B“whatB“wellB“therapist”B“tellB“stayB“ok”B“obviouslyB“niceB
“name”B“itB“heyB“dragB“define”B“checkmark”B“B
‘tonightB‘ohB—B£50B£2000B£10BzeroByrByourselfthinkByogaByellByayBxanaxBwristsBwrestleBwrapBwowB
wouldn’tB	worthy”BworstabusiveBworryanxietyBworksB	workplaceBworkerBworkbookBwoodworkingBwoodenBwonderedB	women’sB	woman’sBwokeBwoesB	witnessesB	witnessedBwithdrawalsBwiseBwiredBwipeBwinterBwinkyBwinceBwifiBwhoeverBwhispersB
whatsoeverBwhatsBwe’llB	welllikedB
wellbutrinB	wellbeingBweighsBweighingBweighBweeklyBweddingBwebBweaselBwearsBwearingB	wealthierBwealthBweakerBwaxedBwatersBwatchedBwasteBwasntsheBwashBwarmerBwarmBwarBwanderBwalletBwaitsB
vulnerableBvulnerabilityBvolcanoB
vocabularyBvividBvisitsBvisitorBvisitedBvisceralBvirusBviralB
vindictiveBvillageBviewBvideoB
victimizedBvicodinBvibeBverifyBverbalB	venturingBventingB	vengeanceBveinsBveinBvandreyBvanB
validationB
valentinesBvaButterlyBusernameBusefulBusaBurgentlyBupsBupperBunusualBunsureBunstableB	unrelatedBuniverseBuniB
ungratefulBungluedB
unfamiliarBunexperiencedB	unethicalB
unemployedB
understoodB	underagedBunderageB
undeniableBunconsciousB
unbuttonedB
unattendedBunacceptingBunacceptableBukBuglyBubersBtypesBtwistedBturnsBturningBturkeyBtumorBtuesdayBtthanBtrustworthyBtrustworthinessBtrustingBtrumpBtroughBtripsB
trimestersBtriggersB
triggeringBtriggerBtrichBtrialsBtrendB
tremendousBtreatsBtreatingBtravelBtrappedBtransportationBtransferredBtransferBtransactionsBtrainingB	tracphoneBtrackedBtoxicBtowardBtouchedBtorontoB
topnotcherBtopicBtoo’BtoneB
toleratingB	tolerableBtoddlersBtodaysBtmjBtiresBtiredspendingBtipsBtippedBtimidBtimelineBtimeiBtilBtickingBthursdayB	throwawayBthroatBthriveBthrewBthreatenungB	threatensBthreateningBthreatBthreadB
thought”Bthis”BthisthisBthinksBthinkersB	they’reBtheydBthescottsdaleB
therapistsB	therapiesBthenandBtheftBthatiBthankedBtextingBtexasBtestBterriblyB
tendenciesBtenBtemperaturesBtellsBteenagerBteenBtearBteamsBteachersBteachBtbiBtaxesBtaughtBtattooedBtasksBtaskBtankieBtameBtagBtadBtBsystemBsymptomBsympathizeempathizeBswornBsworeB	switchingBswitchedBswingsBsweetlyBsweetBsweatingBswallowBsustainabilityB	suspectedBsurvivingthatBsurviveBsurvivalB
surroundedBsurfedBsurfaceB
supposedlyB
supportiveBsupplyBsuppliedBsuperstrengthBsupermarketB
suitematesB
suggestionBsuggestBsugarB	sufferersBsufferedBsueBsuccessfullyBsubtleBsubstantialBsubsequentlyBsubsBsubjectsBsubjectBstyleBstupidlyBstumbledBstuffingBstubbyBstubbornBstrungB	struggledBstrikingBstrikesBstrictBstretchBstreetsBstreetB
strategiesBstrangerBstrangeBstrainedBstormBstoresBstorageB	stoplightBstokedBstillsBstillinBsternlyBstemsBstealingBsteadyBstaysBstatusBstatsBstatingBstatesB
statementsBstatedBstartsBstartledBstarterBstandardizedBstallsB	stairwellBstainsBstabbedBssriBspurredB	splittingBspineBspinalBspinBspendsBspecificB	speciallyBspecializesBspecialBspeakingBspeakerBspeakBspaghettiosB	spaghettiBsourceBsoundingBsoreBsooooBsonsBsongsBsomewhatBsomehowBsomaticBsolvedBsoloBsolitudeBsolidBsodaBsociallyB	socializeBsnideBsnappingBsnappedB	snapchatsBsmokableBsmithyBsmithB
smartphoneBsmartBsmackBslipBsleepsBslappedBskinnyBskinBskillsBsitesBsiteBsisleyBsippingBsillyBsignedBshyBshuntBshunmedBshunBshruggedBshowedBshovedBshoutingBshotsBshortsBshortlyBshortageBshockedBshockBshirt”BshirtsBshirtBshipBshiftsBshe’llBsheepishBsheaBsharedBsharecounselencourageloveBshamefulBshallBshakenBshakeBsexualromanticBseventhBsessionsBsepticBsensoryB
selfstigmaBselfinfiniteB
selfhatredB
selfesteemBselfdisgustBselfcareBselfadvocacyBselectBseizuresBseizeBseesBsecureBsectorBsecretsB	secondaryBseasonBsearchBsculptedBscriptBscrewedBscrewBscreensBscreamedBscreamBschoolwhereBscholarshipBschemeB	schedulesB	scenariosBscaryBscarsBscarringBsavourBsavingBsavedBsauceBsatisfyBsatB
sappyhappyBsaneB	sanctuaryBsamplesB	salvationBsaltBsalesBsalemBsalaryBsaiddidBsadnessangerBsaanBr’sBryanBrwordBrwatchpeopledieBrushesBruralBrunsBrunawayBrumorB	rummagingB
ruminatingBruledBruiningBrrandomactsofpizzaBrpBroutineBroughlyBroperationsafeescapeB	roommatesBroommateBrodeB	roadblockBrnBrmorbidrealityBriskBriseBripBrimsBridingBreviewedBreviewBrevengeB
revelationBreturnorBretrieveBresumesB	resultingBresultedBrestroomBrestrainingBrestlessnessB
restaurantBresponsiblyBresponsibleBresponsibilityBrespiratoryBresourceB	resistantBresignedB	residenceB
resentmentBrequiredBrequestsBreportedBrepliedBreplacedBrepayBrentsBrentedBrenourishingBremotelyB	remindingBremindedBremindB
rememberedBremarkBremainBrelyingBrelyB	reluctantBreligiouslyB	religiousBrelievedBreliefBrelaxingB
relaxed”B
relativelyBrelatesB	rejectionBregretB
registeredB
regardlessBrefundB
referencesB
recruitingBrecordB
recognizedBrecognisingBreclinerBrecklessnessB	receivingBreceivesBreceiveBreceiptBrebuildBrebelledB
reasonablyB
reasonableB	rearendedB	realizingBrealisticallyBreadsB	reactionsBreactingB	reachableBreBrborrowBrassistanceBrarelyBrareBrapingBrandomlyBranBrampedBramblingBraisesBraidedBradioedBradicalizedBradicalBrackBracistBracesBraccidentalsuicideBrabbitBquoteBquittingBquirksBquietBquicklyBquarterBquantitativeB	qualitiesBqualificationsBputsBpursueBpurseBpurposesBpurposeBpurelyB	purchasedBpunchingBpuddlesB	psychoticBpsychologistBpsychologicalBpsychiatricBproviderBprovesBprovenBproveBproudBprotocolBproposeBpropertyB
propagandaBproofBpromptedBpromptB	promotionBpromotedBpromisesBprojectsBprojectBprohibitingBprogrampeopleBprofileB
productiveB
processingB	probationBprnBprivateBpriorB	principleBprimeBpriedBprickleBpricedBpreviousB
pretendingBpretendBpressureBpressedBpressB
presentingB	presentedBprescriptionBprepaidB
preferenceBpredestinedBpreachedBpreBprazocinBprayingBprayBprankB	pragmaticBpractitionerB	practicedBpracticeBpotsBpotatoBpotBpossibilityB
possessiveB	positionsBportrayBportionB	portfolioB
populationBpoppedBpoorBpoolB	pollutionBpolitelyBpolicyBpoliciesBpokesB	pointlessBpointedBpodcastsBplottingBplotBplentyB
pleasehelpBplayingprojectingBplayfulBplayedBplaydoBplateBplanningBplainBplacesBpitchBpitBpineBpillsiBpiercedBpiecesBpieceB	picturingBphrasedBphotosB
phonecallsBphasedBpettyBpetB	persuadedB
personallyB
persistentB	permanentBpercocetBpentBpenneBpenisBpegBpedoBpaypalBpaymentBpatternBpatrickBpatientsBpatchBpassiveaggressiveBpassionsB
passionateBpassionBpassingBpartyingsayingBpartyBpartsBpartnershipsBpartiesBparticularlyB
particularB	partiallyB
paroxetineBpariahB	parentingBparentBparanoiaBparBpantsB	pansexualB
palpitatesBpalpatationsBpainterBpaintBpainsBpaceB	oxycontinBownsBoverwhelmedB	overwhelmBovertlyBoverthinkingB	overtakesBoverstimulatingBoversteppingB	overreactB
overpricedBoverdueBoverdoseBoverallBovariesB
outpatientBoutgoingBoutearnsB	other’sBorganizationBordersBorderedBordealBorangeBopportunityB	opponentsBopinionBoperatesBopensBopeningB	openendedBopenedBontoBonsetBonoffBoniBomissionBoldsBoldgoingBoldestBolBokcupidBoff”BoffsBofflineB
officiallyBofferingBoddBoccurredB	occasionsBoccasionallyBobjectivelyBnutsBnumerousBnumbnessBnowandBnotifiedBnotableBnorthBnonexistantBnonBnokiaB	nocturnalBnipplesB	newspaperBnewsfeedcanBneutralBnetflixBnervousBneitherBnegotiatingB
negligenceB
neglectiveBneedntB	necessityBnauseousB	nauseatedB	narcisistBname”BnamesBnakesB	myself”BmutualBmusicBmuddiedBmrsaBmoversBmotorcyclesBmostofBmorrisonBmorgiesBmoreiBmorbidBmoodB	monitoredBmodernB
moderationB
moderatingBmoderatesevereB	moderatedBmodelBmodeBmodBmoBmixBmitigateBmistakeBmissingBmissedBmissB
misophoniaBmirtazapineBminuteBminorBministerBmindfulBminBmimingBmillB	migrainesB
might’veB	middlemenBmftsBme”BmexicoBmessyBmessedBmessagedBmerryB	mepushingBmentorBmentionsBmentionB
meningitisBmemorialBmembershipsB
membershipBmeloveBmedsbutBmedicineBmedicationsBmediaBmedBmeannessBmeaningBmealsBmaturedBmatureBmattersBmattBmatchBmasBmarketBmaritalBmanpowerBmanipulativeBmanipulatedBmanicB
manager”B
malefemaleBmakerB	maintainsBmadlyBlymeBlunchBlunaBlprBloyaltyBloyalBlovewellBlovesBlovelyBloudlyBlotsBlostBlossBlooksBlongingBlonelyBlockerBlockedBlockdownB	locationsBlocatedB	localizedBloansBloadingBlkkelyB	lividthisBlividBlistingBlistBliquidBlineBlightlyBlightingBlightBliftingB	lifestyleBlifeiB	lifeaaandBliebutBliarsBlettersBletsBlendBlegitimatelyBleftistBleaseBlearnedBleakBleagueBleadingBleadBlcswsBlawsBlaundryBlaundromatsBlaughedBlaterbutBlastsBlashingBlashBlargerBlaptopBlangarBlandlordBlandBlaidBlackedB	laboriousBlabiaBkratosBknow”BkitchenBkissBkinkBkindsBkindnessBkimBkickBketamineBkeenBkarmaB
justifyingB	justifiedBjumpsBjumpingB
judgmentalBjudgesBjoyBjourneyBjongBjokeBjointBjoinedBjohnsBjobbikBjewelryBjerkB
jeopardizeBjealousBjayBjasonBjapanBjanBittheBitselfBislandB
irrationalBironyBironicBirelandBiraqBinvitedBinviteB	intuitionB	intrusiveBintrospectionBintoxicatedB
intonationBintimacyrelatedB
interviewsBinterventionsB	internalsBinterestinglyBinteractionBinteractingBinteractBintendedBintelligentBintelligenceB	integrityBinsurmountableB
instructorB	instituteBinstantB	instancesBinsignificantBinsightBinsertBinsecuritiesBinsaneBinputB
innocentlyBinnocentBinnieBinnerBinjuriesBinhalerB	ingrainedBinformedBinfluxBinfiniteB
infidelityB
inevitablyB
indulgenceBinducingB
indicationBindicaBindianaBindestructibleBindependentlyforBindependentlyB
incredibleB	increasedBincompetentB
incoherentBincludesBinclinationBincelBimprovesBimproveBimpressB
impossibleBimplyingBimplyBimpairBimoBimmenseB	immediateB
immaturityB	illnessesB	illegallyBignoreBieBidkBidiotBiceBiaffBhypervigilenceBhyperarousalBhusbandsBhusbanddriverBhurlingBhungryB	hungarianBhsrcBhrBhousingB	householdB
hotelmotelBhostingB	hospitaliBhopkinsBhonourBhonestyBhomiesBhomeworkBhomeschoolingBhomeschooledBhomelessnessBhomechefBholidaysBholdsBhobbyBhiringBhiredBhighsBhidBhe’llBhere’BheavyBheavenlyBheatingBheatherBheaterBheartsBheartbrokenBhealthyBhealingBhealerBheadedBheadacheBhatingBhatBhassleBhasn’tBhardlyBhardestBhardcoreBharassedBhandsBhallucinationsBhallbarBhalfwayBhairedBhahaBhagglerBhabitsBgutBgustoBguidingBguessedBgrownBgrovelBgroupsBgratefulBgraspBgrandmotherBgrandfatherBgramsBgrainBgraftB	graduatedBgpBgotoBgorgeousBgoreBgophoneBgongBgoadsBgmeBgluedBglassBgladBgivesBgistBgirlfriend24fBgigBgiftsBghostedB
geographicBgenuinenessBgentlyBgenitalsBgenerousB
generosityBgeneralistsBgenderBgelatinBgaze—aB
gatheringsB
gaslightedBgarbageBgamestopBgamesBgameBgalleryBgainedBgageBgabaBfussBfurthermoreBfurtherBfun”BfundamentalBfunctioningBfunctionBfullyBfuelBfuckedBfrustratingBfruitionBfrigginB
friendshipBfriendsfamilyBfriendlypeacefulBfreshBfrequentBfreespiritedB
freelancerBfreckleBfreakBfranticallyBframeB	fracturesBfourthBfourBfoughtB	fortunateBformerlyB	forgivingBforgivenessBforgiveBforgetBforeheadBfondlingBfondleBfollowupBfollowBfoldBfocusingBfmilB
fluoxetineBfluidBflownBfloridaBflirtsBflirtingBflirtBflightBfleeingBfleeB	flatteredBflaringBflaresBfiveB	finishingB	financingB
financialsBfinalsBfillBfiledBfightersB	feverdocsBfeverBfellowBfeedingB	feedbacksBfebBfearsBfearlessBfearingBfearedBfbBfavoriteBfavBfateBfatB
fascinatesB	fantasizeBfanclubBfalseBfallenBfakeBfaithBfairfaxBfailedBfadesBfactsBfactorBfacialB
facetofaceBeyecandyBeyebrowsBeyeBextremesBextremeBextraB
externallyB
expressionB
expressingB
expositionBexposeB	exploitedBexplodedBexplanationsB	expertiseBexpersonBexperiencessymptomsBexpensesBexpectBexitedBexistedBexistantBexhibitsB
exhaustingB	exhaustedBexesBexcuseBexcludedBexceptionalB	exceptionBexboyfriendBexamsBexamplesBexaminerBexamineBexactBevidenceB	everybodyBeventconversationB
evaluationBeruptsBerrorsBerBequalBepisodesBenvironmentBentranceBentireBenterBensureBenglandBencouragementBencephalitisBemsBemployedBemojiBemilyBemdrBembarrassedBelevatedB
electricalBelbowBeightBeffectsB	effectiveB	effectingBedgeBecstaticBecstasyBeasy”BeasterBeasierBeasedBearsBearningBdutyBdumpedBdumbBdudeBduckedBdrunksBdrumBdruggiesBdrsBdroppingBdropBdrivesBdriversBdrinksBdressBdramaBdragBdraftsBdrBdowntimeB
downstairsB
downloadedBdoucheBdoubtsBdoubledBdotardB	doorstallBdonationBdonatedBdonateBdonaldB	dominatedBdomesticBdollarsBdollarBdogsBdoggyBdoersB	documentsBdocumentingBdocumentBdocBdmBdizzyBdivorceBdividedB	disturbedB
distressedBdistressBdistractionsBdistractionB
distractedBdissociativeBdissociationsB
disserviceBdissertationBdisrespectedBdisneyB	dismissedBdisgustB
discussionB
discussingB	discussedBdiscussB
discourageB
disclaimerB
dischargedBdisapprovalBdisappointingBdisappointedB	disappearBdisagreeBdisadvantagedB	directionBdirectB
diminishedBdimeBdigitsB	digestiveBdigB
difficultyBdifficultpainfulBdifferent“real”B
differenceBdiesB	diagnosisBdevotionBdevicesBdeviceB	developedBdevelopBdevastateddontB
devastatedB
determinedBdetailedBdestinyBdesperationBdesperatelyBdesignedBdeservesBdeserveB
describingBdepressionnaturallyBdepositBdeportedBdepletedBdepersonalizationB
dependableBdenverBdenseBdeliveryBdeletingBdegreesB	defrosterB
definetelyBdefineB	defensiveBdefectsBdefamingBdeepB	decliningBdeclineB	decisionsBdecidesBdebtBdearlyBdealtBdeadlineBdeactivatedBdbtBdayyouBdayfromB	daughtersB	dateshaveBdatesBdashBdareBdanikaBdandyBcystBcuttingBcustomerB	curiosityBcurbBcultureBcuisinesBcrybabyBcrushBcruiseBcruelBcrossB
criticismsB	cripplingBcringeBcrimeBcricketBcreepedBcreditBcrawlingBcrashBcramBcpsBcoveredBcourtBcoursesBcouplesBcountyB	countlessBcounterBcountBcouchhoppingBcouchBcorrineBcornett’sBcornerBcopsBcoolerBcontroversialB
controlyouBcontrollingB	continuedBcontendBcontactsBconsumedBconsultationBconsolidateBconsolesB
consistentBconsiderBconsequencesBconsentBconsciouslyB	consciousB
connectingB	connectedBconivingBcongratulationsB	confusingBconfrontingBconfrontB
conflictedB	confirmedB	confidentB
confidenceBcondoB
conditionsB	conditionBconcreteB
conclusionBconcernBconceptB	computersBcomprehendedB
compoundedBcomplimentsBcomplicationsB	completlyB
completionB	complaintBcompensationsB	communityBcommunicatorB	committeeB
commitmentBcommitedBcommentBcomfortBcombinationBcoloradoB	collisionBcollarBcoincidenceB	cognitiveBclosestBclosesBcloselyBclockBclinicsBclientsBclickBclearlyBclearedBcleanandBclaimsBclaimingBclaimedBcircumstancesBchunkBchronicallyBchronicB	christmasBchoosingBchokeBchineseBchillingB	childsureBchildren’sBcheckupBchecksB	checklistBcheatingBcheatBchartsBchargesB	characterBcfsB	certainlyBcerebrospinalBcentristBcentreBcenteredB
cellulitisBcelexaB	celebrateBcautiousBcaughtiBcatsBcatchBcasuallyBcasesBcarolinaB	caretakerBcareerBcapableBcannibisBcancerBcanadaBcampaignBcaloriesBcalmsBcalmedBcallbackBcaffeineBcabinBcBbyeBbuysBbuyingBbutiBbustedBbuspharBbusinessfarmBburstBburnedBbunniesBbumpBbullyingBbulliesBbulgingBbuilderBbucksBbruisesBbrownBbrother’sB	brothermyBbrokenBbroachBbritainBbrinkBbringingB
bridezillaBbrickBbreathBbraveryBbraverBbraggingBboy’sBboysB
boyfriendsBboyfriend24mBboxBboutBbouncingBbottledBbottleBboostedBbookedBbobB	boardgameBboardBblurtedBbluntBblueBblowsBbloomedBblockingBblockedBblockBblinkersBblessedBblankBbirthdayBbirthBbindBbibleBbffBbetrayedBbesidesBbenzoBbenefitsBbeneficiaryB
beneficialBbeltB	believingBbelievesB
believableBbeingsBbehavioractionmakeBbehaviorBbeggingBbeggedBbefriendBbefallenBbeerBbedsBbedroomsBbeautiful”BbeatupBbeacauseBbcBbatteryBbatheBbasedBbartBbarnB	baltimoreBballBbakeryBbailBbackstoriesBbackseatBbackedB	bachelorsBbabysitBawkwardnessBawhileBawesomeBawardBawake”BawakeBavoidantB	avoidanceBavidBaveragedBavailB	autopilotBautomaticallyB
autoimmuneBautocorrectBautoB
authorizedBauditoryBaudioBaudienceBaudibleBattsB
attractiveB	attractedBattractB
attentioniBattemptsB	attemptedB
attackonceB	attachingB
atrocitiesBatomoxetineBasthmaBassumptionsgameBassumedB	associateB
assaultingB	aspergersBasksBasideBashamedBasapBartworkBartistsBartisticBarticleBarthurBartB	arroganceBarrivedBarriveBarrestedBarmyBarmsBarizonaBariseB	argumentsBargumentativeBaptBapptsBapproximatelyBapproveB
approachedBapprisedBapplyBappliedB
apperantlyBappearedBapparentBappB	apologiesB
anxiousnotB
anxietytheBanxietyeventuallyBanxietydepressionB
antisocialBantidepressantsBantibioticsBanorexicBanorexiaBanonymouslyB	anonymousBannoyingB	annoyanceBannoyB
animemangaBanimalBangryrBangrilyBandorBancientBanalyzeBam”BamericanB
ambivalentB
amazing”BamandaB
alzheimersBalternativesBalrightB
alprazolamBalmsotBallowingB	allowanceBallinallB	alleviateB	allegedlyB	alignmentBalignedB
alienationB
alienatingB	alcoholicBalaskaBalasBaintBailmentsBagreesBagreeingBagianB	againquitBafghanistanB
affiliatedBaffectsB
advocatingBadviseBadvicesuggestionsB	adviceiveB	advantageBadressB
adrenalineBadoreBadministratorBadhdBadequateBadditionallyB
additionalBadditionBaddictBacuteBactualBactsB
acidentalyBaccusedBaccusationsBaccommodationsBaccommodateBaccidentallyBacceptedBabutBabuserBabruptlyBaboveBaaandB9pmB911B900B85301B85B7stB7itB6lbsB6amB650B60sB5mgB5htpB54fB52B50mgB
4christmasB49kgB450B4000B40B3xB3rdB39B36B340B30000B2ndB28mB28B27mB2750B26yearsB2654510B2600B23fB230B23B2250B20yearsB20mgB1xB1stB19fB180B175B162cmB15acreB1525B1500B14fB14B12weekB11B10lbsB103lbsB1030B100mgB0
��
Const_1Const*
_output_shapes	
:�*
dtype0	*��
value��B��	�"��                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	      �	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
      �
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
H
Const_3Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R
~
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_367*
value_dtype0	
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name2700*
value_dtype0	
�
adam/dense_2_bias_velocityVarHandleOp*
_output_shapes
: *+

debug_nameadam/dense_2_bias_velocity/*
dtype0*
shape:*+
shared_nameadam/dense_2_bias_velocity
�
.adam/dense_2_bias_velocity/Read/ReadVariableOpReadVariableOpadam/dense_2_bias_velocity*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpadam/dense_2_bias_velocity*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
adam/dense_2_bias_momentumVarHandleOp*
_output_shapes
: *+

debug_nameadam/dense_2_bias_momentum/*
dtype0*
shape:*+
shared_nameadam/dense_2_bias_momentum
�
.adam/dense_2_bias_momentum/Read/ReadVariableOpReadVariableOpadam/dense_2_bias_momentum*
_output_shapes
:*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpadam/dense_2_bias_momentum*
_class
loc:@Variable_1*
_output_shapes
:*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0
�
adam/dense_2_kernel_velocityVarHandleOp*
_output_shapes
: *-

debug_nameadam/dense_2_kernel_velocity/*
dtype0*
shape
: *-
shared_nameadam/dense_2_kernel_velocity
�
0adam/dense_2_kernel_velocity/Read/ReadVariableOpReadVariableOpadam/dense_2_kernel_velocity*
_output_shapes

: *
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpadam/dense_2_kernel_velocity*
_class
loc:@Variable_2*
_output_shapes

: *
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape
: *
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
i
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes

: *
dtype0
�
adam/dense_2_kernel_momentumVarHandleOp*
_output_shapes
: *-

debug_nameadam/dense_2_kernel_momentum/*
dtype0*
shape
: *-
shared_nameadam/dense_2_kernel_momentum
�
0adam/dense_2_kernel_momentum/Read/ReadVariableOpReadVariableOpadam/dense_2_kernel_momentum*
_output_shapes

: *
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpadam/dense_2_kernel_momentum*
_class
loc:@Variable_3*
_output_shapes

: *
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape
: *
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
i
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes

: *
dtype0
�
adam/dense_1_bias_velocityVarHandleOp*
_output_shapes
: *+

debug_nameadam/dense_1_bias_velocity/*
dtype0*
shape: *+
shared_nameadam/dense_1_bias_velocity
�
.adam/dense_1_bias_velocity/Read/ReadVariableOpReadVariableOpadam/dense_1_bias_velocity*
_output_shapes
: *
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpadam/dense_1_bias_velocity*
_class
loc:@Variable_4*
_output_shapes
: *
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape: *
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
: *
dtype0
�
adam/dense_1_bias_momentumVarHandleOp*
_output_shapes
: *+

debug_nameadam/dense_1_bias_momentum/*
dtype0*
shape: *+
shared_nameadam/dense_1_bias_momentum
�
.adam/dense_1_bias_momentum/Read/ReadVariableOpReadVariableOpadam/dense_1_bias_momentum*
_output_shapes
: *
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpadam/dense_1_bias_momentum*
_class
loc:@Variable_5*
_output_shapes
: *
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape: *
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
: *
dtype0
�
adam/dense_1_kernel_velocityVarHandleOp*
_output_shapes
: *-

debug_nameadam/dense_1_kernel_velocity/*
dtype0*
shape
:@ *-
shared_nameadam/dense_1_kernel_velocity
�
0adam/dense_1_kernel_velocity/Read/ReadVariableOpReadVariableOpadam/dense_1_kernel_velocity*
_output_shapes

:@ *
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpadam/dense_1_kernel_velocity*
_class
loc:@Variable_6*
_output_shapes

:@ *
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape
:@ *
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
i
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes

:@ *
dtype0
�
adam/dense_1_kernel_momentumVarHandleOp*
_output_shapes
: *-

debug_nameadam/dense_1_kernel_momentum/*
dtype0*
shape
:@ *-
shared_nameadam/dense_1_kernel_momentum
�
0adam/dense_1_kernel_momentum/Read/ReadVariableOpReadVariableOpadam/dense_1_kernel_momentum*
_output_shapes

:@ *
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpadam/dense_1_kernel_momentum*
_class
loc:@Variable_7*
_output_shapes

:@ *
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape
:@ *
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
i
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes

:@ *
dtype0
�
adam/dense_bias_velocityVarHandleOp*
_output_shapes
: *)

debug_nameadam/dense_bias_velocity/*
dtype0*
shape:@*)
shared_nameadam/dense_bias_velocity
�
,adam/dense_bias_velocity/Read/ReadVariableOpReadVariableOpadam/dense_bias_velocity*
_output_shapes
:@*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpadam/dense_bias_velocity*
_class
loc:@Variable_8*
_output_shapes
:@*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:@*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:@*
dtype0
�
adam/dense_bias_momentumVarHandleOp*
_output_shapes
: *)

debug_nameadam/dense_bias_momentum/*
dtype0*
shape:@*)
shared_nameadam/dense_bias_momentum
�
,adam/dense_bias_momentum/Read/ReadVariableOpReadVariableOpadam/dense_bias_momentum*
_output_shapes
:@*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpadam/dense_bias_momentum*
_class
loc:@Variable_9*
_output_shapes
:@*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:@*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
e
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
:@*
dtype0
�
adam/dense_kernel_velocityVarHandleOp*
_output_shapes
: *+

debug_nameadam/dense_kernel_velocity/*
dtype0*
shape
:@*+
shared_nameadam/dense_kernel_velocity
�
.adam/dense_kernel_velocity/Read/ReadVariableOpReadVariableOpadam/dense_kernel_velocity*
_output_shapes

:@*
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpadam/dense_kernel_velocity*
_class
loc:@Variable_10*
_output_shapes

:@*
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape
:@*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
k
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes

:@*
dtype0
�
adam/dense_kernel_momentumVarHandleOp*
_output_shapes
: *+

debug_nameadam/dense_kernel_momentum/*
dtype0*
shape
:@*+
shared_nameadam/dense_kernel_momentum
�
.adam/dense_kernel_momentum/Read/ReadVariableOpReadVariableOpadam/dense_kernel_momentum*
_output_shapes

:@*
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOpadam/dense_kernel_momentum*
_class
loc:@Variable_11*
_output_shapes

:@*
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape
:@*
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
k
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*
_output_shapes

:@*
dtype0
�
"adam/embedding_embeddings_velocityVarHandleOp*
_output_shapes
: *3

debug_name%#adam/embedding_embeddings_velocity/*
dtype0*
shape:	�N*3
shared_name$"adam/embedding_embeddings_velocity
�
6adam/embedding_embeddings_velocity/Read/ReadVariableOpReadVariableOp"adam/embedding_embeddings_velocity*
_output_shapes
:	�N*
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOp"adam/embedding_embeddings_velocity*
_class
loc:@Variable_12*
_output_shapes
:	�N*
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape:	�N*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
l
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
:	�N*
dtype0
�
"adam/embedding_embeddings_momentumVarHandleOp*
_output_shapes
: *3

debug_name%#adam/embedding_embeddings_momentum/*
dtype0*
shape:	�N*3
shared_name$"adam/embedding_embeddings_momentum
�
6adam/embedding_embeddings_momentum/Read/ReadVariableOpReadVariableOp"adam/embedding_embeddings_momentum*
_output_shapes
:	�N*
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOp"adam/embedding_embeddings_momentum*
_class
loc:@Variable_13*
_output_shapes
:	�N*
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape:	�N*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
l
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
:	�N*
dtype0
�
dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namedense_2/bias/*
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOpdense_2/bias*
_class
loc:@Variable_14*
_output_shapes
:*
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape:*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
g
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes
:*
dtype0
�
dense_2/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_2/kernel/*
dtype0*
shape
: *
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

: *
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOpdense_2/kernel*
_class
loc:@Variable_15*
_output_shapes

: *
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape
: *
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
k
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes

: *
dtype0
�
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape: *
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
: *
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@Variable_16*
_output_shapes
: *
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape: *
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
g
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes
: *
dtype0
�
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape
:@ *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@ *
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOpdense_1/kernel*
_class
loc:@Variable_17*
_output_shapes

:@ *
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape
:@ *
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
k
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes

:@ *
dtype0
�

dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@Variable_18*
_output_shapes
:@*
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape:@*
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
g
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes
:@*
dtype0
�
dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@Variable_19*
_output_shapes

:@*
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape
:@*
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
k
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*
_output_shapes

:@*
dtype0
�
embedding/embeddingsVarHandleOp*
_output_shapes
: *%

debug_nameembedding/embeddings/*
dtype0*
shape:	�N*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	�N*
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOpembedding/embeddings*
_class
loc:@Variable_20*
_output_shapes
:	�N*
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape:	�N*
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
l
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes
:	�N*
dtype0
�
adam/learning_rateVarHandleOp*
_output_shapes
: *#

debug_nameadam/learning_rate/*
dtype0*
shape: *#
shared_nameadam/learning_rate
q
&adam/learning_rate/Read/ReadVariableOpReadVariableOpadam/learning_rate*
_output_shapes
: *
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOpadam/learning_rate*
_class
loc:@Variable_21*
_output_shapes
: *
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape: *
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
c
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21*
_output_shapes
: *
dtype0
�
adam/iterationVarHandleOp*
_output_shapes
: *

debug_nameadam/iteration/*
dtype0	*
shape: *
shared_nameadam/iteration
i
"adam/iteration/Read/ReadVariableOpReadVariableOpadam/iteration*
_output_shapes
: *
dtype0	
�
&Variable_22/Initializer/ReadVariableOpReadVariableOpadam/iteration*
_class
loc:@Variable_22*
_output_shapes
: *
dtype0	
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0	*
shape: *
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0	
c
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22*
_output_shapes
: *
dtype0	
s
serving_default_examplesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_examples
hash_tableConst_4Const_3Const_2embedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_93239
�
StatefulPartitionedCall_1StatefulPartitionedCall
hash_tableConstConst_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_93456
�
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_93468
:
NoOpNoOp^PartitionedCall^StatefulPartitionedCall_1
�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
�,
Const_5Const"/device:CPU:0*
_output_shapes
: *
dtype0*�,
value�,B�, B�,
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
	output_names

	optimizer
	tft_layer
_default_save_signature

signatures*
* 
* 
* 
* 
* 
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*
* 
* 
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities*
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#_default_save_signature
$$ _saved_model_loader_tracked_dict* 

%trace_0* 

&serving_default* 
]
'_inbound_nodes
(_outbound_nodes
)_losses
*	_loss_ids
+_losses_override* 
u
,_inbound_nodes
-_outbound_nodes
._losses
/	_loss_ids
0_losses_override
1_build_shapes_dict* 
�
2_lookup_layer
3_inbound_nodes
4_outbound_nodes
5_losses
6	_loss_ids
7_losses_override
8_build_shapes_dict*
�
9_embeddings
:_inbound_nodes
;_outbound_nodes
<_losses
=	_loss_ids
>_losses_override
?_build_shapes_dict*
u
@_inbound_nodes
A_outbound_nodes
B_losses
C	_loss_ids
D_losses_override
E_build_shapes_dict* 
�
F_kernel
Gbias
H_inbound_nodes
I_outbound_nodes
J_losses
K	_loss_ids
L_losses_override
M_build_shapes_dict*
�
N_kernel
Obias
P_inbound_nodes
Q_outbound_nodes
R_losses
S	_loss_ids
T_losses_override
U_build_shapes_dict*
�
V_kernel
Wbias
X_inbound_nodes
Y_outbound_nodes
Z_losses
[	_loss_ids
\_losses_override
]_build_shapes_dict*
z
0
1
^2
_3
`4
a5
b6
c7
d8
e9
f10
g11
h12
i13
j14
k15*
5
90
F1
G2
N3
O4
V5
W6*
* 
UO
VARIABLE_VALUEVariable_220optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEVariable_213optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
	variables
trainable_variables
regularization_losses
!__call__
#_default_save_signature
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 

qtrace_0* 

rtrace_0* 
* 
t
s	_imported
t_wrapped_function
u_structured_inputs
v_structured_outputs
w_output_to_inputs_map* 
/
x	capture_1
y	capture_2
z	capture_3* 
/
x	capture_1
y	capture_2
z	capture_3* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
{lookup_table
|token_counts
}_inbound_nodes
~_outbound_nodes
_losses
�	_loss_ids
�_losses_override*
* 
* 
* 
* 
* 
* 
YS
VARIABLE_VALUEVariable_204_operations/3/_embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
UO
VARIABLE_VALUEVariable_190_operations/5/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEVariable_18-_operations/5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
UO
VARIABLE_VALUEVariable_170_operations/6/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEVariable_16-_operations/6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
UO
VARIABLE_VALUEVariable_150_operations/7/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEVariable_14-_operations/7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
VP
VARIABLE_VALUEVariable_131optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_121optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_111optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_101optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUE
Variable_91optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUE
Variable_81optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUE
Variable_71optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUE
Variable_61optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUE
Variable_52optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUE
Variable_42optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUE
Variable_32optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUE
Variable_22optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUE
Variable_12optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEVariable2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
�
�created_variables
�	resources
�trackable_objects
�initializers
�assets
�
signatures
$�_self_saveable_object_factories
ttransform_fn* 
* 
* 
* 
* 
* 
* 
* 
V
�_initializer
�_create_resource
�_initialize
�_destroy_resource* 
�
�_create_resource
�_initialize
�_destroy_resourceC
table:_operations/2/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�serving_default* 
* 
* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
* 
"
�	capture_1
�	capture_2* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1Const_5*&
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_93762
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableMutableHashTable*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_93843��
�
R
__inference_pruned_92941

inputs	
inputs_1
identity	

identity_1Q
inputs_copyIdentityinputs*
T0	*'
_output_shapes
:���������\
IdentityIdentityinputs_copy:output:0*
T0	*'
_output_shapes
:���������U
inputs_1_copyIdentityinputs_1*
T0*'
_output_shapes
:���������[
StringLowerStringLowerinputs_1_copy:output:0*'
_output_shapes
:���������^

Identity_1IdentityStringLower:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������
�
R
8__inference_transform_features_layer_layer_call_fn_93445
text
identity�
PartitionedCallPartitionedCalltext*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_93440`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:M I
'
_output_shapes
:���������

_user_specified_nametext
�
�
__inference_save_fn_93490
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	��?MutableHashTable_lookup_table_export_values/LookupTableExportV2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: �

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: �

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:d
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key:,(
&
_user_specified_nametable_handle
�
:
 __inference__wrapped_model_93418
text
identity`
transform_features_layer/ShapeShapetext*
T0*
_output_shapes
::��v
,transform_features_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.transform_features_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.transform_features_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&transform_features_layer/strided_sliceStridedSlice'transform_features_layer/Shape:output:05transform_features_layer/strided_slice/stack:output:07transform_features_layer/strided_slice/stack_1:output:07transform_features_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 transform_features_layer/Shape_1Shapetext*
T0*
_output_shapes
::��x
.transform_features_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0transform_features_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0transform_features_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(transform_features_layer/strided_slice_1StridedSlice)transform_features_layer/Shape_1:output:07transform_features_layer/strided_slice_1/stack:output:09transform_features_layer/strided_slice_1/stack_1:output:09transform_features_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'transform_features_layer/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
%transform_features_layer/zeros/packedPack1transform_features_layer/strided_slice_1:output:00transform_features_layer/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
$transform_features_layer/zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
transform_features_layer/zerosFill.transform_features_layer/zeros/packed:output:0-transform_features_layer/zeros/Const:output:0*
T0	*'
_output_shapes
:����������
/transform_features_layer/PlaceholderWithDefaultPlaceholderWithDefault'transform_features_layer/zeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
(transform_features_layer/PartitionedCallPartitionedCall8transform_features_layer/PlaceholderWithDefault:output:0text*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_92941y
IdentityIdentity1transform_features_layer/PartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:M I
'
_output_shapes
:���������

_user_specified_nametext
�
,
__inference__destroyer_93460
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
F
__inference__creator_93464
identity: ��MutableHashTable~
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_367*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: 5
NoOpNoOp^MutableHashTable*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
�
�
__inference_restore_fn_93497
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity��2MutableHashTable_table_restore/LookupTableImportV2�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: W
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1:,(
&
_user_specified_nametable_handle
�
:
__inference__creator_93449
identity��
hash_tablel

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name2700*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: /
NoOpNoOp^hash_table*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
,
__inference__destroyer_93472
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
Θ
�	
!__inference_serving_default_93397

inputsP
Lfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_table_handleQ
Mfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_default_value	-
)functional_1_text_vectorization_1_equal_y0
,functional_1_text_vectorization_1_selectv2_t	I
6functional_1_embedding_1_shape_readvariableop_resource:	�NC
1functional_1_dense_1_cast_readvariableop_resource:@>
0functional_1_dense_1_add_readvariableop_resource:@E
3functional_1_dense_1_2_cast_readvariableop_resource:@ @
2functional_1_dense_1_2_add_readvariableop_resource: E
3functional_1_dense_2_1_cast_readvariableop_resource: @
2functional_1_dense_2_1_add_readvariableop_resource:
identity��'functional_1/dense_1/Add/ReadVariableOp�(functional_1/dense_1/Cast/ReadVariableOp�)functional_1/dense_1_2/Add/ReadVariableOp�*functional_1/dense_1_2/Cast/ReadVariableOp�)functional_1/dense_2_1/Add/ReadVariableOp�*functional_1/dense_2_1/Cast/ReadVariableOp�0functional_1/embedding_1/GatherV2/ReadVariableOp�?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2`
functional_1/reshape_1/ShapeShapeinputs*
T0*
_output_shapes
::��t
*functional_1/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,functional_1/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,functional_1/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$functional_1/reshape_1/strided_sliceStridedSlice%functional_1/reshape_1/Shape:output:03functional_1/reshape_1/strided_slice/stack:output:05functional_1/reshape_1/strided_slice/stack_1:output:05functional_1/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&functional_1/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
$functional_1/reshape_1/Reshape/shapePack-functional_1/reshape_1/strided_slice:output:0/functional_1/reshape_1/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
functional_1/reshape_1/ReshapeReshapeinputs-functional_1/reshape_1/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
-functional_1/text_vectorization_1/StringLowerStringLower'functional_1/reshape_1/Reshape:output:0*'
_output_shapes
:����������
4functional_1/text_vectorization_1/StaticRegexReplaceStaticRegexReplace6functional_1/text_vectorization_1/StringLower:output:0*'
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite �
)functional_1/text_vectorization_1/SqueezeSqueeze=functional_1/text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims

���������t
3functional_1/text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
;functional_1/text_vectorization_1/StringSplit/StringSplitV2StringSplitV22functional_1/text_vectorization_1/Squeeze:output:0<functional_1/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
Afunctional_1/text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Cfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Cfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
;functional_1/text_vectorization_1/StringSplit/strided_sliceStridedSliceEfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:indices:0Jfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack:output:0Lfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_1:output:0Lfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Cfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Efunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Efunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=functional_1/text_vectorization_1/StringSplit/strided_slice_1StridedSliceCfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:shape:0Lfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Nfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Nfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
dfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastDfunctional_1/text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
ffunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastFfunctional_1/text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
mfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/SizeSizehfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
: �
rfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatervfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Size:output:0{functional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
mfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasttfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
nfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxhfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0wfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
nfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ufunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0wfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulqfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumjfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumjfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
vfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapehfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0functional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 �
vfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincountDenseBincountyfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0yfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0	*

Tidx0*#
_output_shapes
:����������
kfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
ffunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincount:output:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
ofunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
kfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
ffunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2xfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2LookupTableFindV2Lfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_table_handleDfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:values:0Mfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
'functional_1/text_vectorization_1/EqualEqualDfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:values:0)functional_1_text_vectorization_1_equal_y*
T0*#
_output_shapes
:����������
*functional_1/text_vectorization_1/SelectV2SelectV2+functional_1/text_vectorization_1/Equal:z:0,functional_1_text_vectorization_1_selectv2_tHfunctional_1/text_vectorization_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
*functional_1/text_vectorization_1/IdentityIdentity3functional_1/text_vectorization_1/SelectV2:output:0*
T0	*#
_output_shapes
:����������
>functional_1/text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
6functional_1/text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
Efunctional_1/text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor?functional_1/text_vectorization_1/RaggedToTensor/Const:output:03functional_1/text_vectorization_1/Identity:output:0Gfunctional_1/text_vectorization_1/RaggedToTensor/default_value:output:0Ffunctional_1/text_vectorization_1/StringSplit/strided_slice_1:output:0Dfunctional_1/text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
5functional_1/text_vectorization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7functional_1/text_vectorization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   �
7functional_1/text_vectorization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/functional_1/text_vectorization_1/strided_sliceStridedSliceNfunctional_1/text_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0>functional_1/text_vectorization_1/strided_slice/stack:output:0@functional_1/text_vectorization_1/strided_slice/stack_1:output:0@functional_1/text_vectorization_1/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:���������d*

begin_mask*
ellipsis_mask�
'functional_1/text_vectorization_1/ShapeShape8functional_1/text_vectorization_1/strided_slice:output:0*
T0	*
_output_shapes
::���
7functional_1/text_vectorization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9functional_1/text_vectorization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
9functional_1/text_vectorization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1functional_1/text_vectorization_1/strided_slice_1StridedSlice0functional_1/text_vectorization_1/Shape:output:0@functional_1/text_vectorization_1/strided_slice_1/stack:output:0Bfunctional_1/text_vectorization_1/strided_slice_1/stack_1:output:0Bfunctional_1/text_vectorization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask{
1functional_1/text_vectorization_1/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:do
-functional_1/text_vectorization_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
(functional_1/text_vectorization_1/concatConcatV2:functional_1/text_vectorization_1/strided_slice_1:output:0:functional_1/text_vectorization_1/concat/values_1:output:06functional_1/text_vectorization_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Hfunctional_1/text_vectorization_1/required_space_to_batch_paddings/zerosConst*
_output_shapes

:*
dtype0*
valueB: �
Vfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Pfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_sliceStridedSliceQfunctional_1/text_vectorization_1/required_space_to_batch_paddings/zeros:output:0_functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stack:output:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stack_1:output:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1StridedSliceQfunctional_1/text_vectorization_1/required_space_to_batch_paddings/zeros:output:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Ffunctional_1/text_vectorization_1/required_space_to_batch_paddings/addAddV20functional_1/text_vectorization_1/Shape:output:0Yfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice:output:0*
T0*
_output_shapes
:�
Hfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add_1AddV2Jfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add:z:0[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1:output:0*
T0*
_output_shapes
:�
Ffunctional_1/text_vectorization_1/required_space_to_batch_paddings/modFloorModLfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add_1:z:01functional_1/text_vectorization_1/concat:output:0*
T0*
_output_shapes
:�
Ffunctional_1/text_vectorization_1/required_space_to_batch_paddings/subSub1functional_1/text_vectorization_1/concat:output:0Jfunctional_1/text_vectorization_1/required_space_to_batch_paddings/mod:z:0*
T0*
_output_shapes
:�
Hfunctional_1/text_vectorization_1/required_space_to_batch_paddings/mod_1FloorModJfunctional_1/text_vectorization_1/required_space_to_batch_paddings/sub:z:01functional_1/text_vectorization_1/concat:output:0*
T0*
_output_shapes
:�
Hfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add_2AddV2[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1:output:0Lfunctional_1/text_vectorization_1/required_space_to_batch_paddings/mod_1:z:0*
T0*
_output_shapes
:�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2StridedSliceYfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice:output:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3StridedSliceLfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add_2:z:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4StridedSliceYfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice:output:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5StridedSliceLfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add_2:z:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Mfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddings/0Pack[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2:output:0[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3:output:0*
N*
T0*
_output_shapes
:�
Mfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddings/1Pack[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4:output:0[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5:output:0*
N*
T0*
_output_shapes
:�
Kfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddingsPackVfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddings/0:output:0Vfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddings/1:output:0*
N*
T0*
_output_shapes

:�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6StridedSliceLfunctional_1/text_vectorization_1/required_space_to_batch_paddings/mod_1:z:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7StridedSliceLfunctional_1/text_vectorization_1/required_space_to_batch_paddings/mod_1:z:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Lfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/0/0Const*
_output_shapes
: *
dtype0*
value	B : �
Jfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/0PackUfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/0/0:output:0[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6:output:0*
N*
T0*
_output_shapes
:�
Lfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/1/0Const*
_output_shapes
: *
dtype0*
value	B : �
Jfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/1PackUfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/1/0:output:0[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7:output:0*
N*
T0*
_output_shapes
:�
Hfunctional_1/text_vectorization_1/required_space_to_batch_paddings/cropsPackSfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/0:output:0Sfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/1:output:0*
N*
T0*
_output_shapes

:�
%functional_1/text_vectorization_1/PadPad8functional_1/text_vectorization_1/strided_slice:output:0Tfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddings:output:0*
T0	*0
_output_shapes
:������������������a
functional_1/embedding_1/Less/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
functional_1/embedding_1/LessLess.functional_1/text_vectorization_1/Pad:output:0(functional_1/embedding_1/Less/y:output:0*
T0	*0
_output_shapes
:�������������������
-functional_1/embedding_1/Shape/ReadVariableOpReadVariableOp6functional_1_embedding_1_shape_readvariableop_resource*
_output_shapes
:	�N*
dtype0o
functional_1/embedding_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"'     v
,functional_1/embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.functional_1/embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.functional_1/embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&functional_1/embedding_1/strided_sliceStridedSlice'functional_1/embedding_1/Shape:output:05functional_1/embedding_1/strided_slice/stack:output:07functional_1/embedding_1/strided_slice/stack_1:output:07functional_1/embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
functional_1/embedding_1/CastCast/functional_1/embedding_1/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
functional_1/embedding_1/addAddV2.functional_1/text_vectorization_1/Pad:output:0!functional_1/embedding_1/Cast:y:0*
T0	*0
_output_shapes
:�������������������
!functional_1/embedding_1/SelectV2SelectV2!functional_1/embedding_1/Less:z:0 functional_1/embedding_1/add:z:0.functional_1/text_vectorization_1/Pad:output:0*
T0	*0
_output_shapes
:�������������������
0functional_1/embedding_1/GatherV2/ReadVariableOpReadVariableOp6functional_1_embedding_1_shape_readvariableop_resource*
_output_shapes
:	�N*
dtype0h
&functional_1/embedding_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
!functional_1/embedding_1/GatherV2GatherV28functional_1/embedding_1/GatherV2/ReadVariableOp:value:0*functional_1/embedding_1/SelectV2:output:0/functional_1/embedding_1/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*4
_output_shapes"
 :�������������������
>functional_1/global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
,functional_1/global_average_pooling1d_1/MeanMean*functional_1/embedding_1/GatherV2:output:0Gfunctional_1/global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
(functional_1/dense_1/Cast/ReadVariableOpReadVariableOp1functional_1_dense_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
functional_1/dense_1/MatMulMatMul5functional_1/global_average_pooling1d_1/Mean:output:00functional_1/dense_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'functional_1/dense_1/Add/ReadVariableOpReadVariableOp0functional_1_dense_1_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
functional_1/dense_1/AddAddV2%functional_1/dense_1/MatMul:product:0/functional_1/dense_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@q
functional_1/dense_1/ReluRelufunctional_1/dense_1/Add:z:0*
T0*'
_output_shapes
:���������@�
*functional_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3functional_1_dense_1_2_cast_readvariableop_resource*
_output_shapes

:@ *
dtype0�
functional_1/dense_1_2/MatMulMatMul'functional_1/dense_1/Relu:activations:02functional_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
)functional_1/dense_1_2/Add/ReadVariableOpReadVariableOp2functional_1_dense_1_2_add_readvariableop_resource*
_output_shapes
: *
dtype0�
functional_1/dense_1_2/AddAddV2'functional_1/dense_1_2/MatMul:product:01functional_1/dense_1_2/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� u
functional_1/dense_1_2/ReluRelufunctional_1/dense_1_2/Add:z:0*
T0*'
_output_shapes
:��������� �
*functional_1/dense_2_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

: *
dtype0�
functional_1/dense_2_1/MatMulMatMul)functional_1/dense_1_2/Relu:activations:02functional_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)functional_1/dense_2_1/Add/ReadVariableOpReadVariableOp2functional_1_dense_2_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
functional_1/dense_2_1/AddAddV2'functional_1/dense_2_1/MatMul:product:01functional_1/dense_2_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������{
functional_1/dense_2_1/SigmoidSigmoidfunctional_1/dense_2_1/Add:z:0*
T0*'
_output_shapes
:���������q
IdentityIdentity"functional_1/dense_2_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^functional_1/dense_1/Add/ReadVariableOp)^functional_1/dense_1/Cast/ReadVariableOp*^functional_1/dense_1_2/Add/ReadVariableOp+^functional_1/dense_1_2/Cast/ReadVariableOp*^functional_1/dense_2_1/Add/ReadVariableOp+^functional_1/dense_2_1/Cast/ReadVariableOp1^functional_1/embedding_1/GatherV2/ReadVariableOp@^functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2R
'functional_1/dense_1/Add/ReadVariableOp'functional_1/dense_1/Add/ReadVariableOp2T
(functional_1/dense_1/Cast/ReadVariableOp(functional_1/dense_1/Cast/ReadVariableOp2V
)functional_1/dense_1_2/Add/ReadVariableOp)functional_1/dense_1_2/Add/ReadVariableOp2X
*functional_1/dense_1_2/Cast/ReadVariableOp*functional_1/dense_1_2/Cast/ReadVariableOp2V
)functional_1/dense_2_1/Add/ReadVariableOp)functional_1/dense_2_1/Add/ReadVariableOp2X
*functional_1/dense_2_1/Cast/ReadVariableOp*functional_1/dense_2_1/Cast/ReadVariableOp2d
0functional_1/embedding_1/GatherV2/ReadVariableOp0functional_1/embedding_1/GatherV2/ReadVariableOp2�
?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_user_specified_nametable_handle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
#__inference_signature_wrapper_93239
examples
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallexamplesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_serve_tf_examples_fn_93150o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:���������
"
_user_specified_name
examples:%!

_user_specified_name93215:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_user_specified_name93223:%!

_user_specified_name93225:%!

_user_specified_name93227:%!

_user_specified_name93229:%	!

_user_specified_name93231:%
!

_user_specified_name93233:%!

_user_specified_name93235
�
.
__inference__initializer_93468
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
��
�	
&__inference_serve_tf_examples_fn_93150
examplesP
Lfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_table_handleQ
Mfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_default_value	-
)functional_1_text_vectorization_1_equal_y0
,functional_1_text_vectorization_1_selectv2_t	I
6functional_1_embedding_1_shape_readvariableop_resource:	�NC
1functional_1_dense_1_cast_readvariableop_resource:@>
0functional_1_dense_1_add_readvariableop_resource:@E
3functional_1_dense_1_2_cast_readvariableop_resource:@ @
2functional_1_dense_1_2_add_readvariableop_resource: E
3functional_1_dense_2_1_cast_readvariableop_resource: @
2functional_1_dense_2_1_add_readvariableop_resource:
identity��'functional_1/dense_1/Add/ReadVariableOp�(functional_1/dense_1/Cast/ReadVariableOp�)functional_1/dense_1_2/Add/ReadVariableOp�*functional_1/dense_1_2/Cast/ReadVariableOp�)functional_1/dense_2_1/Add/ReadVariableOp�*functional_1/dense_2_1/Cast/ReadVariableOp�0functional_1/embedding_1/GatherV2/ReadVariableOp�?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2U
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB s
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*
valueBBtextj
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB �
ParseExample/ParseExampleV2ParseExampleV2examples*ParseExample/ParseExampleV2/names:output:00ParseExample/ParseExampleV2/sparse_keys:output:0/ParseExample/ParseExampleV2/dense_keys:output:00ParseExample/ParseExampleV2/ragged_keys:output:0ParseExample/Const:output:0*
Tdense
2*'
_output_shapes
:���������*
dense_shapes
:*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 �
transform_features_layer/ShapeShape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
::��v
,transform_features_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.transform_features_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.transform_features_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&transform_features_layer/strided_sliceStridedSlice'transform_features_layer/Shape:output:05transform_features_layer/strided_slice/stack:output:07transform_features_layer/strided_slice/stack_1:output:07transform_features_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 transform_features_layer/Shape_1Shape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
::��x
.transform_features_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0transform_features_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0transform_features_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(transform_features_layer/strided_slice_1StridedSlice)transform_features_layer/Shape_1:output:07transform_features_layer/strided_slice_1/stack:output:09transform_features_layer/strided_slice_1/stack_1:output:09transform_features_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'transform_features_layer/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
%transform_features_layer/zeros/packedPack1transform_features_layer/strided_slice_1:output:00transform_features_layer/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
$transform_features_layer/zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
transform_features_layer/zerosFill.transform_features_layer/zeros/packed:output:0-transform_features_layer/zeros/Const:output:0*
T0	*'
_output_shapes
:����������
/transform_features_layer/PlaceholderWithDefaultPlaceholderWithDefault'transform_features_layer/zeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
(transform_features_layer/PartitionedCallPartitionedCall8transform_features_layer/PlaceholderWithDefault:output:0*ParseExample/ParseExampleV2:dense_values:0*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_92941�
functional_1/reshape_1/ShapeShape1transform_features_layer/PartitionedCall:output:1*
T0*
_output_shapes
::��t
*functional_1/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,functional_1/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,functional_1/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$functional_1/reshape_1/strided_sliceStridedSlice%functional_1/reshape_1/Shape:output:03functional_1/reshape_1/strided_slice/stack:output:05functional_1/reshape_1/strided_slice/stack_1:output:05functional_1/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&functional_1/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
$functional_1/reshape_1/Reshape/shapePack-functional_1/reshape_1/strided_slice:output:0/functional_1/reshape_1/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:�
functional_1/reshape_1/ReshapeReshape1transform_features_layer/PartitionedCall:output:1-functional_1/reshape_1/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
-functional_1/text_vectorization_1/StringLowerStringLower'functional_1/reshape_1/Reshape:output:0*'
_output_shapes
:����������
4functional_1/text_vectorization_1/StaticRegexReplaceStaticRegexReplace6functional_1/text_vectorization_1/StringLower:output:0*'
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite �
)functional_1/text_vectorization_1/SqueezeSqueeze=functional_1/text_vectorization_1/StaticRegexReplace:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims

���������t
3functional_1/text_vectorization_1/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
;functional_1/text_vectorization_1/StringSplit/StringSplitV2StringSplitV22functional_1/text_vectorization_1/Squeeze:output:0<functional_1/text_vectorization_1/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
Afunctional_1/text_vectorization_1/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Cfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Cfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
;functional_1/text_vectorization_1/StringSplit/strided_sliceStridedSliceEfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:indices:0Jfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack:output:0Lfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_1:output:0Lfunctional_1/text_vectorization_1/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Cfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Efunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Efunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=functional_1/text_vectorization_1/StringSplit/strided_slice_1StridedSliceCfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:shape:0Lfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack:output:0Nfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_1:output:0Nfunctional_1/text_vectorization_1/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
dfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastDfunctional_1/text_vectorization_1/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
ffunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastFfunctional_1/text_vectorization_1/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
mfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/SizeSizehfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
: �
rfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatervfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Size:output:0{functional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
mfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasttfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
nfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxhfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0wfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
nfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ufunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0wfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulqfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumjfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumjfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
vfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapehfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0functional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
pfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 �
vfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincountDenseBincountyfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0yfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0	*

Tidx0*#
_output_shapes
:����������
kfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
ffunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincount:output:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
ofunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
kfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
ffunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2xfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0lfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0tfunctional_1/text_vectorization_1/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2LookupTableFindV2Lfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_table_handleDfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:values:0Mfunctional_1_text_vectorization_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
'functional_1/text_vectorization_1/EqualEqualDfunctional_1/text_vectorization_1/StringSplit/StringSplitV2:values:0)functional_1_text_vectorization_1_equal_y*
T0*#
_output_shapes
:����������
*functional_1/text_vectorization_1/SelectV2SelectV2+functional_1/text_vectorization_1/Equal:z:0,functional_1_text_vectorization_1_selectv2_tHfunctional_1/text_vectorization_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
*functional_1/text_vectorization_1/IdentityIdentity3functional_1/text_vectorization_1/SelectV2:output:0*
T0	*#
_output_shapes
:����������
>functional_1/text_vectorization_1/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
6functional_1/text_vectorization_1/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
Efunctional_1/text_vectorization_1/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor?functional_1/text_vectorization_1/RaggedToTensor/Const:output:03functional_1/text_vectorization_1/Identity:output:0Gfunctional_1/text_vectorization_1/RaggedToTensor/default_value:output:0Ffunctional_1/text_vectorization_1/StringSplit/strided_slice_1:output:0Dfunctional_1/text_vectorization_1/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
5functional_1/text_vectorization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7functional_1/text_vectorization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    d   �
7functional_1/text_vectorization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/functional_1/text_vectorization_1/strided_sliceStridedSliceNfunctional_1/text_vectorization_1/RaggedToTensor/RaggedTensorToTensor:result:0>functional_1/text_vectorization_1/strided_slice/stack:output:0@functional_1/text_vectorization_1/strided_slice/stack_1:output:0@functional_1/text_vectorization_1/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:���������d*

begin_mask*
ellipsis_mask�
'functional_1/text_vectorization_1/ShapeShape8functional_1/text_vectorization_1/strided_slice:output:0*
T0	*
_output_shapes
::���
7functional_1/text_vectorization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9functional_1/text_vectorization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
9functional_1/text_vectorization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1functional_1/text_vectorization_1/strided_slice_1StridedSlice0functional_1/text_vectorization_1/Shape:output:0@functional_1/text_vectorization_1/strided_slice_1/stack:output:0Bfunctional_1/text_vectorization_1/strided_slice_1/stack_1:output:0Bfunctional_1/text_vectorization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask{
1functional_1/text_vectorization_1/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:do
-functional_1/text_vectorization_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
(functional_1/text_vectorization_1/concatConcatV2:functional_1/text_vectorization_1/strided_slice_1:output:0:functional_1/text_vectorization_1/concat/values_1:output:06functional_1/text_vectorization_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Hfunctional_1/text_vectorization_1/required_space_to_batch_paddings/zerosConst*
_output_shapes

:*
dtype0*
valueB: �
Vfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Pfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_sliceStridedSliceQfunctional_1/text_vectorization_1/required_space_to_batch_paddings/zeros:output:0_functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stack:output:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stack_1:output:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1StridedSliceQfunctional_1/text_vectorization_1/required_space_to_batch_paddings/zeros:output:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Ffunctional_1/text_vectorization_1/required_space_to_batch_paddings/addAddV20functional_1/text_vectorization_1/Shape:output:0Yfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice:output:0*
T0*
_output_shapes
:�
Hfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add_1AddV2Jfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add:z:0[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1:output:0*
T0*
_output_shapes
:�
Ffunctional_1/text_vectorization_1/required_space_to_batch_paddings/modFloorModLfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add_1:z:01functional_1/text_vectorization_1/concat:output:0*
T0*
_output_shapes
:�
Ffunctional_1/text_vectorization_1/required_space_to_batch_paddings/subSub1functional_1/text_vectorization_1/concat:output:0Jfunctional_1/text_vectorization_1/required_space_to_batch_paddings/mod:z:0*
T0*
_output_shapes
:�
Hfunctional_1/text_vectorization_1/required_space_to_batch_paddings/mod_1FloorModJfunctional_1/text_vectorization_1/required_space_to_batch_paddings/sub:z:01functional_1/text_vectorization_1/concat:output:0*
T0*
_output_shapes
:�
Hfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add_2AddV2[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_1:output:0Lfunctional_1/text_vectorization_1/required_space_to_batch_paddings/mod_1:z:0*
T0*
_output_shapes
:�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2StridedSliceYfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice:output:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3StridedSliceLfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add_2:z:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4StridedSliceYfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice:output:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5StridedSliceLfunctional_1/text_vectorization_1/required_space_to_batch_paddings/add_2:z:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Mfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddings/0Pack[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_2:output:0[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_3:output:0*
N*
T0*
_output_shapes
:�
Mfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddings/1Pack[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_4:output:0[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_5:output:0*
N*
T0*
_output_shapes
:�
Kfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddingsPackVfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddings/0:output:0Vfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddings/1:output:0*
N*
T0*
_output_shapes

:�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6StridedSliceLfunctional_1/text_vectorization_1/required_space_to_batch_paddings/mod_1:z:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Xfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Zfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Rfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7StridedSliceLfunctional_1/text_vectorization_1/required_space_to_batch_paddings/mod_1:z:0afunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stack:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stack_1:output:0cfunctional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Lfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/0/0Const*
_output_shapes
: *
dtype0*
value	B : �
Jfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/0PackUfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/0/0:output:0[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_6:output:0*
N*
T0*
_output_shapes
:�
Lfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/1/0Const*
_output_shapes
: *
dtype0*
value	B : �
Jfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/1PackUfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/1/0:output:0[functional_1/text_vectorization_1/required_space_to_batch_paddings/strided_slice_7:output:0*
N*
T0*
_output_shapes
:�
Hfunctional_1/text_vectorization_1/required_space_to_batch_paddings/cropsPackSfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/0:output:0Sfunctional_1/text_vectorization_1/required_space_to_batch_paddings/crops/1:output:0*
N*
T0*
_output_shapes

:�
%functional_1/text_vectorization_1/PadPad8functional_1/text_vectorization_1/strided_slice:output:0Tfunctional_1/text_vectorization_1/required_space_to_batch_paddings/paddings:output:0*
T0	*0
_output_shapes
:������������������a
functional_1/embedding_1/Less/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
functional_1/embedding_1/LessLess.functional_1/text_vectorization_1/Pad:output:0(functional_1/embedding_1/Less/y:output:0*
T0	*0
_output_shapes
:�������������������
-functional_1/embedding_1/Shape/ReadVariableOpReadVariableOp6functional_1_embedding_1_shape_readvariableop_resource*
_output_shapes
:	�N*
dtype0o
functional_1/embedding_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"'     v
,functional_1/embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.functional_1/embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.functional_1/embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&functional_1/embedding_1/strided_sliceStridedSlice'functional_1/embedding_1/Shape:output:05functional_1/embedding_1/strided_slice/stack:output:07functional_1/embedding_1/strided_slice/stack_1:output:07functional_1/embedding_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
functional_1/embedding_1/CastCast/functional_1/embedding_1/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
functional_1/embedding_1/addAddV2.functional_1/text_vectorization_1/Pad:output:0!functional_1/embedding_1/Cast:y:0*
T0	*0
_output_shapes
:�������������������
!functional_1/embedding_1/SelectV2SelectV2!functional_1/embedding_1/Less:z:0 functional_1/embedding_1/add:z:0.functional_1/text_vectorization_1/Pad:output:0*
T0	*0
_output_shapes
:�������������������
0functional_1/embedding_1/GatherV2/ReadVariableOpReadVariableOp6functional_1_embedding_1_shape_readvariableop_resource*
_output_shapes
:	�N*
dtype0h
&functional_1/embedding_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
!functional_1/embedding_1/GatherV2GatherV28functional_1/embedding_1/GatherV2/ReadVariableOp:value:0*functional_1/embedding_1/SelectV2:output:0/functional_1/embedding_1/GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*4
_output_shapes"
 :�������������������
>functional_1/global_average_pooling1d_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
,functional_1/global_average_pooling1d_1/MeanMean*functional_1/embedding_1/GatherV2:output:0Gfunctional_1/global_average_pooling1d_1/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
(functional_1/dense_1/Cast/ReadVariableOpReadVariableOp1functional_1_dense_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
functional_1/dense_1/MatMulMatMul5functional_1/global_average_pooling1d_1/Mean:output:00functional_1/dense_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'functional_1/dense_1/Add/ReadVariableOpReadVariableOp0functional_1_dense_1_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
functional_1/dense_1/AddAddV2%functional_1/dense_1/MatMul:product:0/functional_1/dense_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@q
functional_1/dense_1/ReluRelufunctional_1/dense_1/Add:z:0*
T0*'
_output_shapes
:���������@�
*functional_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3functional_1_dense_1_2_cast_readvariableop_resource*
_output_shapes

:@ *
dtype0�
functional_1/dense_1_2/MatMulMatMul'functional_1/dense_1/Relu:activations:02functional_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
)functional_1/dense_1_2/Add/ReadVariableOpReadVariableOp2functional_1_dense_1_2_add_readvariableop_resource*
_output_shapes
: *
dtype0�
functional_1/dense_1_2/AddAddV2'functional_1/dense_1_2/MatMul:product:01functional_1/dense_1_2/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� u
functional_1/dense_1_2/ReluRelufunctional_1/dense_1_2/Add:z:0*
T0*'
_output_shapes
:��������� �
*functional_1/dense_2_1/Cast/ReadVariableOpReadVariableOp3functional_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

: *
dtype0�
functional_1/dense_2_1/MatMulMatMul)functional_1/dense_1_2/Relu:activations:02functional_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)functional_1/dense_2_1/Add/ReadVariableOpReadVariableOp2functional_1_dense_2_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
functional_1/dense_2_1/AddAddV2'functional_1/dense_2_1/MatMul:product:01functional_1/dense_2_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������{
functional_1/dense_2_1/SigmoidSigmoidfunctional_1/dense_2_1/Add:z:0*
T0*'
_output_shapes
:���������q
IdentityIdentity"functional_1/dense_2_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^functional_1/dense_1/Add/ReadVariableOp)^functional_1/dense_1/Cast/ReadVariableOp*^functional_1/dense_1_2/Add/ReadVariableOp+^functional_1/dense_1_2/Cast/ReadVariableOp*^functional_1/dense_2_1/Add/ReadVariableOp+^functional_1/dense_2_1/Cast/ReadVariableOp1^functional_1/embedding_1/GatherV2/ReadVariableOp@^functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : : : 2R
'functional_1/dense_1/Add/ReadVariableOp'functional_1/dense_1/Add/ReadVariableOp2T
(functional_1/dense_1/Cast/ReadVariableOp(functional_1/dense_1/Cast/ReadVariableOp2V
)functional_1/dense_1_2/Add/ReadVariableOp)functional_1/dense_1_2/Add/ReadVariableOp2X
*functional_1/dense_1_2/Cast/ReadVariableOp*functional_1/dense_1_2/Cast/ReadVariableOp2V
)functional_1/dense_2_1/Add/ReadVariableOp)functional_1/dense_2_1/Add/ReadVariableOp2X
*functional_1/dense_2_1/Cast/ReadVariableOp*functional_1/dense_2_1/Cast/ReadVariableOp2d
0functional_1/embedding_1/GatherV2/ReadVariableOp0functional_1/embedding_1/GatherV2/ReadVariableOp2�
?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2?functional_1/text_vectorization_1/None_Lookup/LookupTableFindV2:M I
#
_output_shapes
:���������
"
_user_specified_name
examples:,(
&
_user_specified_nametable_handle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
__inference__initializer_934567
3key_value_init2699_lookuptableimportv2_table_handle/
+key_value_init2699_lookuptableimportv2_keys1
-key_value_init2699_lookuptableimportv2_values	
identity��&key_value_init2699/LookupTableImportV2�
&key_value_init2699/LookupTableImportV2LookupTableImportV23key_value_init2699_lookuptableimportv2_table_handle+key_value_init2699_lookuptableimportv2_keys-key_value_init2699_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: K
NoOpNoOp'^key_value_init2699/LookupTableImportV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2P
&key_value_init2699/LookupTableImportV2&key_value_init2699/LookupTableImportV2:, (
&
_user_specified_nametable_handle:A=

_output_shapes	
:�

_user_specified_namekeys:C?

_output_shapes	
:�
 
_user_specified_namevalues
��
�
__inference__traced_save_93762
file_prefix,
"read_disablecopyonread_variable_22:	 .
$read_1_disablecopyonread_variable_21: 7
$read_2_disablecopyonread_variable_20:	�N6
$read_3_disablecopyonread_variable_19:@2
$read_4_disablecopyonread_variable_18:@6
$read_5_disablecopyonread_variable_17:@ 2
$read_6_disablecopyonread_variable_16: 6
$read_7_disablecopyonread_variable_15: 2
$read_8_disablecopyonread_variable_14:7
$read_9_disablecopyonread_variable_13:	�N8
%read_10_disablecopyonread_variable_12:	�N7
%read_11_disablecopyonread_variable_11:@7
%read_12_disablecopyonread_variable_10:@2
$read_13_disablecopyonread_variable_9:@2
$read_14_disablecopyonread_variable_8:@6
$read_15_disablecopyonread_variable_7:@ 6
$read_16_disablecopyonread_variable_6:@ 2
$read_17_disablecopyonread_variable_5: 2
$read_18_disablecopyonread_variable_4: 6
$read_19_disablecopyonread_variable_3: 6
$read_20_disablecopyonread_variable_2: 2
$read_21_disablecopyonread_variable_1:0
"read_22_disablecopyonread_variable:J
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	
savev2_const_5
identity_47��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_22*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_22^Read/DisableCopyOnRead*
_output_shapes
: *
dtype0	R
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_21*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_21^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0V

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: [

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_20*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_20^Read_2/DisableCopyOnRead*
_output_shapes
:	�N*
dtype0_

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	�Nd

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	�Ni
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_19*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_19^Read_3/DisableCopyOnRead*
_output_shapes

:@*
dtype0^

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:@c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:@i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_18*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_18^Read_4/DisableCopyOnRead*
_output_shapes
:@*
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:@_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:@i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_17*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_17^Read_5/DisableCopyOnRead*
_output_shapes

:@ *
dtype0_
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes

:@ e
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes

:@ i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_16*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_16^Read_6/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_15*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_15^Read_7/DisableCopyOnRead*
_output_shapes

: *
dtype0_
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes

: e
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

: i
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_14*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_14^Read_8/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_13*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_13^Read_9/DisableCopyOnRead*
_output_shapes
:	�N*
dtype0`
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:	�Nf
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	�Nk
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_12*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_12^Read_10/DisableCopyOnRead*
_output_shapes
:	�N*
dtype0a
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes
:	�Nf
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	�Nk
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_11*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_11^Read_11/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:@k
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_10*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_10^Read_12/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:@j
Read_13/DisableCopyOnReadDisableCopyOnRead$read_13_disablecopyonread_variable_9*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp$read_13_disablecopyonread_variable_9^Read_13/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_14/DisableCopyOnReadDisableCopyOnRead$read_14_disablecopyonread_variable_8*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp$read_14_disablecopyonread_variable_8^Read_14/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_15/DisableCopyOnReadDisableCopyOnRead$read_15_disablecopyonread_variable_7*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp$read_15_disablecopyonread_variable_7^Read_15/DisableCopyOnRead*
_output_shapes

:@ *
dtype0`
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes

:@ e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:@ j
Read_16/DisableCopyOnReadDisableCopyOnRead$read_16_disablecopyonread_variable_6*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp$read_16_disablecopyonread_variable_6^Read_16/DisableCopyOnRead*
_output_shapes

:@ *
dtype0`
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes

:@ e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:@ j
Read_17/DisableCopyOnReadDisableCopyOnRead$read_17_disablecopyonread_variable_5*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp$read_17_disablecopyonread_variable_5^Read_17/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_18/DisableCopyOnReadDisableCopyOnRead$read_18_disablecopyonread_variable_4*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp$read_18_disablecopyonread_variable_4^Read_18/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_19/DisableCopyOnReadDisableCopyOnRead$read_19_disablecopyonread_variable_3*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp$read_19_disablecopyonread_variable_3^Read_19/DisableCopyOnRead*
_output_shapes

: *
dtype0`
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes

: e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

: j
Read_20/DisableCopyOnReadDisableCopyOnRead$read_20_disablecopyonread_variable_2*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp$read_20_disablecopyonread_variable_2^Read_20/DisableCopyOnRead*
_output_shapes

: *
dtype0`
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes

: e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

: j
Read_21/DisableCopyOnReadDisableCopyOnRead$read_21_disablecopyonread_variable_1*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp$read_21_disablecopyonread_variable_1^Read_21/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_22/DisableCopyOnReadDisableCopyOnRead"read_22_disablecopyonread_variable*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp"read_22_disablecopyonread_variable^Read_22/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4_operations/3/_embeddings/.ATTRIBUTES/VARIABLE_VALUEB0_operations/5/_kernel/.ATTRIBUTES/VARIABLE_VALUEB-_operations/5/bias/.ATTRIBUTES/VARIABLE_VALUEB0_operations/6/_kernel/.ATTRIBUTES/VARIABLE_VALUEB-_operations/6/bias/.ATTRIBUTES/VARIABLE_VALUEB0_operations/7/_kernel/.ATTRIBUTES/VARIABLE_VALUEB-_operations/7/bias/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB?_operations/2/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBA_operations/2/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1savev2_const_5"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *(
dtypes
2		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_46Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_47IdentityIdentity_46:output:0^NoOp*
T0*
_output_shapes
: �	
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_47Identity_47:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : ::: 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_15:+	'
%
_user_specified_nameVariable_14:+
'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_10:*&
$
_user_specified_name
Variable_9:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable:yu

_output_shapes
:
Y
_user_specified_nameA?MutableHashTable_lookup_table_export_values/LookupTableExportV2:yu

_output_shapes
:
Y
_user_specified_nameA?MutableHashTable_lookup_table_export_values/LookupTableExportV2:?;

_output_shapes
: 
!
_user_specified_name	Const_5
�o
�
!__inference__traced_restore_93843
file_prefix&
assignvariableop_variable_22:	 (
assignvariableop_1_variable_21: 1
assignvariableop_2_variable_20:	�N0
assignvariableop_3_variable_19:@,
assignvariableop_4_variable_18:@0
assignvariableop_5_variable_17:@ ,
assignvariableop_6_variable_16: 0
assignvariableop_7_variable_15: ,
assignvariableop_8_variable_14:1
assignvariableop_9_variable_13:	�N2
assignvariableop_10_variable_12:	�N1
assignvariableop_11_variable_11:@1
assignvariableop_12_variable_10:@,
assignvariableop_13_variable_9:@,
assignvariableop_14_variable_8:@0
assignvariableop_15_variable_7:@ 0
assignvariableop_16_variable_6:@ ,
assignvariableop_17_variable_5: ,
assignvariableop_18_variable_4: 0
assignvariableop_19_variable_3: 0
assignvariableop_20_variable_2: ,
assignvariableop_21_variable_1:*
assignvariableop_22_variable:M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: 
identity_24��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�2MutableHashTable_table_restore/LookupTableImportV2�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4_operations/3/_embeddings/.ATTRIBUTES/VARIABLE_VALUEB0_operations/5/_kernel/.ATTRIBUTES/VARIABLE_VALUEB-_operations/5/bias/.ATTRIBUTES/VARIABLE_VALUEB0_operations/6/_kernel/.ATTRIBUTES/VARIABLE_VALUEB-_operations/6/bias/.ATTRIBUTES/VARIABLE_VALUEB0_operations/7/_kernel/.ATTRIBUTES/VARIABLE_VALUEB-_operations/7/bias/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB?_operations/2/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBA_operations/2/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_22Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_21Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_20Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_19Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_18Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_17Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_16Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_15Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_14Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_13Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_12Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_11Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_10Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_9Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_8Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_7Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_6Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_5Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_4Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_3Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_2Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variableIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:23RestoreV2:tensors:24*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*&
 _has_manual_control_dependencies(*
_output_shapes
 Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_23Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_24IdentityIdentity_23:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*
_output_shapes
 "#
identity_24Identity_24:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_15:+	'
%
_user_specified_nameVariable_14:+
'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_10:*&
$
_user_specified_name
Variable_9:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable:UQ
#
_class
loc:@MutableHashTable
*
_user_specified_nameMutableHashTable
�
]
#__inference_signature_wrapper_92949

inputs	
inputs_1
identity	

identity_1�
PartitionedCallPartitionedCallinputsinputs_1*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_92941`
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:���������b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
m
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_93440
text
identityG
ShapeShapetext*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
Shape_1Shapetext*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:����������
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
PartitionedCallPartitionedCallPlaceholderWithDefault:output:0text*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_92941`
IdentityIdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:M I
'
_output_shapes
:���������

_user_specified_nametext"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
9
examples-
serving_default_examples:0���������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:�t
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
	output_names

	optimizer
	tft_layer
_default_save_signature

signatures"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities"
_generic_user_object
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses
#_default_save_signature
$$ _saved_model_loader_tracked_dict"
_tf_keras_model
�
%trace_02�
!__inference_serving_default_93397�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
����������z%trace_0
,
&serving_default"
signature_map
y
'_inbound_nodes
(_outbound_nodes
)_losses
*	_loss_ids
+_losses_override"
_generic_user_object
�
,_inbound_nodes
-_outbound_nodes
._losses
/	_loss_ids
0_losses_override
1_build_shapes_dict"
_generic_user_object
�
2_lookup_layer
3_inbound_nodes
4_outbound_nodes
5_losses
6	_loss_ids
7_losses_override
8_build_shapes_dict"
_generic_user_object
�
9_embeddings
:_inbound_nodes
;_outbound_nodes
<_losses
=	_loss_ids
>_losses_override
?_build_shapes_dict"
_generic_user_object
�
@_inbound_nodes
A_outbound_nodes
B_losses
C	_loss_ids
D_losses_override
E_build_shapes_dict"
_generic_user_object
�
F_kernel
Gbias
H_inbound_nodes
I_outbound_nodes
J_losses
K	_loss_ids
L_losses_override
M_build_shapes_dict"
_generic_user_object
�
N_kernel
Obias
P_inbound_nodes
Q_outbound_nodes
R_losses
S	_loss_ids
T_losses_override
U_build_shapes_dict"
_generic_user_object
�
V_kernel
Wbias
X_inbound_nodes
Y_outbound_nodes
Z_losses
[	_loss_ids
\_losses_override
]_build_shapes_dict"
_generic_user_object
�
0
1
^2
_3
`4
a5
b6
c7
d8
e9
f10
g11
h12
i13
j14
k15"
trackable_list_wrapper
Q
90
F1
G2
N3
O4
V5
W6"
trackable_list_wrapper
 "
trackable_dict_wrapper
:	 2adam/iteration
: 2adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
	variables
trainable_variables
regularization_losses
!__call__
#_default_save_signature
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
qtrace_02�
8__inference_transform_features_layer_layer_call_fn_93445�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
�
rtrace_02�
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_93440�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zrtrace_0
�B�
 __inference__wrapped_model_93418text"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
s	_imported
t_wrapped_function
u_structured_inputs
v_structured_outputs
w_output_to_inputs_map"
trackable_dict_wrapper
�
x	capture_1
y	capture_2
z	capture_3B�
!__inference_serving_default_93397inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zx	capture_1zy	capture_2zz	capture_3
�
x	capture_1
y	capture_2
z	capture_3B�
#__inference_signature_wrapper_93239examples"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jexamples
kwonlydefaults
 
annotations� *
 zx	capture_1zy	capture_2zz	capture_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
{lookup_table
|token_counts
}_inbound_nodes
~_outbound_nodes
_losses
�	_loss_ids
�_losses_override"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
':%	�N2embedding/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:@2dense/kernel
:@2
dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 :@ 2dense_1/kernel
: 2dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 : 2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
3:1	�N2"adam/embedding_embeddings_momentum
3:1	�N2"adam/embedding_embeddings_velocity
*:(@2adam/dense_kernel_momentum
*:(@2adam/dense_kernel_velocity
$:"@2adam/dense_bias_momentum
$:"@2adam/dense_bias_velocity
,:*@ 2adam/dense_1_kernel_momentum
,:*@ 2adam/dense_1_kernel_velocity
&:$ 2adam/dense_1_bias_momentum
&:$ 2adam/dense_1_bias_velocity
,:* 2adam/dense_2_kernel_momentum
,:* 2adam/dense_2_kernel_velocity
&:$2adam/dense_2_bias_momentum
&:$2adam/dense_2_bias_velocity
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_transform_features_layer_layer_call_fn_93445text"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_93440text"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�created_variables
�	resources
�trackable_objects
�initializers
�assets
�
signatures
$�_self_saveable_object_factories
ttransform_fn"
_generic_user_object
�B�
__inference_pruned_92941inputsinputs_1"�
���
FullArgSpec
args�	
jarg_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
!J	
Const_4jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
j
�_initializer
�_create_resource
�_initialize
�_destroy_resourceR jtf.StaticHashTable
T
�_create_resource
�_initialize
�_destroy_resourceR Z
table��
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
"
_generic_user_object
�
�trace_02�
__inference__creator_93449�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_93456�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_93460�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__creator_93464�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_93468�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_93472�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�B�
#__inference_signature_wrapper_92949inputsinputs_1"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 '

kwonlyargs�
jinputs

jinputs_1
kwonlydefaults
 
annotations� *
 
�B�
__inference__creator_93449"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
�	capture_1
�	capture_2B�
__inference__initializer_93456"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�	capture_1z�	capture_2
�B�
__inference__destroyer_93460"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__creator_93464"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__initializer_93468"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__destroyer_93472"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
�B�
__inference_save_fn_93490checkpoint_key"�
���
FullArgSpec
args�
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_restore_fn_93497restored_tensors_0restored_tensors_1"�
���
FullArgSpec7
args/�,
jrestored_tensors_0
jrestored_tensors_1
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ?
__inference__creator_93449!�

� 
� "�
unknown ?
__inference__creator_93464!�

� 
� "�
unknown A
__inference__destroyer_93460!�

� 
� "�
unknown A
__inference__destroyer_93472!�

� 
� "�
unknown J
__inference__initializer_93456({���

� 
� "�
unknown C
__inference__initializer_93468!�

� 
� "�
unknown �
 __inference__wrapped_model_93418o:�7
0�-
+�(
&
text�
text���������
� "1�.
,
text_xf!�
text_xf����������
__inference_pruned_92941�r�o
h�e
c�`
/
label&�#
inputs_label���������	
-
text%�"
inputs_text���������
� "a�^
.
label_xf"�
label_xf���������	
,
text_xf!�
text_xf����������
__inference_restore_fn_93497b|K�H
A�>
�
restored_tensors_0
�
restored_tensors_1	
� "�
unknown �
__inference_save_fn_93490�|&�#
�
�
checkpoint_key 
� "���
u�r

name�
tensor_0_name 
*

slice_spec�
tensor_0_slice_spec 
$
tensor�
tensor_0_tensor
u�r

name�
tensor_1_name 
*

slice_spec�
tensor_1_slice_spec 
$
tensor�
tensor_1_tensor	�
!__inference_serving_default_93397a{xyz9FGNOVW/�,
%�"
 �
inputs���������
� "!�
unknown����������
#__inference_signature_wrapper_92949�i�f
� 
_�\
*
inputs �
inputs���������	
.
inputs_1"�
inputs_1���������"a�^
.
label_xf"�
label_xf���������	
,
text_xf!�
text_xf����������
#__inference_signature_wrapper_93239}{xyz9FGNOVW9�6
� 
/�,
*
examples�
examples���������"3�0
.
output_0"�
output_0����������
S__inference_transform_features_layer_layer_call_and_return_conditional_losses_93440�:�7
0�-
+�(
&
text�
text���������
� "D�A
:�7
5
text_xf*�'
tensor_0_text_xf���������
� �
8__inference_transform_features_layer_layer_call_fn_93445o:�7
0�-
+�(
&
text�
text���������
� "1�.
,
text_xf!�
text_xf���������