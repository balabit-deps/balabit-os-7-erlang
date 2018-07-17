%%
%% %CopyrightBegin%
%% 
%% Copyright Ericsson AB 2000-2016. All Rights Reserved.
%% 
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%% 
%% %CopyrightEnd%
%%

%%
%%----------------------------------------------------------------------
%% Generated by the Erlang ASN.1 compiler version:1.2.7
%% Purpose: Erlang record definitions for each named and unnamed
%%          SEQUENCE and SET in module MEDIA-GATEWAY-CONTROL
%%----------------------------------------------------------------------

-record('MegacoMessage',
	{
	  authHeader = asn1_NOVALUE,
	  mess
	 }).

-record('AuthenticationHeader',
	{
	  secParmIndex, 
	  seqNum, 
	  ad
	 }).

-record('Message',
	{
	  version, 
	  mId, 
	  messageBody
	 }). % with extension mark

-record('DomainName',
	{
	  name, 
	  portNumber = asn1_NOVALUE
	 }).

-record('IP4Address',
	{
	  address,
	  portNumber = asn1_NOVALUE
	 }).

-record('IP6Address',
	{
	  address, 
	  portNumber = asn1_NOVALUE
	 }).

-record('TransactionRequest',
	{
	  transactionId, 
	  actions
	 }). % with extension mark

-record('TransactionPending',
	{
	  transactionId
	 }). % with extension mark


%% --- TransactionReply ---

-record('megaco_transaction_reply',
	{
	  transactionId, 
	  immAckRequired       = asn1_NOVALUE, 
	  transactionResult,
	  segmentNumber        = asn1_NOVALUE,
	  segmentationComplete = asn1_NOVALUE
	 }). 


%% %% Pre v3 record def: 
%% -record('TransactionReply',
%% 	{
%% 	  transactionId, 
%% 	  immAckRequired = asn1_NOVALUE, 
%% 	  transactionResult
%% 	 }). %% with extension mark 

%% %% v3 record def: 
%% -record('TransactionReply',
%% 	{
%% 	  transactionId, 
%% 	  immAckRequired       = asn1_NOVALUE, 
%% 	  transactionResult,
%%        %% with extension mark -- v3 --
%%        segmentNumber        = asn1_NOVALUE,
%%        segmentationComplete = asn1_NOVALUE
%% 	 }). 


%% -- v3 --
-record('SegmentReply',
        {
          transactionId,
          segmentNumber,
          segmentationComplete = asn1_NOVALUE
         }). % with extension mark


-record('TransactionAck',
	{
	  firstAck, 
	  lastAck = asn1_NOVALUE
	 }).

-record('ErrorDescriptor',
	{
	  errorCode, 
	  errorText = asn1_NOVALUE
	 }).

-record('DigitMapDescriptor',
	{
	  digitMapName = asn1_NOVALUE, 
	  digitMapValue = asn1_NOVALUE
	 }).

-record('DigitMapValue',
	{
	  startTimer = asn1_NOVALUE, 
	  shortTimer = asn1_NOVALUE, 
	  longTimer = asn1_NOVALUE, 
	  %% BUGBUG BUGBUG 
	  %% Note that there should not really be a default value 
	  %% for this item, but a problem with the flex scanner
	  %% makes it neccessary to swap the values of digitMapBody
	  %% and durationTimer. The same is done in the (erl) scanner
	  %% just so they behave the same. The values are later 
	  %% swapped back by the parser...
	  digitMapBody = asn1_NOVALUE, 
	  %% with extensions
	  durationTimer = asn1_NOVALUE
	 }). 


-record('TerminationID',
	{
	  wildcard, 
	  id
	 }). % with extension mark

