<?xml version="1.0" encoding="UTF-8"?>
<Repository:repository xmlns:Repository="http://www.tibco.com/xmlns/repo/types/2002" xmlns:AESDK="http://www.tibco.com/xmlns/aemeta/adapter/2002" xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <ADB:adapter xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" name="ADB_eCom_GetProduct_Subscriber">
        <AESDK:instanceId>ADB_eCom_GetProduct_Subscriber</AESDK:instanceId>
        <AESDK:startup>
            <AESDK:defaultStartup>active</AESDK:defaultStartup>
            <AESDK:banner>true</AESDK:banner>
            <AESDK:hasStdMicroAgent>true</AESDK:hasStdMicroAgent>
            <AESDK:stdMicroAgentName>ADB_ECOM_GETPRODUCT_Subscriber</AESDK:stdMicroAgentName>
            <AESDK:stdMicroAgentTimeout>10000</AESDK:stdMicroAgentTimeout>
            <AESDK:hasClassMicroAgent>%%HawkEnabled%%</AESDK:hasClassMicroAgent>
            <AESDK:classMicroAgentTimeout>10000</AESDK:classMicroAgentTimeout>
            <AESDK:classMicroAgentName>ADB_ECOM_GETPRODUCT_Subscriber</AESDK:classMicroAgentName>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBHawkDefault</AESDK:name>
            </AESDK:startComponent>
            <AESDK:defaultMicroAgentSession>ADBHawkDefault</AESDK:defaultMicroAgentSession>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>JMSQueue</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBAgentJmsSession</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBSubscriber_eComLocalCtl</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBSubscriber_eComMasterCtl</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBSubscriber_eComPrice</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBSubscriber_eComSize</AESDK:name>
            </AESDK:startComponent>
        </AESDK:startup>
        <AESDK:deployment>
            <AESDK:advisories xsi:nil="true"/>
            <AESDK:sessions>
                <AESDK:messaging>
                    <AESDK:rvSession isRef="true">#rvSession.ADBHawkDefault</AESDK:rvSession>
                    <AESDK:jmsSession isRef="true">#jmsSession.JMSQueue</AESDK:jmsSession>
                    <AESDK:jmsSession isRef="true">#jmsSession.ADBAgentJmsSession</AESDK:jmsSession>
                </AESDK:messaging>
            </AESDK:sessions>
            <AESDK:consumers>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.ADBSubscriber_eComLocalCtl</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.ADBSubscriber_eComMasterCtl</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.ADBSubscriber_eComPrice</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.ADBSubscriber_eComSize</AESDK:jmsSubscriber>
            </AESDK:consumers>
        </AESDK:deployment>
        <AESDK:timers xsi:nil="true"/>
        <AESDK:txControls xsi:nil="true"/>
        <AESDK:reporting>
            <AESDK:fileSink>
                <AESDK:fileName>D:\Newfolder\ECOMSubscription\GetProduct\Log_ADB_eCom_GetProduct_Subscriber.log</AESDK:fileName>
                <AESDK:fileCount>25</AESDK:fileCount>
                <AESDK:fileLimit>4000000</AESDK:fileLimit>
                <AESDK:appendMode>true</AESDK:appendMode>
                <AESDK:name>Log_ADB_eCom_GetProduct_Subscriber</AESDK:name>
                <AESDK:role>
                    <AESDK:name>infoRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>debugRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>errorRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>warnRole</AESDK:name>
                </AESDK:role>
            </AESDK:fileSink>
        </AESDK:reporting>
        <AESDK:metadata>
            <AESDK:loadUrl isRef="true">/AESchemas/ae/ADB/adbmetadata.aeschema</AESDK:loadUrl>
            <AESDK:loadUrl isRef="true">/AESchemas/ae/ADB/ADB_eCom_GetProduct_Subscriber.aeschema</AESDK:loadUrl>
        </AESDK:metadata>
        <ADB:hawk xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:help>TIB/Adapter for ActiveDatabase MicroAgent</ADB:help>
            <ADB:microAgentName>COM.TIBCO.adb.custom.%%Deployment%%.%%InstanceId%%</ADB:microAgentName>
            <ADB:sessionName isRef="true">#rvSession.ADBHawkDefault</ADB:sessionName>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Sets the debug level for the agent (possible values 0-3)</ADB:help>
                <ADB:name>setDebugLevel</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>The debug level</ADB:help>
                    <ADB:name>DebugLevel</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Retrieve configuration information for the agent.</ADB:help>
                <ADB:name>showConfiguration</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Verbose flag information</ADB:help>
                    <ADB:name>VerboseInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Debug level information</ADB:help>
                    <ADB:name>DebugLevelInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Poll interval information</ADB:help>
                    <ADB:name>PollIntervalInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Terminates the agent</ADB:help>
                <ADB:name>terminateADBagent</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Toggles the value of the verbose flag.</ADB:help>
                <ADB:name>toggleVerboseFlag</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Gets number of messages waiting in the event queue.</ADB:help>
                <ADB:name>getEventQueueSize</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Specify subscriber or request/reply listener</ADB:help>
                    <ADB:name>Session</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>Subscriber,RequestReply</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Number of events in the queue</ADB:help>
                    <ADB:name>QueueCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Maximum number of events in queue (0 = unlimited)</ADB:help>
                    <ADB:name>QueueLimit</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about the data handled by the adapter instance</ADB:help>
                <ADB:name>getActivityStatistics</ADB:name>
                <ADB:index>Name</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Get statistics by either service or operation</ADB:help>
                    <ADB:name>Get Subtotal By</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>Service,Operation</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Service Name</ADB:help>
                    <ADB:name>Name</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about the data handled by a particular adapter service</ADB:help>
                <ADB:name>getActivityStatisticsByService</ADB:name>
                <ADB:index>Operation</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Name of which service to get the statistic for</ADB:help>
                    <ADB:name>Service Name</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>The type of operation this service provides</ADB:help>
                    <ADB:name>Operation</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Name of the top level schema processed by this service, or the subject of a request/response service</ADB:help>
                    <ADB:name>SchemaName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about one operation</ADB:help>
                <ADB:name>getActivityStatisticsByOperation</ADB:name>
                <ADB:index>ServiceName</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Name of the operation</ADB:help>
                    <ADB:name>Operation</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>fetch,insert,update,delete,request/reply,standard_operation,custom_operation</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Name of the Service</ADB:help>
                    <ADB:name>ServiceName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get operation counts of the current threads</ADB:help>
                <ADB:name>getThreadStatistics</ADB:name>
                <ADB:index>TaskType</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular thread</ADB:help>
                    <ADB:name>ThreadID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>A type that tells what part of the adapter this thread belongs to</ADB:help>
                    <ADB:name>ThreadType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Description of the tasks this thread processes</ADB:help>
                    <ADB:name>TaskType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Number of tasks processed by this thread</ADB:help>
                    <ADB:name>TaskCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about current count of elements in any internal queue</ADB:help>
                <ADB:name>getQueueStatistics</ADB:name>
                <ADB:index>QueueID</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular queue</ADB:help>
                    <ADB:name>QueueID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>A type that will match this queue to a thread or connection</ADB:help>
                    <ADB:name>QueueType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Current number of elements in the queue</ADB:help>
                    <ADB:name>QueueCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Maximum number of elements that can be held in this queue</ADB:help>
                    <ADB:name>MaxQueueSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Return the state and statistics for all the curent connections used by the adapter</ADB:help>
                <ADB:name>getConnectionStatistics</ADB:name>
                <ADB:index>ConnectionID</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular connection</ADB:help>
                    <ADB:name>ConnectionID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Describe the purpose of this connection serves to the adapter</ADB:help>
                    <ADB:name>ConnectionType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Current state of the connection</ADB:help>
                    <ADB:name>State</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of times this connection had been re-established</ADB:help>
                    <ADB:name>NumRetries</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of operations processed by this connection</ADB:help>
                    <ADB:name>TotalNumOperations</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of operations processed by this connection since the last reconnection</ADB:help>
                    <ADB:name>CurrentNumOperations</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the activity statistics</ADB:help>
                <ADB:name>resetActivityStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the thread statistics</ADB:help>
                <ADB:name>resetThreadStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the connection statistics</ADB:help>
                <ADB:name>resetConnectionStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Set the polling interval setting</ADB:help>
                <ADB:name>setPollingInterval</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Polling interval in milliseconds</ADB:help>
                    <ADB:name>PollingInterval</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the current polling interval setting</ADB:help>
                <ADB:name>getPollingInterval</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Polling interval in milliseconds</ADB:help>
                    <ADB:name>PollingInterval</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Set the polling polling batch size setting</ADB:help>
                <ADB:name>setPollingBatchSize</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Polling batch size</ADB:help>
                    <ADB:name>PollingBatchSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the current polling batch size setting</ADB:help>
                <ADB:name>getPollingBatchSize</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Polling batch size</ADB:help>
                    <ADB:name>PollingBatchSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the setting of the perfMon option</ADB:help>
                <ADB:name>getPerfMonSetting</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Value of PerfMon option</ADB:help>
                    <ADB:name>Setting</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
        </ADB:hawk>
        <AESDK:designer>
            <AESDK:advancedLogging>true</AESDK:advancedLogging>
            <AESDK:adapterVersion>sdk51</AESDK:adapterVersion>
            <AESDK:timeout>30000</AESDK:timeout>
            <AESDK:savePassword>true</AESDK:savePassword>
            <AESDK:lastDBType>32</AESDK:lastDBType>
            <AESDK:vendor>32</AESDK:vendor>
            <AESDK:convertOracleNumberToString>true</AESDK:convertOracleNumberToString>
            <AESDK:deployOperations>false</AESDK:deployOperations>
            <AESDK:showExpertSettings>true</AESDK:showExpertSettings>
            <AESDK:identifierCase>0</AESDK:identifierCase>
            <AESDK:lockedProperties>
                <AESDK:locked>
                    <AESDK:properties>defaultMicroAgentSession,repoOnly,defaultSession,searchUrl,defaultStartup</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Metadata URLs/LoadURL1</AESDK:resource>
                    <AESDK:properties>name,loadURL</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Metadata URLs/LoadURL</AESDK:resource>
                    <AESDK:properties>name,loadURL</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBAgentJmsSession</AESDK:resource>
                    <AESDK:properties>connectionFactoryType</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue</AESDK:resource>
                    <AESDK:properties>connectionFactoryType,name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComSize</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComPrice</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComMasterCtl</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComLocalCtl</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBHawkDefault</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Adapter Services</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
            </AESDK:lockedProperties>
            <AESDK:fixedChildren>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Metadata URLs</AESDK:resource>
                    <AESDK:children>LoadURL,LoadURL1</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions</AESDK:resource>
                    <AESDK:children>ADBHawkDefault,JMSQueue</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue</AESDK:resource>
                    <AESDK:children>ADBSubscriber_eComLocalCtl,ADBSubscriber_eComMasterCtl,ADBSubscriber_eComPrice,ADBSubscriber_eComSize</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComSize</AESDK:resource>
                    <AESDK:children>dbo.eComSize</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComPrice</AESDK:resource>
                    <AESDK:children>dbo.eComPrice</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComMasterCtl</AESDK:resource>
                    <AESDK:children>dbo.eComMasterCatalog</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComLocalCtl</AESDK:resource>
                    <AESDK:children>dbo.eComLocalCatalog</AESDK:children>
                </AESDK:fixed>
            </AESDK:fixedChildren>
            <AESDK:resourceDescriptions>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComSize</AESDK:resource>
                    <AESDK:description>Created for service ADBSubscriber.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComPrice</AESDK:resource>
                    <AESDK:description>Created for service ADBSubscriber_eComPrice.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComMasterCtl</AESDK:resource>
                    <AESDK:description>Created for service ADBSubscriber_eComMasterCtl.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSQueue/ADBSubscriber_eComLocalCtl</AESDK:resource>
                    <AESDK:description>Created for service ADBSubscriber.</AESDK:description>
                </AESDK:node>
            </AESDK:resourceDescriptions>
            <AESDK:adapterTester>
                <AESDK:exe>C:\tibco\adapter\adadb\6.2\bin\adbagent.exe</AESDK:exe>
                <AESDK:args>--run --propFile</AESDK:args>
                <AESDK:workingDir>D:\Newfolder</AESDK:workingDir>
            </AESDK:adapterTester>
        </AESDK:designer>
        <ADB:designer xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" xsi:nil="true"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:serviceBulkInsertSize>1</ADB:serviceBulkInsertSize>
                <ADB:name>ADBSubscriber_eComLocalCtl</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ADB_eCom_GetProduct_Subscriber.aeschema#class.dbo.eComLocalCatalog</ADB:classReference>
                <ADB:destinationTable>dbo.eComLocalCatalog</ADB:destinationTable>
                <ADB:columnsToSubscribe>id</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> localeID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> article</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> displayName</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> onlineFrom</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> onlineTo</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> shortDescription</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> bullet1</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> bullet2</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> bullet3</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> bullet4</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> bullet5</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> bullet6</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> bullet7</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> campaignTag</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> pageKeywords</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> position</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> productFilter</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> personalization_flag</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> personalization_type</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> priority</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> buyNowURL</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> type</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> badges</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> timestamp</ADB:columnsToSubscribe>
                <ADB:userDefinedKey>id</ADB:userDefinedKey>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>dbo.eComLocalCatalog</ADB:name>
                        <ADB:userKeys>id</ADB:userKeys>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>ADB_eCom_GetProduct_Subscriber.ADBSubscriber_eComLocalCtl</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.ADBSubscriber_eComLocalCtl</ADB:endpointReference>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter/GetProduct/TechnicalAdapter/ADB_eCom_GetProduct_Subscriber.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:exceptionsTable/>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:serviceBulkInsertSize>1</ADB:serviceBulkInsertSize>
                <ADB:name>ADBSubscriber_eComMasterCtl</ADB:name>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter/GetProduct/TechnicalAdapter/ADB_eCom_GetProduct_Subscriber.adb#jmsSession.JMSQueue</ADB:sessionReference>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ADB_eCom_GetProduct_Subscriber.aeschema#class.dbo.eComMasterCatalog</ADB:classReference>
                <ADB:destinationTable>dbo.eComMasterCatalog</ADB:destinationTable>
                <ADB:columnsToSubscribe>id</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> article</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> model</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> sizeScale</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> basicUOM</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> brandCode</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> divisionCode</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> storeLine</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> gender</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> genderSub</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> division</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> brand</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> productType</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> sport</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> sportSub</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> sportSubSub</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> collection</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> functions</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> defaultColor</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> features</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> technologies</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> customizable</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> coorporateMarketingLine</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> sportsCode</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> categoryMarketingLine</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> salesLine</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> productGroup</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> sapProductType</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> useCodeMen</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> useCodeLadies</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> useCodeBoys</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> useCodeGirls</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> useCodeChildren</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> useCodeBabies</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> rmhProductDivision</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> rmhGenderAge</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> rmhCategory</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> rmhProductType</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> rrp</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> currency</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> age</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> partner</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> productLineStyle</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> bestFor</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> sizeChart</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> timestamp</ADB:columnsToSubscribe>
                <ADB:userDefinedKey>id</ADB:userDefinedKey>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>dbo.eComMasterCatalog</ADB:name>
                        <ADB:userKeys>id</ADB:userKeys>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>ADB_eCom_GetProduct_Subscriber.ADBSubscriber_eComMasterCtl</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.ADBSubscriber_eComMasterCtl</ADB:endpointReference>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:serviceBulkInsertSize>1</ADB:serviceBulkInsertSize>
                <ADB:name>ADBSubscriber_eComPrice</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ADB_eCom_GetProduct_Subscriber.aeschema#class.dbo.eComPrice</ADB:classReference>
                <ADB:destinationTable>dbo.eComPrice</ADB:destinationTable>
                <ADB:columnsToSubscribe>id</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> article</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> localeID</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> price</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> sale_price</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> vip_price</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> timestamp</ADB:columnsToSubscribe>
                <ADB:userDefinedKey>id</ADB:userDefinedKey>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>dbo.eComPrice</ADB:name>
                        <ADB:userKeys>id</ADB:userKeys>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>ADB_eCom_GetProduct_Subscriber.ADBSubscriber_eComPrice</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.ADBSubscriber_eComPrice</ADB:endpointReference>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter/GetProduct/TechnicalAdapter/ADB_eCom_GetProduct_Subscriber.adb#jmsSession.JMSQueue</ADB:sessionReference>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:serviceBulkInsertSize>1</ADB:serviceBulkInsertSize>
                <ADB:name>ADBSubscriber_eComSize</ADB:name>
                <ADB:connectionFactoryType>1</ADB:connectionFactoryType>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ADB_eCom_GetProduct_Subscriber.aeschema#class.dbo.eComSize</ADB:classReference>
                <ADB:destinationTable>dbo.eComSize</ADB:destinationTable>
                <ADB:columnsToSubscribe>id</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> article</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> sizeIndex</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ean</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> upc</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> timestamp</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>dbo.eComSize</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>ADB_eCom_GetProduct_Subscriber.ADBSubscriber_eComSize</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.ADBSubscriber_eComSize</ADB:endpointReference>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/Adapter/GetProduct/TechnicalAdapter/ADB_eCom_GetProduct_Subscriber.adb#jmsSession.JMSQueue</ADB:sessionReference>
            </ADB:subscriber>
        </ADB:operations>
        <ADB:activedb xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:defaultDataSource xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:name>%%Adapters/GEPS/DSN%%</ADB:name>
                <ADB:user>%%Adapters/GEPS/Username%%</ADB:user>
                <ADB:driver>tibcosoftwareinc.jdbc.sqlserver.SQLServerDriver</ADB:driver>
                <ADB:url>%%Adapters/GEPS/JDBC_URL%%</ADB:url>
                <ADB:disConnCode/>
                <ADB:dbmsType>SQLSERVER</ADB:dbmsType>
                <ADB:password>#!RrWP/bhW+Sp8kUr7U7lYU8fX2cUUg/gKiES+nTavszEcXPMWnVa4+CLgjSGqCCDh6LsU/X90kis1ut/zavYfEg==</ADB:password>
                <ADB:defaultSchema>dbo</ADB:defaultSchema>
            </ADB:defaultDataSource>
            <ADB:threadCount xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:commInterfaces>1</ADB:commInterfaces>
                <ADB:commRRInterfaces>1</ADB:commRRInterfaces>
                <ADB:dbInterfaces>1</ADB:dbInterfaces>
                <ADB:dbRRInterfaces>1</ADB:dbRRInterfaces>
                <ADB:pubManagers>1</ADB:pubManagers>
                <ADB:subManagers>1</ADB:subManagers>
            </ADB:threadCount>
            <ADB:agentOptions xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:debug>3</ADB:debug>
                <ADB:verbose>on</ADB:verbose>
                <ADB:payload>false</ADB:payload>
                <ADB:useTraceFile/>
                <ADB:publishChildData>on</ADB:publishChildData>
                <ADB:poll>5000</ADB:poll>
                <ADB:maxRows>0</ADB:maxRows>
                <ADB:usePollingBatchSize>false</ADB:usePollingBatchSize>
                <ADB:batchPubStatusUpdates>off</ADB:batchPubStatusUpdates>
                <ADB:pubBatchConfirmSize>0</ADB:pubBatchConfirmSize>
                <ADB:pubBatchConfirmTimeout>10000</ADB:pubBatchConfirmTimeout>
                <ADB:subBatchCommitSize>0</ADB:subBatchCommitSize>
                <ADB:subBatchCommitTimeout>10000</ADB:subBatchCommitTimeout>
                <ADB:subBulkInsertSize>1</ADB:subBulkInsertSize>
                <ADB:rvMaxQueueSize>0</ADB:rvMaxQueueSize>
                <ADB:useExceptTable>on</ADB:useExceptTable>
                <ADB:rebuildAfterException>off</ADB:rebuildAfterException>
                <ADB:encoding>UTF8</ADB:encoding>
                <ADB:jmsDestinationPrefix/>
                <ADB:retryTotal>3</ADB:retryTotal>
                <ADB:sleepBetweenRetries>10000</ADB:sleepBetweenRetries>
                <ADB:retryBeforeSuspend>1</ADB:retryBeforeSuspend>
                <ADB:stopOnRetryFail>RETRY_FAIL_LAST_SERVICE</ADB:stopOnRetryFail>
                <ADB:useDesignTimeConnSetting>true</ADB:useDesignTimeConnSetting>
                <ADB:rpcMaxRows>0</ADB:rpcMaxRows>
                <ADB:scriptFileName>%%ADBScriptFileDir%%\ADB_eCom_GetProduct_Subscriber.sql</ADB:scriptFileName>
                <ADB:termSubject>ADB.GETPRODUCT.ECOM.SUBSCRIBER.STOPADAPTER</ADB:termSubject>
            </ADB:agentOptions>
        </ADB:activedb>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
    </ADB:adapter>
    <AEService:rvSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.RV" name="ADBHawkDefault">
        <AEService:daemon>%%TIBHawkDaemon%%</AEService:daemon>
        <AEService:service>%%TIBHawkService%%</AEService:service>
        <AEService:network>%%TIBHawkNetwork%%</AEService:network>
        <AEService:mode>asynchronous</AEService:mode>
    </AEService:rvSession>
    <AEService:jmsSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.JMS" name="JMSQueue">
        <AEService:clientId/>
        <AEService:connFactoryType>1</AEService:connFactoryType>
        <AEService:connFactoryName>%%Common/Shared/Connections/JMS/ESB/ConnectionFactories/QueueConnectionFactory%%</AEService:connFactoryName>
        <AEService:jndiLookups>true</AEService:jndiLookups>
        <AEService:providerUrl>%%JmsProviderUrl%%</AEService:providerUrl>
        <AEService:providerCtxFactory>com.tibco.tibjms.naming.TibjmsInitialContextFactory</AEService:providerCtxFactory>
        <AEService:connUsername>%%Common/Shared/Connections/JMS/ESB/jndiUserName%%</AEService:connUsername>
        <AEService:connPassword>%%Common/Shared/Connections/JMS/ESB/jndiPassword%%</AEService:connPassword>
    </AEService:jmsSession>
    <AEService:jmsSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.JMS" name="ADBAgentJmsSession">
        <AEService:clientId/>
        <AEService:connFactoryType>2</AEService:connFactoryType>
        <AEService:connFactoryName>TopicConnectionFactory</AEService:connFactoryName>
        <AEService:jndiLookups>false</AEService:jndiLookups>
        <AEService:providerUrl>%%JmsProviderUrl%%</AEService:providerUrl>
        <AEService:providerCtxFactory>com.tibco.tibjms.naming.TibjmsInitialContextFactory</AEService:providerCtxFactory>
        <AEService:connUsername/>
        <AEService:connPassword/>
    </AEService:jmsSession>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="ADBSubscriber_eComLocalCtl">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:durableName>ADBSubscriber_eComLocalCtl</AEService:durableName>
        <AEService:messageSelector/>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>ADB_eCom_GetProduct_Subscriber.ADBSubscriber_eComLocalCtl</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ADB_eCom_GetProduct_Subscriber.aeschema#class.dbo.eComLocalCatalog</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="ADBSubscriber_eComMasterCtl">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:durableName>ADBSubscriber_eComMasterCtl</AEService:durableName>
        <AEService:messageSelector/>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>ADB_eCom_GetProduct_Subscriber.ADBSubscriber_eComMasterCtl</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ADB_eCom_GetProduct_Subscriber.aeschema#class.dbo.eComMasterCatalog</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="ADBSubscriber_eComPrice">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:durableName>ADBSubscriber_eComPrice</AEService:durableName>
        <AEService:messageSelector/>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>ADB_eCom_GetProduct_Subscriber.ADBSubscriber_eComPrice</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ADB_eCom_GetProduct_Subscriber.aeschema#class.dbo.eComPrice</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="ADBSubscriber_eComSize">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:durableName>ADBSubscriber_eComSize</AEService:durableName>
        <AEService:messageSelector/>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSQueue</AEService:session>
        <AEService:destination>ADB_eCom_GetProduct_Subscriber.ADBSubscriber_eComSize</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ADB_eCom_GetProduct_Subscriber.aeschema#class.dbo.eComSize</AEService:class>
    </AEService:jmsConsumer>
</Repository:repository>