package  'LORAWAN_Library Library' {
    import ARCADIA::**; 
    @PackageMeta {
        type = "Library";
    } 
    @CapellaID { eid = "edf9b4ac-c8aa-48fb-aef2-2465dfe37b3d"; } 
    enum def 'ProgressStatus' :> EnumerationPropertyType  { 
        enum 'DRAFT'; 
        enum 'TO_BE_REVIEWED'; 
        enum 'TO_BE_DISCUSSED'; 
        enum 'REWORK_NECESSARY'; 
        enum 'UNDER_REWORK'; 
        enum 'REVIEWED_OK'; 
    }  
    package  'LORAWAN_Library' {
        @PackageMeta {
            type = "SystemEngineering";
        } 
        @CapellaID { eid = "bc10a5f2-7e25-42b9-82e3-404aab1048f4"; } 
        package  'Operational Analysis' {
            @PackageMeta {
                type = "OperationalAnalysis";
            } 
            @CapellaID { eid = "5b5910aa-2ca5-4c17-bd95-677fa583bd3c"; } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "345d5caa-f674-46cf-a4ae-4cd87c8e4ec5"; } 
            } 
            package  'Operational Entities' {
                @PackageMeta {
                    type = "EntityPkg";
                } 
                @CapellaID { eid = "8ce9a264-5501-49b6-b595-43639e02a622"; } 
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "d8d9356a-6545-4bb1-b820-00ac851a3860"; } 
            } 
            package  'Roles' {
                @PackageMeta {
                    type = "RolePkg";
                } 
                @CapellaID { eid = "3dfaec19-e30d-4f0f-b615-d688e0cbe626"; } 
            } 
            package  'Operational Capabilities' {
                @PackageMeta {
                    type = "OperationalCapabilityPkg";
                } 
                @CapellaID { eid = "d84626b6-f5e2-4552-aebf-8ba753235267"; } 
            } 
            package  'Operational Activities' {
                @PackageMeta {
                    type = "OperationalActivityPkg";
                } 
                @CapellaID { eid = "befeff82-6670-4cc7-9f7b-8f1bd72f6e59"; } 
                action 'Root Operational Activity' : OperationalActivity  { 
                    @CapellaID { eid = "2a89e50e-40a4-40e0-b2af-e9bd3647041e"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                }  
            } 
        } 
        package  'System Analysis' {
            @PackageMeta {
                type = "SystemAnalysis";
            } 
            @CapellaID { eid = "d5ecf3fc-0c36-4b20-aa8d-3b497afeb07b"; } 
            package  'Missions' {
                @PackageMeta {
                    type = "MissionPkg";
                } 
                @CapellaID { eid = "68d4d833-f2b3-443e-a7f4-dc518b804e8d"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "3bf53828-daab-4410-b3a5-157c14c4142b"; } 
                package  'Predefined Types' {
                    @PackageMeta {
                        type = "DataPkg";
                    } 
                    @CapellaID { eid = "86a3498b-a40f-4a7f-aec9-dcad982ca0cd"; } 
                } 
            } 
            package  'Structure' {
                @PackageMeta {
                    type = "SystemComponentPkg";
                } 
                @CapellaID { eid = "258389be-23f4-4dd8-a028-85659e840d12"; } 
                part 'HI Facility' : SystemComponent { 
                    @CapellaID { eid = "6c2979ec-273a-40ca-ba63-37f43cd3bc05"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    allocation '5bd9bda2-d388-4d2a-8b4f-080691cae7e4' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'HI Facility';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies' ; 
                    allocation 'b2b2212a-5774-4ee1-8239-95504728328d' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'HI Facility';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment' ; 
                    state 'System State Machine' : StateMachine  { 
                        @CapellaID { eid = "6b151cb8-5567-4659-b91c-24012468e67c"; } 
                        attribute :>> isControlOperator = false; 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'HI Facility'.'5bd9bda2-d388-4d2a-8b4f-080691cae7e4',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'HI Facility'.'b2b2212a-5774-4ee1-8239-95504728328d'); 
                    ref :>> ownedStateMachines =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'HI Facility'.'System State Machine'); 
                }  
                part 'Business or Campus Staff' : SystemComponent { 
                    @CapellaID { eid = "185625d5-7797-451d-a505-1a6714d36632"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    allocation 'b9c3e237-29d2-4b66-8a77-ba9b3b2201e1' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Monitor Alerts'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'Business or Campus Staff';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Monitor Alerts' ; 
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'Business or Campus Staff'.'b9c3e237-29d2-4b66-8a77-ba9b3b2201e1'); 
                }  
                part 'Environment' : SystemComponent { 
                    @CapellaID { eid = "232202b4-41cf-4c49-aa36-6911b925596b"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    allocation '33cf866d-3de0-4de3-96d7-bdb7d6ab43b9' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Heat Influence'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'Environment';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Heat Influence' ; 
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'Structure'::'Environment'.'33cf866d-3de0-4de3-96d7-bdb7d6ab43b9'); 
                }  
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "aaf121bf-6423-4cce-9962-ba0c65d3b4bc"; } 
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityPkg";
                } 
                @CapellaID { eid = "bf74f630-7f39-4456-930d-0f83dc891e56"; } 
            } 
            package  'System Functions' {
                @PackageMeta {
                    type = "SystemFunctionPkg";
                } 
                @CapellaID { eid = "d6a5ae96-4595-4112-8cac-34369cc909cc"; } 
                action 'Root System Function' : SystemFunction  { 
                    @CapellaID { eid = "af76c263-bf1f-4577-8090-af3df366f8c2"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    interface '9e10a619-a0f3-44fd-9c7c-7dbee2a6d87f' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Heat Influence'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment'.'FIP 1' { 
                        @CapellaID { eid = "9e10a619-a0f3-44fd-9c7c-7dbee2a6d87f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat"; 
                    }  
                    interface 'ec381121-d7fb-48d4-bf63-072179c11166' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies'.'FIP 1' { 
                        @CapellaID { eid = "ec381121-d7fb-48d4-bf63-072179c11166"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Temp"; 
                    }  
                    interface '123d0820-a562-4a75-aebd-12b12c705aae' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Monitor Alerts'.'FIP 1' { 
                        @CapellaID { eid = "123d0820-a562-4a75-aebd-12b12c705aae"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Alerts"; 
                    }  
                    action 'Monitor Alerts' : SystemFunction  { 
                        @CapellaID { eid = "a434041b-117e-4dff-a32d-c0200d1d32bf"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "a6939147-997d-4a77-9ef2-5430c06b99c2"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Monitor Alerts'.'FIP 1'); 
                    }  
                    action 'Detect Temperature Anomolies' : SystemFunction  { 
                        @CapellaID { eid = "3040b6ad-366e-49d8-820d-33e65a19ba57"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "12beb1d0-7a92-459b-b5c5-97799430ccac"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "f80e51ed-04b1-4846-8530-f72e350582e6"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies'.'FOP 1'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies'.'FIP 1'); 
                    }  
                    action 'Transfered from Environment' : SystemFunction  { 
                        @CapellaID { eid = "699ccd90-e14e-4688-ae09-e823aafa2e4b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "3d44c245-fe6f-4781-94de-a6f937f9b42d"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "dad02ab1-a083-4f83-aea4-7da8b8b837c2"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment'.'FOP 1'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment'.'FIP 1'); 
                    }  
                    action 'Heat Influence' : SystemFunction  { 
                        @CapellaID { eid = "011fbdfc-8955-47c9-80bc-3909618a2456"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "eb79a68c-3abe-406c-b488-263325763a00"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Heat Influence'.'FOP 1'); 
                    }  
                    ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'9e10a619-a0f3-44fd-9c7c-7dbee2a6d87f',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'ec381121-d7fb-48d4-bf63-072179c11166',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'123d0820-a562-4a75-aebd-12b12c705aae'); 
                     
                    ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Monitor Alerts',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Detect Temperature Anomolies',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Transfered from Environment',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'System Analysis'::'System Functions'::'Root System Function'.'Heat Influence'); 
                }  
            } 
        } 
        package  'Logical Architecture' {
            @PackageMeta {
                type = "LogicalArchitecture";
            } 
            @CapellaID { eid = "c90ddf94-bce2-4698-bff1-08f3001b63cb"; } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "5a374750-3fbf-4652-8783-3de933323825"; } 
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "f2d92479-8377-4aa9-aad5-8bcba4a88be9"; } 
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "6164c975-2a4f-4922-95e1-0fa29d2bf7da"; } 
            } 
            package  'Logical Functions' {
                @PackageMeta {
                    type = "LogicalFunctionPkg";
                } 
                @CapellaID { eid = "7ecf70d7-30eb-4ff7-a3e5-0b6816de7f02"; } 
                action 'Root Logical Function' : LogicalFunction  { 
                    @CapellaID { eid = "df169f80-c262-4620-bb93-3b2237c40b6a"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    interface '8a55efbe-f001-4bbc-a1b8-d5ae0a00ad8d' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Heat Influence'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment'.'FIP 1' { 
                        @CapellaID { eid = "8a55efbe-f001-4bbc-a1b8-d5ae0a00ad8d"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat"; 
                         
                    }  
                    interface '05f37f9e-02be-4719-9d35-1dbb20048e68' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'FIP 1' { 
                        @CapellaID { eid = "05f37f9e-02be-4719-9d35-1dbb20048e68"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Temp"; 
                         
                    }  
                    interface '368ef63a-3091-459d-b616-48f29a52a3d1' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Monitor Alerts'.'FIP 1' { 
                        @CapellaID { eid = "368ef63a-3091-459d-b616-48f29a52a3d1"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Alerts"; 
                         
                    }  
                    action 'Monitor Alerts' : LogicalFunction  { 
                        @CapellaID { eid = "2ec3b039-dd87-446e-ab46-0aa580896ffc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "7cf00662-f80e-42a3-be9b-025012d22151"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Monitor Alerts'.'FIP 1'); 
                         
                    }  
                    action 'Detect Temperature Anomolies' : LogicalFunction  { 
                        @CapellaID { eid = "55c054c7-3ffc-42f9-8810-4a3ccb27311d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        interface 'e732050b-f4ad-43dc-973d-dac9c472326b' : FunctionalExchange 
                            connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'FOP 1'
                            to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'FIP 1' { 
                            @CapellaID { eid = "e732050b-f4ad-43dc-973d-dac9c472326b"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Lora Message"; 
                        }  
                        interface '1bfb12a5-6a67-4f71-afa8-d21b87ded632' : FunctionalExchange 
                            connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'FOP 1'
                            to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'FIP 1' { 
                            @CapellaID { eid = "1bfb12a5-6a67-4f71-afa8-d21b87ded632"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Lora Message"; 
                        }  
                        action 'Convert Temp to Lora Message' : LogicalFunction  { 
                            @CapellaID { eid = "e5bc4fb5-0cd0-4ff6-af4a-a90c3cddf562"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "a6bc809c-af82-4dea-a896-2a23b3a987a8"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "78b39333-62ed-4316-8c06-e3167fd000c5"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'FOP 1'); 
                            ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'FIP 1'); 
                        }  
                        action 'Deliver Lora Message to Integration' : LogicalFunction  { 
                            @CapellaID { eid = "6697bcf5-d87d-4e52-bddb-cc33e33d358d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "7bd011a0-8035-4ad6-972f-9ffdfc51d73b"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "fa6ee0f7-1573-4225-b222-ec2dca5d3cbd"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'FOP 1'); 
                            ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'FIP 1'); 
                        }  
                        action 'Generate Alerts for Users' : LogicalFunction  { 
                            @CapellaID { eid = "707a8b26-d9d8-4eff-86d3-919d551d6ec5"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "1bfe3213-c3e6-47ee-91c2-54ff43829cd1"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "cb062b02-0d66-48bd-8e83-9aadca6d6fb0"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'FOP 1'); 
                            ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'FIP 1'); 
                        }  
                        ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'e732050b-f4ad-43dc-973d-dac9c472326b',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'1bfb12a5-6a67-4f71-afa8-d21b87ded632'); 
                         
                        ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'); 
                    }  
                    action 'Transfered from Environment' : LogicalFunction  { 
                        @CapellaID { eid = "88f9df11-ccc4-4c4e-b3fe-a0d9b9f3bded"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "6dcc2e7e-da2d-47a1-8a46-070ff49afd27"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "3f9de36d-6ef8-4f32-83ed-dadb62017886"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment'.'FOP 1'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment'.'FIP 1'); 
                         
                    }  
                    action 'Heat Influence' : LogicalFunction  { 
                        @CapellaID { eid = "0373c0e0-7d5d-456d-8e03-c0ca5729df68"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "b3b83722-bb55-46a5-9fc8-f99b2aee8f2b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Heat Influence'.'FOP 1'); 
                         
                    }  
                    ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'8a55efbe-f001-4bbc-a1b8-d5ae0a00ad8d',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'05f37f9e-02be-4719-9d35-1dbb20048e68',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'368ef63a-3091-459d-b616-48f29a52a3d1'); 
                     
                    ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Monitor Alerts',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Heat Influence'); 
                }  
            } 
            package  'Structure' {
                @PackageMeta {
                    type = "LogicalComponentPkg";
                } 
                @CapellaID { eid = "588856b8-e505-4d66-99ab-553025f50e57"; } 
                part 'HI IOT System' : LogicalComponent { 
                    @CapellaID { eid = "b102ce38-4760-430c-ae69-ae050c04ec5d"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    part 'Helium Network' : LogicalComponent { 
                        @CapellaID { eid = "d0c39011-81c2-4e66-a424-f2429028dfdf"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        allocation 'b0150f28-6479-491a-8faa-32099853efe1' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Helium Network';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Helium Network'.'b0150f28-6479-491a-8faa-32099853efe1'); 
                    }  
                    part 'Cloud Applications' : LogicalComponent { 
                        @CapellaID { eid = "178e3037-2f33-47a7-9a50-20a402dcef6b"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        allocation 'f6b06e55-c426-4f6c-8527-1161a7906fb9' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Cloud Applications';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Cloud Applications'.'f6b06e55-c426-4f6c-8527-1161a7906fb9'); 
                    }  
                    part 'Lora Devices' : LogicalComponent { 
                        @CapellaID { eid = "d44211c3-dfda-47c6-bcb1-0beaccd51a04"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        allocation '7b1b7569-2041-4644-96ce-fa6482d77d6c' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Lora Devices';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Lora Devices'.'7b1b7569-2041-4644-96ce-fa6482d77d6c'); 
                    }  
                    part 'Facilities' : LogicalComponent { 
                        @CapellaID { eid = "860cd8dd-55c7-48eb-a5b0-0c86f594e310"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        allocation 'dca603b5-7efa-4c28-8a84-d978cce72211' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Facilities';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Transfered from Environment' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Facilities'.'dca603b5-7efa-4c28-8a84-d978cce72211'); 
                    }  
                     
                     
                    ref :>> ownedLogicalComponents =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Helium Network',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Cloud Applications',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Lora Devices',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'HI IOT System'.'Facilities'); 
                }  
                part 'Business or Campus Staff' : LogicalComponent { 
                    @CapellaID { eid = "7eedb89a-def1-4650-8111-9916b785039f"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    allocation '9ed8d284-901f-4c77-af7e-7c46abb26a0f' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Monitor Alerts'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'Business or Campus Staff';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Monitor Alerts' ; 
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'Business or Campus Staff'.'9ed8d284-901f-4c77-af7e-7c46abb26a0f'); 
                     
                     
                }  
                part 'Environment' : LogicalComponent { 
                    @CapellaID { eid = "8914358b-a30b-4053-a5ff-8158936c7fd0"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    allocation 'b3883d93-dce9-416f-a45a-9f23614b39c2' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Heat Influence'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'Environment';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Heat Influence' ; 
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Logical Architecture'::'Structure'::'Environment'.'b3883d93-dce9-416f-a45a-9f23614b39c2'); 
                     
                     
                }  
            } 
        } 
        package  'Physical Architecture' {
            @PackageMeta {
                type = "PhysicalArchitecture";
            } 
            @CapellaID { eid = "5698b61f-366b-41fd-b43c-adee0df6effe"; } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "abb70f2b-44ee-4964-94f2-116380c5408e"; } 
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "7395f543-017a-4664-a7f0-bcad3fe0ac0d"; } 
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "5bab9a1f-93e8-4ceb-91d5-b15367ee6a5c"; } 
            } 
            package  'Structure' {
                @PackageMeta {
                    type = "PhysicalComponentPkg";
                } 
                @CapellaID { eid = "8c94ba7c-514c-4c54-a960-670031301abb"; } 
                part 'Physical System' : PhysicalComponent { 
                    @CapellaID { eid = "a144db07-6a8c-40ba-86e6-321f8640a0e3"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::UNSET; 
                    part 'PC' : PhysicalComponent { 
                        @CapellaID { eid = "55c41ae6-4179-4508-98b2-75d0b3c9070a"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "ae1e0dee-1ab6-49a5-92e9-c141547f9825"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '262c4a53-9df6-4e0e-8345-f2468367bd2a' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 1'; 
                            ref allocation '337a0745-39b8-40ae-9e59-6ef76934ef96' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 2'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 1'.'262c4a53-9df6-4e0e-8345-f2468367bd2a',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 1'.'337a0745-39b8-40ae-9e59-6ef76934ef96'); 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "18be9518-2ba1-44b8-b0ed-0b7aa0bc2c1b"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        allocation '1c93882c-ca71-415d-8825-912707232ec4' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'; 
                    }  
                    part 'Helium Network' : PhysicalComponent { 
                        @CapellaID { eid = "6f29ce21-bef0-4c4b-a075-d31e550f5d8f"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                         
                    }  
                    part 'Helium Console' : PhysicalComponent { 
                        @CapellaID { eid = "d0c9b2f6-3b18-47cf-a798-2b9203ad79d8"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '3fa62a4b-271e-404a-a1c7-92ca029457b5' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations' ; 
                        allocation '05c6429c-3b35-4f3f-a293-1ed7ab6eaf50' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts' ; 
                        allocation '55b3f2d7-f436-4b68-a080-3b9470cba48a' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9' ; 
                        port 'CP 1' : ComponentPort { 
                            @CapellaID { eid = "c71ab910-9621-45c2-8e5b-7e2f4b116795"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'CP 2' : ComponentPort { 
                            @CapellaID { eid = "653f0ece-f696-48ad-b6ec-9aeeec69183d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isUnique = false; 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'3fa62a4b-271e-404a-a1c7-92ca029457b5',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'05c6429c-3b35-4f3f-a293-1ed7ab6eaf50',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'55b3f2d7-f436-4b68-a080-3b9470cba48a'); 
                         
                    }  
                    part 'Lora Devices' : PhysicalComponent { 
                        @CapellaID { eid = "b6ad0875-ed4d-4370-adb5-f17b9336ae21"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '67716743-b26b-4cfb-b2d0-eef54bcfa2db' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Lora Devices';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Lora Devices'.'67716743-b26b-4cfb-b2d0-eef54bcfa2db'); 
                         
                         
                    }  
                    part 'Facilities' : PhysicalComponent { 
                        @CapellaID { eid = "dda7f179-f9f5-47ff-9ae2-30c3095389c7"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '359920c6-590d-439c-b3df-ceb0998b0d57' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Facilities';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment' ; 
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Facilities'.'359920c6-590d-439c-b3df-ceb0998b0d57'); 
                         
                         
                    }  
                    part 'Cloud' : PhysicalComponent { 
                        @CapellaID { eid = "d8712c26-7c03-48be-b40a-4836e79e7476"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "02499f28-e6d3-4310-bfd4-c3adca964bb8"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '14caa6db-2b1b-4c00-8e65-662ff41f85f5' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'CP 1'; 
                            ref allocation 'f5d39869-02f1-41b8-8f5a-c46e7c2b950f' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'CP 1'; 
                            ref allocation 'c0e0ae31-6594-4ac5-b0a6-6a4638aff500' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'CP 2'; 
                            ref allocation 'a065d452-8876-468b-a31d-6886ec682b0a' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'Email out'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'.'14caa6db-2b1b-4c00-8e65-662ff41f85f5',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'.'f5d39869-02f1-41b8-8f5a-c46e7c2b950f',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'.'c0e0ae31-6594-4ac5-b0a6-6a4638aff500',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'.'a065d452-8876-468b-a31d-6886ec682b0a'); 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "d61a51a1-0253-4fa0-bbee-3f9922ad04e5"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '516efb8e-72f4-4812-aba6-e2ebabe4b65f' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 2'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'Text Out'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 2'.'516efb8e-72f4-4812-aba6-e2ebabe4b65f'); 
                        }  
                        allocation '5993b206-7ab1-4528-acf5-41e00bbab73b' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'; 
                        allocation 'c4ddc3ea-b216-405d-891a-791a3e25b370' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'; 
                        allocation '3c3515d3-158a-4dbc-98f5-861128637c41' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'; 
                        allocation '4b5b7a9f-7a13-49e7-91cb-cb2257bfb051' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps'; 
                    }  
                    part 'LORAWAN Gateway' : PhysicalComponent { 
                        @CapellaID { eid = "86128d76-8808-4551-96de-e3916c77d56e"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'To LORA Nodes' : PhysicalPort { 
                            @CapellaID { eid = "3abd7d02-9646-47a4-a529-073ff50d3da9"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'c7c1b104-0630-4fd8-86de-7e7eddaa2a32' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To LORA Nodes'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'From LORAWAN Sensors'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To LORA Nodes'.'c7c1b104-0630-4fd8-86de-7e7eddaa2a32'); 
                        }  
                        port 'To CAT 5' : PhysicalPort { 
                            @CapellaID { eid = "59891c46-691b-4107-bd57-b587fa9ef579"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '9e2ddb09-bb7a-4162-bd39-6085f56e5c2b' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To CAT 5'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'To Cloud Console'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To CAT 5'.'9e2ddb09-bb7a-4162-bd39-6085f56e5c2b'); 
                        }  
                        port 'To WIFI' : PhysicalPort { 
                            @CapellaID { eid = "ffbcef51-964b-41b5-a458-86c13ed5e723"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'a923d11a-4762-43e2-824c-fc4ed8be6ea9' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To WIFI'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'To Cloud Console'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To WIFI'.'a923d11a-4762-43e2-824c-fc4ed8be6ea9'); 
                        }  
                        allocation '2fc01f20-797d-4414-9411-62489e83240b' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'; 
                    }  
                    part 'Router' : PhysicalComponent { 
                        @CapellaID { eid = "19cce5a1-b789-4826-971b-daf0a070e6b4"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'TO LORA CAT5' : PhysicalPort { 
                            @CapellaID { eid = "cebd117d-20a1-42ef-9cd1-8eef0c39ddc3"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'TO MODEM' : PhysicalPort { 
                            @CapellaID { eid = "31a304a5-bfbf-4586-9c53-34dceb8f78fa"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'To Local Network CAT 5' : PhysicalPort { 
                            @CapellaID { eid = "6a719737-b53d-445f-a7b4-dc36a9da82b9"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'To WIFI LORA' : PhysicalPort { 
                            @CapellaID { eid = "094fa1a0-518c-4880-ad97-853ef7eaa7e2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'To WIFI Network' : PhysicalPort { 
                            @CapellaID { eid = "79500aa7-83da-4af5-ad30-87c593822d4a"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'Modem' : PhysicalComponent { 
                        @CapellaID { eid = "f4a58c00-ce33-4d77-976c-fbd4010d8824"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'To Router' : PhysicalPort { 
                            @CapellaID { eid = "357a4699-694e-49c1-a849-6d2947b87f5f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'To ISP' : PhysicalPort { 
                            @CapellaID { eid = "b2c388b3-e398-4a45-bf64-b9463c731ed1"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'ISP' : PhysicalComponent { 
                        @CapellaID { eid = "dd1dae04-1fa5-457e-8c58-2c4badb655d8"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'To Modem' : PhysicalPort { 
                            @CapellaID { eid = "df24173f-878a-4a7b-8040-24c4486ec4d5"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'To Cloud' : PhysicalPort { 
                            @CapellaID { eid = "2035f8b8-13cd-406b-9b42-57fc66a0e1d7"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'LHT 65 Software' : PhysicalComponent { 
                        @CapellaID { eid = "482a0fc0-c9fc-4a44-b9fe-fddbaadffba7"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '1f4d70f8-41e6-41a7-b154-fd004a7822e8' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Software';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity' ; 
                        port 'CP 1' : ComponentPort { 
                            @CapellaID { eid = "2ec67399-60fe-4daa-8436-853500d1fc64"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Software'.'1f4d70f8-41e6-41a7-b154-fd004a7822e8'); 
                    }  
                    part 'LHT 65 Hardware' : PhysicalComponent { 
                        @CapellaID { eid = "14e356fb-6d42-4abe-be5e-eaed8c674f8b"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '0cf551f3-c6b7-4e32-8abe-1b5b05c2a1be' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical ' ; 
                        allocation '3af3081d-8f14-4917-a78f-600a3395f826' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical' ; 
                        allocation '552bc5c0-872b-4837-81ac-c869e6a3d22c' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan' ; 
                        port 'LHT In' : ComponentPort { 
                            @CapellaID { eid = "1e5707c0-cefe-49e0-bcfc-c64c1c3f0cd9"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '92bc7fe2-9573-4196-9198-2fe0eab68e6c' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'.'Hum Sig In'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LHT In'; 
                            ref allocation 'c08092a5-c036-4a31-b20f-3a7ec4c7b422' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '.'Temp Sig In'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LHT In'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LHT In'.'92bc7fe2-9573-4196-9198-2fe0eab68e6c',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LHT In'.'c08092a5-c036-4a31-b20f-3a7ec4c7b422'); 
                        }  
                        port 'LORA Out' : ComponentPort { 
                            @CapellaID { eid = "1bbbcdfe-cb53-4086-a4eb-a98d9e76e0e2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation 'f5b0a52b-e4a5-4cde-9aaa-6d915e4598f8' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora Downlink'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'; 
                            ref allocation '5dcb34e9-8922-451f-b0aa-d17a4cd0765b' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora UpLink'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'.'f5b0a52b-e4a5-4cde-9aaa-6d915e4598f8',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'.'5dcb34e9-8922-451f-b0aa-d17a4cd0765b'); 
                        }  
                        port 'CP 3' : ComponentPort { 
                            @CapellaID { eid = "b09d54fe-362d-4e76-9170-aaf55c348cfd"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'0cf551f3-c6b7-4e32-8abe-1b5b05c2a1be',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'3af3081d-8f14-4917-a78f-600a3395f826',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'552bc5c0-872b-4837-81ac-c869e6a3d22c'); 
                    }  
                    part 'Browser' : PhysicalComponent { 
                        @CapellaID { eid = "774eab10-5260-403f-b54d-4b01643aef92"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '280b825d-7c4b-46df-b610-8d76513da8e1' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data' ; 
                        port 'CP 1' : ComponentPort { 
                            @CapellaID { eid = "8b1d55af-0d5b-4b0e-a9c9-a60598ce4a9f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'CP 2' : ComponentPort { 
                            @CapellaID { eid = "3637b844-0659-4b4f-b93c-1a2160a4c7da"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '1fb6ebf0-e924-4361-bc2b-73929792adad' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'.'FIP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 2'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 2'.'1fb6ebf0-e924-4361-bc2b-73929792adad'); 
                        }  
                        port 'CP 3' : ComponentPort { 
                            @CapellaID { eid = "6977d7b0-0961-417e-867f-3b934334cfb8"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'280b825d-7c4b-46df-b610-8d76513da8e1'); 
                    }  
                    part 'Cayenne' : PhysicalComponent { 
                        @CapellaID { eid = "12cfcffd-3d6d-4b67-a72c-941115a8eca6"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '4a4948ad-36a8-4bfe-b928-bd7a3b02badb' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts' ; 
                        allocation '12355ede-c7ed-4a2e-b607-1fdd8972d42b' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data' ; 
                        allocation 'd229db1f-e4c4-48d4-8703-b28f1e0f9be8' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7' ; 
                        port 'CP 1' : ComponentPort { 
                            @CapellaID { eid = "0a3e5cd2-0307-44cb-81d7-f85c822d1cc7"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '3549a1e3-e7ae-4e7c-9721-ac5b83e99708' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'.'FOP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'CP 1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'CP 1'.'3549a1e3-e7ae-4e7c-9721-ac5b83e99708'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'4a4948ad-36a8-4bfe-b928-bd7a3b02badb',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'12355ede-c7ed-4a2e-b607-1fdd8972d42b',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'d229db1f-e4c4-48d4-8703-b28f1e0f9be8'); 
                    }  
                    part 'Helium RS Connect' : PhysicalComponent { 
                        @CapellaID { eid = "5367046e-1e41-44e3-b4a3-b406ebfcf5cd"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation 'cc4d4c75-20e8-495e-b2c6-c44428629d5a' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data' ; 
                        allocation 'ed4ef0a5-138e-4872-9743-cb9977fe14c4' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data' ; 
                        port 'To Cloud Console' : ComponentPort { 
                            @CapellaID { eid = "97254720-8668-4aca-914c-d921a5dd51f5"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'From LORAWAN Sensors' : ComponentPort { 
                            @CapellaID { eid = "5f98ce53-801b-4f94-ad3c-3891c5db7e4b"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'cc4d4c75-20e8-495e-b2c6-c44428629d5a',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'ed4ef0a5-138e-4872-9743-cb9977fe14c4'); 
                    }  
                    part 'LHT 65' : PhysicalComponent { 
                        @CapellaID { eid = "84172988-a61e-465f-a0b8-81506202a502"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'LORA Out' : PhysicalPort { 
                            @CapellaID { eid = "f5b66da8-7d9a-4cd9-a435-70429437e887"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '7e9ea97d-e4c4-46fe-b4de-77683bf364d6' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LORA Out'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LORA Out'.'7e9ea97d-e4c4-46fe-b4de-77683bf364d6'); 
                        }  
                        port 'LHT In' : PhysicalPort { 
                            @CapellaID { eid = "41f1e23f-406b-4ed8-aeab-4325b5e6fa7e"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '16ac59b9-19a4-461d-87e7-3bf6806f0329' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LHT In'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LHT In'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LHT In'.'16ac59b9-19a4-461d-87e7-3bf6806f0329'); 
                        }  
                        allocation '734c8941-54c9-4f57-94f1-0ccca9b3f69a' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'; 
                        allocation '495aa111-2230-4be0-9eda-3855b18ae05b' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Software'; 
                    }  
                    part 'Text Device' : PhysicalComponent { 
                        @CapellaID { eid = "881a8aeb-ee8e-471a-88b8-9875a64e1642"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "df7662a9-0c81-429d-a0bd-759b06e5cdde"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "be866258-6ca5-41d9-88d6-6b851e12e5c8"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'Email Device' : PhysicalComponent { 
                        @CapellaID { eid = "443f79d4-355d-4c09-9e95-8bb973713692"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "ea680295-c26e-40ba-9830-7db5a0e8300e"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "2c75a40e-be02-40b2-8f7a-cbf80091407e"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'Cell Network' : PhysicalComponent { 
                        @CapellaID { eid = "2b6eb632-62aa-4682-bdad-8fa8aa21d319"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'PP 1' : PhysicalPort { 
                            @CapellaID { eid = "ba3e1d40-31a5-4ad8-9138-423c70116ec0"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'PP 2' : PhysicalPort { 
                            @CapellaID { eid = "947838f4-c7db-45d2-980e-511dba4779f2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    part 'Services' : PhysicalComponent { 
                        @CapellaID { eid = "6980bff0-f553-4a34-a1e5-77cbcc141d68"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '2545241d-524b-4b5b-92dc-db540b3b2a88' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Email'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Email' ; 
                        allocation 'bacf5359-353c-45a1-8a5d-6239de17f822' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook' ; 
                        allocation 'ac6dbac2-a39d-4d24-a779-5d2bb6be3e46' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Text'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Text' ; 
                        port 'Text Out' : ComponentPort { 
                            @CapellaID { eid = "c8b037c9-9b5a-4b64-8787-c76beeda1e0e"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'Email out' : ComponentPort { 
                            @CapellaID { eid = "7ae47164-ba75-41b2-b389-1fbe4478131d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'CP 3' : ComponentPort { 
                            @CapellaID { eid = "98a28e9e-84df-4a81-a82d-c4f81a314209"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation 'b360871d-c005-4816-ad6f-9053ccdc3501' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'.'FOP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'CP 3'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'CP 3'.'b360871d-c005-4816-ad6f-9053ccdc3501'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'2545241d-524b-4b5b-92dc-db540b3b2a88',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'bacf5359-353c-45a1-8a5d-6239de17f822',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'ac6dbac2-a39d-4d24-a779-5d2bb6be3e46'); 
                    }  
                    part 'Misc Apps' : PhysicalComponent { 
                        @CapellaID { eid = "997f2797-ff3e-4370-9304-b016e30eaf0d"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation 'ee563b86-91cc-4214-9774-cccfca1ef300' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function' ; 
                        port 'CP 1' : ComponentPort { 
                            @CapellaID { eid = "fb347ea9-5191-431d-8a43-e58eca3ebf2a"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '983207da-d6a9-4484-99c8-fe1560f8a2ba' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function'.'FIP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps'.'CP 1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps'.'CP 1'.'983207da-d6a9-4484-99c8-fe1560f8a2ba'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps'.'ee563b86-91cc-4214-9774-cccfca1ef300'); 
                    }  
                    part 'HTCC-AB02S' : PhysicalComponent { 
                        doc /*
                        <h2 class="iyProductsTitle" style="background: url(&quot;../images/title-line.png&quot;) repeat-x 0px 100%; margin: 0px 0px 20px; padding: 14px 0px 6px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 24px; font-style: normal; font-weight: bold; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">LoRaWAN GPS Tracker with 9-axis accelerometer-LGT92</h2>

                        <h2 class="iyProductsTitle" style="background: url(&quot;../images/title-line.png&quot;) repeat-x 0px 100%; margin: 0px 0px 20px; padding: 14px 0px 6px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 24px; font-style: normal; font-weight: bold; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><a href="https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html">https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html</a></h2>

                        <div class="iyProductsProfile clearfix" style="margin: 0px; padding: 0px 0px 10px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; display: block; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        <div class="iyProductsGallery" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; width: 300px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; float: left; font-stretch: inherit;">
                        <div class="sigProContainer sigProGalleriaContainer" id="sigProGalleria4cf136aec9" style="background: none; margin: 8px 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; clear: both; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">
                        <div class="sigProGalleriaPlaceholderContainer" style="background: url(&quot;../images/loader.gif&quot;) no-repeat 50% 50%; margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">
                        <div class="sigProGalleriaPlaceholder" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><a class="sigProGalleriaTargetLink" href="https://www.dragino.com/media/k2/galleries/142/LGT-92-20.jpg" rel="lightbox[gallery4cf136aec9]" style="margin: 0px; padding: 5px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; display: block; cursor: pointer; font-stretch: inherit;" target="_blank" title="&lt;b&gt;Navigation tip:&lt;/b&gt; Hover mouse on top of the right or left side of the image to see the next or previous image respectively.&lt;br /&gt;&lt;br /&gt;You are browsing images from the article:&lt;br /&gt;&lt;span class=&quot;sigProPopupCaption&quot;&gt;LoRaWAN GPS Tracker with 9-axis accelerometer-LGT92&lt;/span&gt;"><img alt="Click to enlarge image LGT-92-20.jpg" class="sigProGalleriaTargetImg" src="https://www.dragino.com/media/k2/galleries/142/LGT-92-20.jpg" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; width: 290px; height: auto; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit;" title="Click to enlarge image LGT-92-20.jpg" /></a>

                        <p class="sigProGalleriaTargetTitle" style="background: rgb(255, 255, 255); margin: 0px; padding: 4px 20px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 51); line-height: inherit; font-family: Georgia, &quot;Times New Roman&quot;, Times, serif; font-size: 14px; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit;">Click to open image!</p>
                        </div>
                        </div>

                        <ul class="sigProGalleria sigProGalleria clearfix" id="sigProId4cf136aec9" style="list-style: none; margin: 0px auto !important; padding: 2px 0px 6px !important; border: 0px currentColor; border-image: none; line-height: inherit; overflow: hidden; clear: both; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit;">
                        	<li class="sigProThumb" style="background: none !important; margin: 0px 2px 2px 0px; padding: 0px; border: currentColor !important; border-image: none !important; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; float: left; font-stretch: inherit;"><span class="sigProLinkOuterWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span class="sigProLinkWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><a class="sigProGalleriaLink sigProLink sigProLinkSelected" href="https://www.dragino.com/media/k2/galleries/142/LGT-92-20.jpg" style="margin: 0px; padding: 0px; border: 4px solid rgb(171, 222, 249); border-image: none; width: 56px; height: 42px; color: rgb(51, 51, 51); line-height: inherit; overflow: hidden; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; display: block; position: relative; cursor: pointer; font-stretch: inherit; background-color: rgb(238, 238, 238);" target="_blank" title="&lt;b&gt;Navigation tip:&lt;/b&gt; Hover mouse on top of the right or left side of the image to see the next or previous image respectively.&lt;br /&gt;&lt;br /&gt;You are browsing images from the article:&lt;br /&gt;&lt;span class=&quot;sigProPopupCaption&quot;&gt;LoRaWAN GPS Tracker with 9-axis accelerometer-LGT92&lt;/span&gt;"><img alt="Click to enlarge image LGT-92-20.jpg" class="sigProImg" src="https://www.dragino.com/plugins/content/jw_sigpro/jw_sigpro/includes/images/transparent.gif" style="background-position: 50% 50%; margin: 0px; padding: 0px; border: currentColor; border-image: none; width: 56px; height: 42px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit; background-image: url(&quot;/cache/jw_sigpro/jwsigpro_cache_4cf136aec9_lgt-92-20.jpg&quot;); background-repeat: no-repeat;" title="Click to enlarge image LGT-92-20.jpg" /></a></span></span></li>
                        	<li class="sigProThumb" style="background: none !important; margin: 0px 2px 2px 0px; padding: 0px; border: currentColor !important; border-image: none !important; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; float: left; font-stretch: inherit;"><span class="sigProLinkOuterWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span class="sigProLinkWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><a class="sigProGalleriaLink sigProLink" href="https://www.dragino.com/media/k2/galleries/142/LGT-92_00.JPG" style="margin: 0px; padding: 0px; border: 4px solid rgb(238, 238, 238); border-image: none; width: 56px; height: 42px; color: rgb(51, 51, 51); line-height: inherit; overflow: hidden; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; display: block; position: relative; cursor: pointer; font-stretch: inherit; background-color: rgb(238, 238, 238);" target="_blank" title="&lt;b&gt;Navigation tip:&lt;/b&gt; Hover mouse on top of the right or left side of the image to see the next or previous image respectively.&lt;br /&gt;&lt;br /&gt;You are browsing images from the article:&lt;br /&gt;&lt;span class=&quot;sigProPopupCaption&quot;&gt;LoRaWAN GPS Tracker with 9-axis accelerometer-LGT92&lt;/span&gt;"><img alt="Click to enlarge image LGT-92_00.JPG" class="sigProImg" src="https://www.dragino.com/plugins/content/jw_sigpro/jw_sigpro/includes/images/transparent.gif" style="background-position: 50% 50%; margin: 0px; padding: 0px; border: currentColor; border-image: none; width: 56px; height: 42px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit; background-image: url(&quot;/cache/jw_sigpro/jwsigpro_cache_4cf136aec9_lgt-92_00.jpg&quot;); background-repeat: no-repeat;" title="Click to enlarge image LGT-92_00.JPG" /></a></span></span></li>
                        	<li class="sigProThumb" style="background: none !important; margin: 0px 2px 2px 0px; padding: 0px; border: currentColor !important; border-image: none !important; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; float: left; font-stretch: inherit;"><span class="sigProLinkOuterWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span class="sigProLinkWrapper" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><a class="sigProGalleriaLink sigProLink" href="https://www.dragino.com/media/k2/galleries/142/LGT-92_10.JPG" style="margin: 0px; padding: 0px; border: 4px solid rgb(238, 238, 238); border-image: none; width: 56px; height: 42px; color: rgb(51, 51, 51); line-height: inherit; overflow: hidden; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; display: block; position: relative; cursor: pointer; font-stretch: inherit; background-color: rgb(238, 238, 238);" target="_blank" title="&lt;b&gt;Navigation tip:&lt;/b&gt; Hover mouse on top of the right or left side of the image to see the next or previous image respectively.&lt;br /&gt;&lt;br /&gt;You are browsing images from the article:&lt;br /&gt;&lt;span class=&quot;sigProPopupCaption&quot;&gt;LoRaWAN GPS Tracker with 9-axis accelerometer-LGT92&lt;/span&gt;"><img alt="Click to enlarge image LGT-92_10.JPG" class="sigProImg" src="https://www.dragino.com/plugins/content/jw_sigpro/jw_sigpro/includes/images/transparent.gif" style="background-position: 50% 50%; margin: 0px; padding: 0px; border: currentColor; border-image: none; width: 56px; height: 42px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit; background-image: url(&quot;/cache/jw_sigpro/jwsigpro_cache_4cf136aec9_lgt-92_10.jpg&quot;); background-repeat: no-repeat;" title="Click to enlarge image LGT-92_10.JPG" /></a></span></span></li>
                        </ul>
                        </div>
                        </div>

                        <div class="iyProductsText" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; width: 380px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; float: right; font-stretch: inherit;">
                        <div class="itemFullText" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">
                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">The Dragino LoRaWAN GPS Tracker LGT-92 is an<span>&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">open source</strong></span><span>&nbsp;</span>GPS tracker base on Ultra Low Power STM32L072 MCU and SX1276/1278 LoRa Module.</p>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92 includes a<span>&nbsp;</span><strong style="font-weight: bold;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">low power GPS module L76-L</span></strong><span>&nbsp;</span>and<span>&nbsp;</span><strong style="font-weight: bold;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">9-axis accelerometer</span></strong><span>&nbsp;</span>for motion and attitude detection. The power for both of the GPS module and accelerometer can be controlled by MCU to achieve the best energy profile for different applications.</p>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">The LoRa wireless technology used in LGT-92 allows the user to send data and reach extremely long ranges at low data-rates.It provides ultra-long range spread spectrum communication and high interference immunity whilst minimising current consumption.It targets professional tracking service.</p>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.16px; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92 series products include two major variants:</span></p>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; list-style-type: disc; font-stretch: inherit;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">LGT-92-LI</strong></span>: is powered by<span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;"><span>&nbsp;</span>1000mA rechargeable</strong></span><span>&nbsp;</span>Li-on battery and charge circuit, which target for real time tracking with short tracking uplink.</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 255); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">LGT-92-AA</strong></span>: Disable the charge circuit to get the lowest power consumption and power directly by AA batteries. This is designed for asset tracking where only need to uplink a few times every day.</li>
                        </ul>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92 is an open source product, it is based on the STM32Cube HAL drivers and lots of libraries can be found in ST site for rapid development.</p>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">&nbsp;</p>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">&nbsp;</p>

                        <h3 style="margin: 1em 0px 0.5em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); text-transform: none; line-height: 1.2; text-indent: 0px; letter-spacing: normal; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 1.5em; font-style: normal; font-weight: bold; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 102, 255); line-height: 1.3em; font-family: arial, helvetica, sans-serif; font-size: x-large; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Specification:</span></h3>

                        <h3 style="margin: 1em 0px 0.5em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); text-transform: none; line-height: 1.2; text-indent: 0px; letter-spacing: normal; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 1.5em; font-style: normal; font-weight: bold; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">System:</h3>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; list-style-type: disc; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">STM32L072CZT6&nbsp;</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Flash:192KB</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">RAM:20KB</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">EEPROM:6KB</li>
                        </ul>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 153); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">GPS,L76-L:</strong></span></p>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; list-style-type: disc; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Acquisition: 16mA</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Tracking: 13mA</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Cold Start: &lt;35s</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">8uA@Backup Mode</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Warm Start: &lt;30s</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Accuracy: &lt; 2.5m CEP</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">ReHot Start: &lt;1s</li>
                        </ul>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 153); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">Accelerometer:</strong></span></p>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; list-style-type: disc; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">MPU9250 9-axis</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">triple-axis MEMS gyroscope</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">triple-axis MEMS accelerometer</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">triple-axis MEMS magnetometer</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">3.5mA operating current</li>
                        </ul>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(51, 51, 153); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><strong style="font-weight: bold;">Power Comsuption:</strong></span></p>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; list-style-type: disc; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Sleeping Mode: 77uA&nbsp;<span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">&nbsp;(for&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92-LI),&nbsp;<span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">&nbsp;3uA (for&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92-AA)</span></span></li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Tracking: max: 38mA</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LoRa Transmit: 24 ~ 150mA</li>
                        </ul>
                        </div>
                        </div>
                        </div>

                        <div class="iyProductsPara" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); text-transform: none; line-height: inherit; text-indent: 0px; letter-spacing: normal; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: 12.8px; font-style: normal; font-weight: 400; word-spacing: 0px; vertical-align: baseline; white-space: normal; orphans: 2; widows: 2; font-stretch: inherit; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-numeric: inherit; font-variant-east-asian: inherit; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        <div class="iyProductsContent" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">
                        <ul class="shadetabs" id="countrytabs" style="font: bold 14px/normal Verdana; margin: 1px 1.5em 0px 0px; padding: 3px 0px; border: 0px currentColor; border-image: none; text-align: left; vertical-align: baseline; list-style-type: none; font-size-adjust: none; font-stretch: normal;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: inline; font-stretch: inherit;"><a class="selected" href="https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html#" rel="country1" style="background: url(&quot;shadeactive.gif&quot;) repeat-x left top white; border-width: 1px; border-style: solid; border-color: rgb(229, 230, 231) rgb(229, 230, 231) white; margin: 0px 3px 0px 0px; padding: 3px 12px; top: 1px; color: rgb(45, 43, 43); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; position: relative; z-index: 1; cursor: pointer; font-stretch: inherit;">Features</a></li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: inline; font-stretch: inherit;"><a href="https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html#" rel="country2" style="background: url(&quot;shade.gif&quot;) repeat-x left top white; margin: 0px 3px 0px 0px; padding: 3px 12px; border: 1px solid rgb(229, 230, 231); border-image: none; color: rgb(45, 43, 43); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; position: relative; z-index: 1; cursor: pointer; font-stretch: inherit;">Specifications</a></li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: inline; font-stretch: inherit;"><a href="https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html#" rel="country3" style="background: url(&quot;shade.gif&quot;) repeat-x left top white; margin: 0px 3px 0px 0px; padding: 3px 12px; border: 1px solid rgb(229, 230, 231); border-image: none; color: rgb(45, 43, 43); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; position: relative; z-index: 1; cursor: pointer; font-stretch: inherit;">Documents</a></li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: inline; font-stretch: inherit;"><a href="https://www.dragino.com/products/lora-lorawan-end-node/item/142-lgt-92.html#" rel="country4" style="background: url(&quot;shade.gif&quot;) repeat-x left top white; margin: 0px 3px 0px 0px; padding: 3px 12px; border: 1px solid rgb(229, 230, 231); border-image: none; color: rgb(45, 43, 43); line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; text-decoration: none; vertical-align: baseline; position: relative; z-index: 1; cursor: pointer; font-stretch: inherit;">Order Info</a></li>
                        </ul>

                        <div class="iyProductsTabContent" style="margin: 0px 0px 20px; padding: 30px 20px; border: 1px solid rgb(229, 230, 231); border-image: none; width: 658px; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">
                        <div class="tabcontent" id="country1" style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; display: block; font-stretch: inherit;">
                        <h3 style="margin: 1em 0px 0.5em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); line-height: 1.2; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 1.5em; font-style: inherit; font-variant: inherit; font-weight: bold; vertical-align: baseline; font-stretch: inherit;">Features:</h3>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; list-style-type: square; font-stretch: inherit;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LoRaWAN 1.0.3 compliant</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Regular/ Real-time GPS tracking</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Built-in 9 axis accelerometer</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Motion sensing capability</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Power Monitoring</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Charging clip with USB port&nbsp;&nbsp;<span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">(for&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">LGT-92-LI)</span></li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">1000mA Li-on Battery power (for&nbsp;LGT-92-LI)</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">2 x AA battery holder (for model LGT-92-AA)</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Tri-color LED, Alarm button</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Bands: CN470/EU433/KR920/US915/EU868/AS923/AU915</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">AT Commands to change parameters</li>
                        </ul>

                        <p style="margin: 0px 0px 1.2em; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;"><span style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(0, 0, 0); line-height: 19px; font-family: sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">&nbsp;</span></p>

                        <h3 style="margin: 1em 0px 0.5em; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(11, 49, 61); line-height: 1.2; font-family: Georgia, &quot;Times New Roman&quot;, Helvetica, &quot;Microsoft YaHei&quot;, Times, serif; font-size: 1.5em; font-style: inherit; font-variant: inherit; font-weight: bold; vertical-align: baseline; font-stretch: inherit;">Applications:</h3>

                        <ul style="margin: 0px 1.5em 1.5em 0px; padding: 0px 0px 0px 1.5em; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; list-style-type: disc; font-stretch: inherit;">
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Logistics and Supply Chain Management</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Smart Cities</li>
                        	<li style="margin: 0px; padding: 0px; border: 0px currentColor; border-image: none; line-height: inherit; font-family: &quot;Microsoft YaHei&quot;, Helvetica, sans-serif; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; vertical-align: baseline; font-stretch: inherit;">Smart Factory</li>
                        </ul>
                        </div>
                        </div>
                        </div>
                        </div>

                        */ 
                        @CapellaID { eid = "61ae031d-c50e-4ff7-8cdd-7ecee2af3363"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::HARDWARE; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'Visual Out' : PhysicalPort { 
                            @CapellaID { eid = "f1463d59-4e61-4d2b-a31b-710cd2f75091"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '4509f44c-b2e6-4b22-bd1a-4c990b7bb74b' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Visual Out'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LED_1'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Visual Out'.'4509f44c-b2e6-4b22-bd1a-4c990b7bb74b'); 
                        }  
                        port 'Lorawan' : PhysicalPort { 
                            @CapellaID { eid = "144bf156-af65-4cc0-a7bf-33cd1d1f8b98"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '1266f1d6-bca2-4c7f-be27-f23a7181ae05' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Lorawan'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LORA_1'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Lorawan'.'1266f1d6-bca2-4c7f-be27-f23a7181ae05'); 
                        }  
                        port 'USB' : PhysicalPort { 
                            @CapellaID { eid = "5a0ffe4b-10ed-46db-b745-43c384940473"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation 'e158d9e6-774a-4e44-8af1-1055e831e8e5' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'USB'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'Power_1'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'USB'.'e158d9e6-774a-4e44-8af1-1055e831e8e5'); 
                        }  
                        port 'PP 7_1' : PhysicalPort { 
                            @CapellaID { eid = "d1d92257-7a0b-4191-858e-8fcc533e473b"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            ref allocation '9603b1fa-0987-47e9-acf1-39bb9bba6c6f' : ComponentPortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'PP 7_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'GPS In'; 
                            ref :>> ownedComponentPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'PP 7_1'.'9603b1fa-0987-47e9-acf1-39bb9bba6c6f'); 
                        }  
                        allocation '115980a8-ad0c-45c2-8600-185ce2fae08e' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'; 
                        allocation '1c1d933a-a2f9-4b56-b40e-fdb4a74e6fce' : PartDeploymentLink
                            allocate deployed ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'
                            to deploying ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'; 
                    }  
                    part 'HTCC AB02S' : PhysicalComponent { 
                        @CapellaID { eid = "191e8319-29c4-4dd6-9a2a-f445d60cfd8a"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::HARDWARE; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation 'fd57ad72-1424-4747-b2fd-c5a3b61b8367' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery' ; 
                        allocation 'd41a185e-d314-4819-b32d-5a6aea7a5e31' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation' ; 
                        allocation '5f87c5ed-4d32-42dd-a46b-cf69026fb272' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal' ; 
                        allocation '4e645d34-69c2-48db-b93d-3c6a8288c2e2' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN' ; 
                        allocation 'c932bffe-5b17-4259-9aec-bf5f4659cf26' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light' ; 
                        allocation '2010c7e0-01a9-4674-8fc7-91ec3a3a06d7' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display' ; 
                        port 'LED_1' : ComponentPort { 
                            @CapellaID { eid = "c56e90c9-013e-40e2-9ec9-13c13abe1d89"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation 'ce85ad07-9546-4247-8c44-94192b307d12' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'LED Out_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LED_1'; 
                            ref allocation '31b9731c-f789-4d32-8032-722f1ed2414d' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'.'FOP 1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LED_1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LED_1'.'ce85ad07-9546-4247-8c44-94192b307d12',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LED_1'.'31b9731c-f789-4d32-8032-722f1ed2414d'); 
                        }  
                        port 'Power_1' : ComponentPort { 
                            @CapellaID { eid = "6bca507e-6589-4367-9e29-c3867d92c2ae"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'GPS In' : ComponentPort { 
                            @CapellaID { eid = "401e487a-d522-4e29-a1a6-75c05dc3e01c"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '2a9a316b-9df8-4932-9ed5-6b95131a3c03' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'GPS In_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'GPS In'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'GPS In'.'2a9a316b-9df8-4932-9ed5-6b95131a3c03'); 
                        }  
                        port 'CP 7_1' : ComponentPort { 
                            @CapellaID { eid = "f6afb275-4b5d-42fb-9167-26cb5bf7de1b"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '8c3a075d-a130-4cd3-8441-f2fc75c1684c' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'.'FOP 1_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'; 
                            ref allocation '33c1882d-e4a4-4f73-83bd-76ba5f2d8877' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'FIP 1_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'; 
                            ref allocation '0638b4d2-fddc-4c28-bf55-6c923de64e71' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'FOP 1_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'; 
                            ref allocation '07ba73f4-0148-4721-81a6-f29d1b54a05b' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'FIP 1_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'.'8c3a075d-a130-4cd3-8441-f2fc75c1684c',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'.'33c1882d-e4a4-4f73-83bd-76ba5f2d8877',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'.'0638b4d2-fddc-4c28-bf55-6c923de64e71',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'.'07ba73f4-0148-4721-81a6-f29d1b54a05b'); 
                        }  
                        port 'LORA_1' : ComponentPort { 
                            @CapellaID { eid = "536648d2-b338-4c23-9819-12aa2d596dc3"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isUnique = false; 
                            ref allocation 'a533b7f1-b971-4bda-8839-23fd4880c6fd' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN Out_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LORA_1'; 
                            ref allocation 'd7d9b5c0-f93a-4f3c-9386-9430300c78f9' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN In_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LORA_1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LORA_1'.'a533b7f1-b971-4bda-8839-23fd4880c6fd',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'LORA_1'.'d7d9b5c0-f93a-4f3c-9386-9430300c78f9'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'fd57ad72-1424-4747-b2fd-c5a3b61b8367',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'d41a185e-d314-4819-b32d-5a6aea7a5e31',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'5f87c5ed-4d32-42dd-a46b-cf69026fb272',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'4e645d34-69c2-48db-b93d-3c6a8288c2e2',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'c932bffe-5b17-4259-9aec-bf5f4659cf26',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'2010c7e0-01a9-4674-8fc7-91ec3a3a06d7'); 
                    }  
                    part 'Software' : PhysicalComponent { 
                        doc /*
                        <p><a href="https://github.com/dragino/LGT-92_-LoRa_GPS_Tracker">https://github.com/dragino/LGT-92_-LoRa_GPS_Tracker</a></p>

                        <p>&nbsp;</p>

                        */ 
                        @CapellaID { eid = "a9de8401-1526-4447-806a-860595990f06"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::SOFTWARE_APPLICATION; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation 'dac1c069-8875-4a1a-b180-a63895ed9616' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status' ; 
                        allocation '6b64c7a9-bf92-4e6a-a3f9-7018b1e7e9a5' : ComponentFunctionalAllocation
                            allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'
                            to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software';
                        perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status' ; 
                        port 'CP 1_1' : ComponentPort { 
                            @CapellaID { eid = "24feae04-aa7d-44f7-a89f-f90c2c47f3ae"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::INOUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '590e33a6-3697-4121-a2d6-bf97da1afdb4' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 3_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'; 
                            ref allocation 'ff08bef7-3567-4c67-aa13-eaccacc6ea95' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 2_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'; 
                            ref allocation '0ea1295a-c5c2-4a7c-accc-660395b36d4a' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 4_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'; 
                            ref allocation '54210d3d-16b8-4584-aec0-61d8862f4a6d' : PortAllocation
                                allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 1_1'
                                to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'; 
                            ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'.'590e33a6-3697-4121-a2d6-bf97da1afdb4',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'.'ff08bef7-3567-4c67-aa13-eaccacc6ea95',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'.'0ea1295a-c5c2-4a7c-accc-660395b36d4a',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1'.'54210d3d-16b8-4584-aec0-61d8862f4a6d'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'dac1c069-8875-4a1a-b180-a63895ed9616',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'6b64c7a9-bf92-4e6a-a3f9-7018b1e7e9a5'); 
                    }  
                    part 'ISP' : PhysicalComponent { 
                        @CapellaID { eid = "5a8979f3-2079-4107-b6e1-83124309bfb4"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        port 'To Modem' : PhysicalPort { 
                            @CapellaID { eid = "e02b94c3-4dce-431d-972c-e3f485f0fd7d"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'To Cloud' : PhysicalPort { 
                            @CapellaID { eid = "fc1c2108-34a1-4117-b680-3bb4fb286282"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                        }  
                    }  
                    interface '01d9d6bd-8ff2-4b08-b81c-eb53ca0f4d24' : ComponentExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 1'
                        to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'CP 1' { 
                        @CapellaID { eid = "01d9d6bd-8ff2-4b08-b81c-eb53ca0f4d24"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Helium Console"; 
                        attribute :>> isOriented = false; 
                    }  
                    interface '9816146f-21e2-4ce0-b03c-e1e8a1c94652' : ComponentExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 2'
                        to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne'.'CP 1' { 
                        @CapellaID { eid = "9816146f-21e2-4ce0-b03c-e1e8a1c94652"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Cayenne"; 
                        attribute :>> isOriented = false; 
                        allocation '41a3ef6c-ab9c-405e-86a0-a6e3c30e1597' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8e8e9930-1b08-4387-904d-820277fb0f97'
                            to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'9816146f-21e2-4ce0-b03c-e1e8a1c94652'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'9816146f-21e2-4ce0-b03c-e1e8a1c94652'.'41a3ef6c-ab9c-405e-86a0-a6e3c30e1597'); 
                    }  
                    interface '3cee67ff-9c15-4934-9765-3ba582ba24b6' : ComponentExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console'.'CP 2'
                        to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'To Cloud Console' { 
                        @CapellaID { eid = "3cee67ff-9c15-4934-9765-3ba582ba24b6"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "C 3"; 
                        attribute :>> isOriented = false; 
                    }  
                    interface '3aeb8479-b78d-47d2-b567-fec0007a0b43' : ComponentExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'LORA Out'
                        to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect'.'From LORAWAN Sensors' { 
                        @CapellaID { eid = "3aeb8479-b78d-47d2-b567-fec0007a0b43"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "C 4"; 
                        attribute :>> isOriented = false; 
                    }  
                    interface '09ef2a7c-fa20-467f-a01c-bf92e0bbca7e' : ComponentExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'CP 3'
                        to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps'.'CP 1' { 
                        @CapellaID { eid = "09ef2a7c-fa20-467f-a01c-bf92e0bbca7e"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Webhook"; 
                        attribute :>> isOriented = false; 
                        allocation 'd10db3fc-bfd2-4dd1-ba93-f1d5fe4003dd' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5438e077-8d2d-4c77-96ca-8b9188cf2b30'
                            to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'09ef2a7c-fa20-467f-a01c-bf92e0bbca7e'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'09ef2a7c-fa20-467f-a01c-bf92e0bbca7e'.'d10db3fc-bfd2-4dd1-ba93-f1d5fe4003dd'); 
                    }  
                    interface '2fe0fa69-0dad-42e1-9e31-5ea1afa9ca77' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LORA Out'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To LORA Nodes' {
                        @CapellaID { eid = "2fe0fa69-0dad-42e1-9e31-5ea1afa9ca77"; } 
                        attribute :>> interfaceName = "LORAWAN"; 
                         
                    }  
                    interface '485dc158-d2a9-4466-9fa0-26de95f215e8' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router'.'TO MODEM'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Modem'.'To Router' {
                        @CapellaID { eid = "485dc158-d2a9-4466-9fa0-26de95f215e8"; } 
                        attribute :>> interfaceName = "Cat 5"; 
                    }  
                    interface '7b377cdb-4811-4f15-9373-1acbd7fbdc91' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Modem'.'To ISP'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'ISP'.'To Modem' {
                        @CapellaID { eid = "7b377cdb-4811-4f15-9373-1acbd7fbdc91"; } 
                        attribute :>> interfaceName = "Cable"; 
                    }  
                    interface '7ae30ed5-5223-48bb-8c4f-b60b736c1706' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 1'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'ISP'.'To Cloud' {
                        @CapellaID { eid = "7ae30ed5-5223-48bb-8c4f-b60b736c1706"; } 
                        attribute :>> interfaceName = "WAN"; 
                    }  
                    interface 'b4675f2f-18b9-4fcb-9241-3622742bc6c6' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 1'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router'.'To Local Network CAT 5' {
                        @CapellaID { eid = "b4675f2f-18b9-4fcb-9241-3622742bc6c6"; } 
                        attribute :>> interfaceName = "WIFI"; 
                    }  
                    interface '6ffe58b5-9f7f-4df6-ba3f-34cbc159967c' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'PP 2'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cell Network'.'PP 1' {
                        @CapellaID { eid = "6ffe58b5-9f7f-4df6-ba3f-34cbc159967c"; } 
                        attribute :>> interfaceName = "WAN"; 
                    }  
                    interface 'e02ac6f5-7a99-4f50-b0ea-31d9e46b8f67' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cell Network'.'PP 2'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Text Device'.'PP 1' {
                        @CapellaID { eid = "e02ac6f5-7a99-4f50-b0ea-31d9e46b8f67"; } 
                        attribute :>> interfaceName = "Cell"; 
                    }  
                    interface 'bdaf8198-1ab6-461a-ae05-3cebf2ae2c0d' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router'.'To WIFI Network'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Email Device'.'PP 1' {
                        @CapellaID { eid = "bdaf8198-1ab6-461a-ae05-3cebf2ae2c0d"; } 
                        attribute :>> interfaceName = "WIFI"; 
                    }  
                    interface '93b00a30-855e-46cc-9a7d-b0223b0706b0' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Lorawan'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To LORA Nodes' {
                        @CapellaID { eid = "93b00a30-855e-46cc-9a7d-b0223b0706b0"; } 
                        attribute :>> interfaceName = "LORWAN"; 
                    }  
                    interface '393fbea6-0a33-4dff-a299-5679b9846f60' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router'.'TO LORA CAT5'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To CAT 5' {
                        @CapellaID { eid = "393fbea6-0a33-4dff-a299-5679b9846f60"; } 
                        attribute :>> interfaceName = "R-G"; 
                    }  
                    interface '7825ab19-1f20-47c8-8937-8ae378e1c221' : PhysicalLink 
                        connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router'.'To WIFI LORA'
                        to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway'.'To WIFI' {
                        @CapellaID { eid = "7825ab19-1f20-47c8-8937-8ae378e1c221"; } 
                        attribute :>> interfaceName = "R-G"; 
                    }  
                    ref :>> ownedPhysicalComponents =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Network',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium Console',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Lora Devices',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Facilities',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LORAWAN Gateway',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Router',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Modem',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'ISP',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Software',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cayenne',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Helium RS Connect',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Text Device',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Email Device',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cell Network',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Misc Apps',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'ISP'); 
                     
                    ref :>> ownedComponentExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'01d9d6bd-8ff2-4b08-b81c-eb53ca0f4d24',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'9816146f-21e2-4ce0-b03c-e1e8a1c94652',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'3cee67ff-9c15-4934-9765-3ba582ba24b6',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'3aeb8479-b78d-47d2-b567-fec0007a0b43',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'09ef2a7c-fa20-467f-a01c-bf92e0bbca7e'); 
                     
                     
                    ref :>> ownedPhysicalLinks =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'2fe0fa69-0dad-42e1-9e31-5ea1afa9ca77',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'485dc158-d2a9-4466-9fa0-26de95f215e8',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'7b377cdb-4811-4f15-9373-1acbd7fbdc91',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'7ae30ed5-5223-48bb-8c4f-b60b736c1706',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'b4675f2f-18b9-4fcb-9241-3622742bc6c6',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'6ffe58b5-9f7f-4df6-ba3f-34cbc159967c',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'e02ac6f5-7a99-4f50-b0ea-31d9e46b8f67',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'bdaf8198-1ab6-461a-ae05-3cebf2ae2c0d',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'93b00a30-855e-46cc-9a7d-b0223b0706b0',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'393fbea6-0a33-4dff-a299-5679b9846f60',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'7825ab19-1f20-47c8-8937-8ae378e1c221'); 
                }  
                part 'Operator' : PhysicalComponent { 
                    @CapellaID { eid = "2abfdcda-d8a6-4e14-a340-c5a8c2f1e3be"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::FACILITIES; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation '7daaed28-3667-47fa-8307-3a9af4bdb6b1' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Monitor Alerts'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Monitor Alerts' ; 
                    allocation '37ce2318-d371-4772-b532-662d6e1b44da' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View Device Data'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View Device Data' ; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "daf3cbf8-bebd-4b80-9b2f-ed13a9b23ba7"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "accf2496-c932-459e-96fd-3f264f0a26c0"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "2ac10346-0031-4b9b-a00a-1c816908dfb3"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'PP 4' : PhysicalPort { 
                        @CapellaID { eid = "042f73ef-99d5-4c70-9e3a-c1287be06151"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'CP 5' : ComponentPort { 
                        @CapellaID { eid = "83c0d55b-3c1a-4993-896d-e515ebb18171"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'CP 6' : ComponentPort { 
                        @CapellaID { eid = "8b571a91-63b0-46f2-879e-0001cbd85d7c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                    }  
                    constraint 'f63eb821-3b95-4d30-b879-2da0b67dc902' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        @CapellaID { eid = "f63eb821-3b95-4d30-b879-2da0b67dc902"; }
                        ref :>> constrainedElements =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator');
                        
                    } 
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'7daaed28-3667-47fa-8307-3a9af4bdb6b1',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'37ce2318-d371-4772-b532-662d6e1b44da'); 
                     
                     
                    ref :>> ownedConstraints =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'f63eb821-3b95-4d30-b879-2da0b67dc902'); 
                }  
                part 'Environment' : PhysicalComponent { 
                    @CapellaID { eid = "95201f45-2c1d-4bc4-9af4-cdc12e17be10"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation '7405d456-cc49-4738-97a8-b3cfbae82e05' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence' ; 
                    allocation 'b542aa01-1540-460a-8bee-3fd550abb8f3' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display' ; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "cee051dc-c46c-4c62-bb2c-4c1eb97e296b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'PP 2' : PhysicalPort { 
                        @CapellaID { eid = "5fb5b7d3-5f23-4dbf-8bec-c8aaf4b26336"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment'.'7405d456-cc49-4738-97a8-b3cfbae82e05',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment'.'b542aa01-1540-460a-8bee-3fd550abb8f3'); 
                     
                     
                }  
                part 'GPS' : PhysicalComponent { 
                    @CapellaID { eid = "18024896-bd3a-493d-8097-cf949a843dad"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation 'b86dddaa-7da0-488f-8a1a-a2e59d833e11' : ComponentFunctionalAllocation
                        allocate function ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals'
                        to component ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS';
                    perform 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals' ; 
                    port 'PP 1' : PhysicalPort { 
                        @CapellaID { eid = "e286c54d-ce5a-4a98-a056-0fa322e9302a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "b4ef1729-2bfe-4caa-acee-75a550130576"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '25019421-44f7-4052-bc2d-d290c79214c3' : PortAllocation
                            allocate allocatedPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals'.'FOP 1'
                            to allocatingPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS'.'CP 2'.'25019421-44f7-4052-bc2d-d290c79214c3'); 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS'.'b86dddaa-7da0-488f-8a1a-a2e59d833e11'); 
                }  
                constraint '44d67d9e-527b-4339-a7a9-1704fa9aafe2' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "44d67d9e-527b-4339-a7a9-1704fa9aafe2"; }
                    
                    
                } 
                constraint '42b668bf-c782-45f5-980c-7775dd9e253d' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "42b668bf-c782-45f5-980c-7775dd9e253d"; }
                    
                    
                } 
                constraint '7d06124d-86b4-4fec-96a8-80088d571afa' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "7d06124d-86b4-4fec-96a8-80088d571afa"; }
                    
                    
                } 
                constraint 'eab9ed9f-cd9e-49a9-bea5-f1423f44e284' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "eab9ed9f-cd9e-49a9-bea5-f1423f44e284"; }
                    ref :>> constrainedElements =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'1c93882c-ca71-415d-8825-912707232ec4',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud');
                    
                } 
                constraint '88f92b41-b622-4485-a126-ed24abd9b957' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "88f92b41-b622-4485-a126-ed24abd9b957"; }
                    ref :>> constrainedElements =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud'.'5993b206-7ab1-4528-acf5-41e00bbab73b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Cloud');
                    
                } 
                constraint 'd97b7abc-41a0-4e68-b842-f7dcb0c90c41' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "d97b7abc-41a0-4e68-b842-f7dcb0c90c41"; }
                    
                    
                } 
                constraint '950ec803-c281-4d9f-a9b5-ed06f58f0b07' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "950ec803-c281-4d9f-a9b5-ed06f58f0b07"; }
                    
                    
                } 
                interface 'a84cbf50-7229-45bd-8c41-102ed10c23b9' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Software'.'CP 1'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65 Hardware'.'CP 3' { 
                    @CapellaID { eid = "a84cbf50-7229-45bd-8c41-102ed10c23b9"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "LHT HW SW"; 
                    attribute :>> isOriented = false; 
                }  
                interface '55ab6430-8535-456f-9d3c-86e3dc758f91' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Browser'.'CP 3'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'CP 2' { 
                    @CapellaID { eid = "55ab6430-8535-456f-9d3c-86e3dc758f91"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 2"; 
                    attribute :>> isOriented = false; 
                }  
                interface '32909d00-a7f9-4205-aa16-88314dcb8d9d' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'Text Out'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'CP 5' { 
                    @CapellaID { eid = "32909d00-a7f9-4205-aa16-88314dcb8d9d"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Text"; 
                    attribute :>> isOriented = false; 
                }  
                interface '1bf3cbdb-1fc3-40ab-b1ae-a0e03cc2ec9c' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Services'.'Email out'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'CP 6' { 
                    @CapellaID { eid = "1bf3cbdb-1fc3-40ab-b1ae-a0e03cc2ec9c"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Email"; 
                    attribute :>> isOriented = false; 
                }  
                interface '3d048bfb-66ba-4b0c-b982-23050d5dbe80' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'CP 7_1'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Software'.'CP 1_1' { 
                    @CapellaID { eid = "3d048bfb-66ba-4b0c-b982-23050d5dbe80"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "HW SW Interface"; 
                    attribute :>> isOriented = false; 
                    allocation 'c83d518c-feff-4c66-8514-f7c318b7cb9a' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'e0b6084d-e5db-4014-a5b8-c84e0e2d73af'
                        to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'; 
                    allocation '2ceb86dc-6354-452c-ab89-ddcafb2b70af' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8721a327-b701-47b4-961d-a0afd60b113c'
                        to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'; 
                    allocation '9a9869a0-76ae-46c8-b94b-775914f4d07b' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'77495d9f-8fe1-4e9c-b6a2-1ae40e4bfd63'
                        to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'; 
                    allocation 'a41a09a1-0f4b-41bc-bf5a-e51306b4dbf9' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'659334ce-9521-4c2a-88fe-1b86100ff20b'
                        to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'.'c83d518c-feff-4c66-8514-f7c318b7cb9a',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'.'2ceb86dc-6354-452c-ab89-ddcafb2b70af',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'.'9a9869a0-76ae-46c8-b94b-775914f4d07b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d048bfb-66ba-4b0c-b982-23050d5dbe80'.'a41a09a1-0f4b-41bc-bf5a-e51306b4dbf9'); 
                }  
                interface '3d85e650-8105-46c8-b9e8-d0357ca1a953' : ComponentExchange 
                    connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS'.'CP 2'
                    to  target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC AB02S'.'GPS In' { 
                    @CapellaID { eid = "3d85e650-8105-46c8-b9e8-d0357ca1a953"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "C 6"; 
                    attribute :>> isOriented = false; 
                    allocation '07453591-a134-479a-9753-8413f3b7b0ad' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'435686ac-01a1-41ec-894d-8de1c5f4ce52'
                        to componentExchange ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d85e650-8105-46c8-b9e8-d0357ca1a953'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'3d85e650-8105-46c8-b9e8-d0357ca1a953'.'07453591-a134-479a-9753-8413f3b7b0ad'); 
                }  
                interface '6c09fd2e-72ac-4cc3-9354-21079c8bb23a' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'LHT 65'.'LHT In'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment'.'PP 1' {
                    @CapellaID { eid = "6c09fd2e-72ac-4cc3-9354-21079c8bb23a"; } 
                    attribute :>> interfaceName = "Temp Humidty"; 
                }  
                interface '18429206-7e1a-4b8f-9d3b-20b8c54c7013' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'PP 1'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'PC'.'PP 2' {
                    @CapellaID { eid = "18429206-7e1a-4b8f-9d3b-20b8c54c7013"; } 
                    attribute :>> interfaceName = "User IF"; 
                }  
                interface 'c4a383c0-13b0-4d5e-a88a-d2111f5e72d7' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Text Device'.'PP 2'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'PP 3' {
                    @CapellaID { eid = "c4a383c0-13b0-4d5e-a88a-d2111f5e72d7"; } 
                    attribute :>> interfaceName = "UI"; 
                }  
                interface '1704822b-a869-4955-b930-de0f98713152' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'Email Device'.'PP 2'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Operator'.'PP 4' {
                    @CapellaID { eid = "1704822b-a869-4955-b930-de0f98713152"; } 
                    attribute :>> interfaceName = "UI"; 
                }  
                interface 'bb56f90f-58e7-477b-a01c-9fcffcb49835' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'GPS'.'PP 1'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'PP 7_1' {
                    @CapellaID { eid = "bb56f90f-58e7-477b-a01c-9fcffcb49835"; } 
                    attribute :>> interfaceName = "GPS Signal"; 
                }  
                interface 'f891d023-ae68-41a6-8941-508513b10811' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Physical System'.'HTCC-AB02S'.'Visual Out'
                    to targetPhysicalPort ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Structure'::'Environment'.'PP 2' {
                    @CapellaID { eid = "f891d023-ae68-41a6-8941-508513b10811"; } 
                    attribute :>> interfaceName = "Position"; 
                }  
            } 
            package  'Physical Functions' {
                @PackageMeta {
                    type = "PhysicalFunctionPkg";
                } 
                @CapellaID { eid = "a0998e1b-fd76-4092-a0ea-7c45f1805de9"; } 
                action 'Root Physical Function' : PhysicalFunction  { 
                    @CapellaID { eid = "96654bcb-95c0-41b9-af9c-3c51a52e7624"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    interface 'f07fc0c3-9245-4663-a094-0f029023ecee' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment'.'FIP 1' { 
                        @CapellaID { eid = "f07fc0c3-9245-4663-a094-0f029023ecee"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat"; 
                         
                    }  
                    interface '0c5120cd-6643-4bfa-97c2-3a735f8130e3' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Monitor Alerts'.'FIP 1' { 
                        @CapellaID { eid = "0c5120cd-6643-4bfa-97c2-3a735f8130e3"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Alerts"; 
                         
                    }  
                    interface '72b9641e-37d8-4466-a31c-ed2e64ac6e8a' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'FIP 2' { 
                        @CapellaID { eid = "72b9641e-37d8-4466-a31c-ed2e64ac6e8a"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Lora Uplink"; 
                    }  
                    interface '0b42cd70-6145-42ba-ae2e-c7ff1c0294f2' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'FOP 2'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 3' { 
                        @CapellaID { eid = "0b42cd70-6145-42ba-ae2e-c7ff1c0294f2"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Lora Downlink"; 
                    }  
                    interface '61b64f59-cdd8-442d-820b-2be9dbe1259b' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 1' { 
                        @CapellaID { eid = "61b64f59-cdd8-442d-820b-2be9dbe1259b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Temp Signal"; 
                    }  
                    interface 'bf405b31-3084-40b3-bce8-4a7ce9f116b3' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 2' { 
                        @CapellaID { eid = "bf405b31-3084-40b3-bce8-4a7ce9f116b3"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Humidity Signal"; 
                    }  
                    interface 'a4857226-6356-4277-86cb-f501aa0b69e9' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'.'Hum Sig In' { 
                        @CapellaID { eid = "a4857226-6356-4277-86cb-f501aa0b69e9"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Humidity"; 
                    }  
                    interface '6ad8b3e7-a6fb-43c7-99ab-f0a7a5401cc1' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '.'Temp Sig In' { 
                        @CapellaID { eid = "6ad8b3e7-a6fb-43c7-99ab-f0a7a5401cc1"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Temperattur"; 
                    }  
                    interface 'b778396b-85a1-41c1-b264-f760d1571478' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts'.'FIP 1' { 
                        @CapellaID { eid = "b778396b-85a1-41c1-b264-f760d1571478"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Lora Message"; 
                         
                    }  
                    interface 'f4c453de-b1dc-4500-9c67-778a8f29a62b' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FOP 3'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FIP 1' { 
                        @CapellaID { eid = "f4c453de-b1dc-4500-9c67-778a8f29a62b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Lora Message"; 
                    }  
                    interface '7b162984-edbd-406f-95b1-d3f459a6e296' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FOP 2'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'.'FIP 1' { 
                        @CapellaID { eid = "7b162984-edbd-406f-95b1-d3f459a6e296"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Lora Message"; 
                    }  
                    interface '8e8e9930-1b08-4387-904d-820277fb0f97' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'.'FIP 1' { 
                        @CapellaID { eid = "8e8e9930-1b08-4387-904d-820277fb0f97"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Data"; 
                    }  
                    interface '83f878b9-4d00-4114-83d0-da13682def6c' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View Device Data'.'FIP 1' { 
                        @CapellaID { eid = "83f878b9-4d00-4114-83d0-da13682def6c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Data "; 
                    }  
                    interface 'f14e3dd8-1e57-4073-96de-2b3d3b54f939' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FIP 1' { 
                        @CapellaID { eid = "f14e3dd8-1e57-4073-96de-2b3d3b54f939"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Uplink Data"; 
                    }  
                    interface '9044060c-4073-4af1-9c32-4199f88a36e8' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'.'To Cloud Console'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FIP 1' { 
                        @CapellaID { eid = "9044060c-4073-4af1-9c32-4199f88a36e8"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Uplink Data"; 
                    }  
                    interface '9ca99e53-d568-49d3-b32f-24448d854a6a' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FOP 2'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FIP 1' { 
                        @CapellaID { eid = "9ca99e53-d568-49d3-b32f-24448d854a6a"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Uplink Data"; 
                    }  
                    interface 'be85b473-a28b-4264-94f5-4423cbc4dee2' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Email'.'FIP 1' { 
                        @CapellaID { eid = "be85b473-a28b-4264-94f5-4423cbc4dee2"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Email"; 
                    }  
                    interface 'a0d63d92-b2b9-4330-93f7-703cec69c508' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FOP 2'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'.'FIP 1' { 
                        @CapellaID { eid = "a0d63d92-b2b9-4330-93f7-703cec69c508"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Webhook"; 
                    }  
                    interface '5438e077-8d2d-4c77-96ca-8b9188cf2b30' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function'.'FIP 1' { 
                        @CapellaID { eid = "5438e077-8d2d-4c77-96ca-8b9188cf2b30"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Webhook"; 
                    }  
                    interface 'f3763d4b-193e-40c8-b642-b91af71acc8e' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'.'FOP 2_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation'.'FIP 2_1' { 
                        @CapellaID { eid = "f3763d4b-193e-40c8-b642-b91af71acc8e"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Battery Level"; 
                    }  
                    interface '61dd373e-4e2c-484e-86fa-5b5f7477f35b' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'FOP 2'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FIP 1' { 
                        @CapellaID { eid = "61dd373e-4e2c-484e-86fa-5b5f7477f35b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Lorawan Status"; 
                    }  
                    interface '0c7f9233-676f-4f20-a195-b0ddce0be41b' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'.'FIP 1' { 
                        @CapellaID { eid = "0c7f9233-676f-4f20-a195-b0ddce0be41b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Status"; 
                    }  
                    interface '8721a327-b701-47b4-961d-a0afd60b113c' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 2_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'FIP 1_1' { 
                        @CapellaID { eid = "8721a327-b701-47b4-961d-a0afd60b113c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Data Packet"; 
                    }  
                    interface 'e0b6084d-e5db-4014-a5b8-c84e0e2d73af' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'.'FOP 1_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 3_1' { 
                        @CapellaID { eid = "e0b6084d-e5db-4014-a5b8-c84e0e2d73af"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Battery State"; 
                    }  
                    interface '659334ce-9521-4c2a-88fe-1b86100ff20b' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 1_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'FIP 1_1' { 
                        @CapellaID { eid = "659334ce-9521-4c2a-88fe-1b86100ff20b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "LED Status_1"; 
                    }  
                    interface '77495d9f-8fe1-4e9c-b6a2-1ae40e4bfd63' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'FOP 1_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 4_1' { 
                        @CapellaID { eid = "77495d9f-8fe1-4e9c-b6a2-1ae40e4bfd63"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "GPS Data_1"; 
                    }  
                    interface '3a524588-b16b-45f4-ba1f-997494776a00' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 3'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FIP 2' { 
                        @CapellaID { eid = "3a524588-b16b-45f4-ba1f-997494776a00"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "GPS Status"; 
                    }  
                    interface '61bd7e0f-de4b-468b-a0c8-d41b023ae5b2' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN Out_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'.'From sensors' { 
                        @CapellaID { eid = "61bd7e0f-de4b-468b-a0c8-d41b023ae5b2"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Uplink"; 
                    }  
                    interface '701f3a68-a4d2-4d93-88b2-83e18e9f1555' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'.'To Sensor'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN In_1' { 
                        @CapellaID { eid = "701f3a68-a4d2-4d93-88b2-83e18e9f1555"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Down Lin"; 
                    }  
                    interface '8bcb2e0b-5cbf-4d05-8e73-a89de8afd53d' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display'.'FIP 1' { 
                        @CapellaID { eid = "8bcb2e0b-5cbf-4d05-8e73-a89de8afd53d"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Display"; 
                    }  
                    interface '6c09f5b5-c2dd-4536-897f-6af0a6a38979' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'LED Out_1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display'.'FIP 2' { 
                        @CapellaID { eid = "6c09f5b5-c2dd-4536-897f-6af0a6a38979"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "LEDs"; 
                    }  
                    interface '435686ac-01a1-41ec-894d-8de1c5f4ce52' : FunctionalExchange 
                        connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals'.'FOP 1'
                        to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'GPS In_1' { 
                        @CapellaID { eid = "435686ac-01a1-41ec-894d-8de1c5f4ce52"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "GPS Signa;l"; 
                    }  
                    action 'Monitor Alerts' : PhysicalFunction  { 
                        @CapellaID { eid = "9130dd8e-ccfa-4ebf-b64e-df48ffe5e64d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "990a76a9-ff74-410f-b623-671eb5db4073"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Monitor Alerts'.'FIP 1'); 
                         
                    }  
                    action 'Detect Temperature Anomolies' : PhysicalFunction  { 
                        @CapellaID { eid = "02fc47ae-2b37-4202-bb30-8176fef2fa1e"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        interface '02dbc8f4-3ae5-41ea-a9d4-6eb4fe60f63f' : FunctionalExchange 
                            connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora UpLink'
                            to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'.'From sensors' { 
                            @CapellaID { eid = "02dbc8f4-3ae5-41ea-a9d4-6eb4fe60f63f"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Lora Message"; 
                             
                        }  
                        interface '1e77e07f-e493-41ea-9d1d-40568cf2fcaa' : FunctionalExchange 
                            connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'.'To Sensor'
                            to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora Downlink' { 
                            @CapellaID { eid = "1e77e07f-e493-41ea-9d1d-40568cf2fcaa"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Down Link Data"; 
                        }  
                        action 'Convert Temp to Lora Message' : PhysicalFunction  { 
                            @CapellaID { eid = "011cf0ca-0348-4110-846d-d309b7bbeffa"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Transmit over Lorawan' : PhysicalFunction  { 
                                @CapellaID { eid = "6bec16a2-55dd-494a-9cce-51fec7e1f212"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                out port 'Lora UpLink' : FunctionOutputPort  { 
                                    @CapellaID { eid = "c3044b55-b682-42c5-928e-451fc3588ca5"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    @CapellaID { eid = "1789d0ff-37c9-4347-84dc-b97cc4aee90a"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'Lora Downlink' : FunctionInputPort  { 
                                    @CapellaID { eid = "20345068-58cd-4c46-91b1-41cad23c0ec9"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    @CapellaID { eid = "9609a7d4-c135-480d-90b3-2fdac1ed5d77"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora UpLink',
                                'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'FOP 2'); 
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'Lora Downlink',
                                'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan'.'FIP 2'); 
                            }  
                            action 'Compute Temp and Humidity' : PhysicalFunction  { 
                                @CapellaID { eid = "f0acc7bc-8711-4710-9c11-12fa61e19df1"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "f6d24548-a885-4741-ace0-eca12f75cd1c"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "19c7b37f-1d29-4ba2-a7fd-2c035b8792db"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'FIP 2' : FunctionInputPort  { 
                                    @CapellaID { eid = "19125ed7-6629-4eee-87a1-2b8fe3dd0a4f"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'FIP 3' : FunctionInputPort  { 
                                    @CapellaID { eid = "35b688dc-b2ce-4601-a11e-66bb77c9d604"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FOP 1'); 
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 1',
                                'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 2',
                                'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity'.'FIP 3'); 
                            }  
                            action 'Convert Humidity to Electrical' : PhysicalFunction  { 
                                @CapellaID { eid = "6cdd0bd4-fb37-45c4-8ecd-1b11d85e699a"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "5f1f7e37-774c-4b93-9ae6-628f91c685d3"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'Hum Sig In' : FunctionInputPort  { 
                                    @CapellaID { eid = "6ecf6966-5d7c-4c91-8630-5727d76d2760"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'.'FOP 1'); 
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical'.'Hum Sig In'); 
                            }  
                            action 'Convert Temp to Electrical ' : PhysicalFunction  { 
                                @CapellaID { eid = "b508be82-0ab1-4b27-a05d-2ea443e17826"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "1eadf707-f8f7-472a-ad0b-043c13c75d95"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'Temp Sig In' : FunctionInputPort  { 
                                    @CapellaID { eid = "21eb212b-ffca-4e47-bde2-6571882801c2"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '.'FOP 1'); 
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '.'Temp Sig In'); 
                            }  
                             
                            ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Transmit over Lorawan',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Compute Temp and Humidity',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Humidity to Electrical',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message'.'Convert Temp to Electrical '); 
                        }  
                        action 'Deliver Lora Message to Integration' : PhysicalFunction  { 
                            @CapellaID { eid = "5cb47008-3835-4f2d-9709-702de8b92bd4"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            interface 'd8a11236-e063-4288-af7a-758a32e6392d' : FunctionalExchange 
                                connect source ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FOP 2'
                                to target ::> 'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'.'From Cloud Console' { 
                                @CapellaID { eid = "d8a11236-e063-4288-af7a-758a32e6392d"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Down Link"; 
                            }  
                            action 'Transfer Uplink Data' : PhysicalFunction  { 
                                @CapellaID { eid = "91a03a33-5a13-41f4-a865-c1224fee20a7"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                out port 'To Cloud Console' : FunctionOutputPort  { 
                                    @CapellaID { eid = "ea74d3d1-6c0d-4d4f-8a25-21f7559558a0"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'From sensors' : FunctionInputPort  { 
                                    @CapellaID { eid = "7f23f200-c310-4d89-8d7b-aea3aa17b4fa"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'.'To Cloud Console'); 
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data'.'From sensors'); 
                            }  
                            action 'Process Data Per Device and Pass to Integrations' : PhysicalFunction  { 
                                @CapellaID { eid = "90d2d79b-f62b-4693-82f8-348365c830b2"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    @CapellaID { eid = "56f991ab-f170-408c-96c3-75cac0d7437e"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 3' : FunctionOutputPort  { 
                                    @CapellaID { eid = "8a7e4c26-f9f5-4e77-bba7-1454510a4f58"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "6b26874c-1260-4fca-9b35-a42c4be65166"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FOP 2',
                                'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FOP 3'); 
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations'.'FIP 1'); 
                            }  
                            action 'Transfer Downlink Data' : PhysicalFunction  { 
                                @CapellaID { eid = "0d89757f-07d7-44e2-9c09-8b0d1324185d"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                out port 'To Sensor' : FunctionOutputPort  { 
                                    @CapellaID { eid = "5ca6eb17-12db-46d8-8ba5-891e4ac99ecc"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'From Cloud Console' : FunctionInputPort  { 
                                    @CapellaID { eid = "c5c8fd1f-c244-49e7-9656-c3a63f60834b"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'.'To Sensor'); 
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'.'From Cloud Console'); 
                            }  
                            ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'d8a11236-e063-4288-af7a-758a32e6392d'); 
                             
                            ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Uplink Data',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Process Data Per Device and Pass to Integrations',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration'.'Transfer Downlink Data'); 
                        }  
                        action 'Generate Alerts for Users' : PhysicalFunction  { 
                            @CapellaID { eid = "3e77ecdd-7b25-47b4-beb7-bc53cbb998db"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            action 'Generate Alerts' : PhysicalFunction  { 
                                @CapellaID { eid = "f6e95f77-5e1f-4951-90fd-70f91b8c0579"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "d0a417d8-85bc-4171-b169-94bbd90b45bc"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "5e3a63b6-a102-429a-8091-479eaf2875e8"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts'.'FOP 1'); 
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts'.'FIP 1'); 
                            }  
                            action 'Display Data' : PhysicalFunction  { 
                                @CapellaID { eid = "11871d7e-cefa-4b7b-8a51-bb6c3a5322ef"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> kind = FunctionKind::FUNCTION; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "3fc38337-fc85-4a3a-a8d4-c0f85dee812d"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "caa25c0b-cf7f-463d-884c-409dc4c49106"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'.'FOP 1'); 
                                ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'.'FIP 1'); 
                            }  
                             
                            ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Generate Alerts',
                            'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'.'Display Data'); 
                        }  
                        ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'02dbc8f4-3ae5-41ea-a9d4-6eb4fe60f63f',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'1e77e07f-e493-41ea-9d1d-40568cf2fcaa'); 
                         
                        ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Convert Temp to Lora Message',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Deliver Lora Message to Integration',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies'.'Generate Alerts for Users'); 
                    }  
                    action 'Transfered from Environment' : PhysicalFunction  { 
                        @CapellaID { eid = "c3204f0d-c1cc-4730-8352-ad7f3386d7a5"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "8412062f-dc68-4b0f-8af0-39a4fcf57137"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "57c83863-18e1-4011-9c63-109c628bf729"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment'.'FOP 1'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment'.'FIP 1'); 
                         
                    }  
                    action 'Heat Influence' : PhysicalFunction  { 
                        @CapellaID { eid = "6c09676e-cf73-4cbf-8a6e-4eb4c254c0a8"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "89037eec-70b4-4a25-8901-1394b11a80c8"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence'.'FOP 1'); 
                         
                    }  
                    action 'View Device Data' : PhysicalFunction  { 
                        @CapellaID { eid = "eee8eeeb-3b78-46b0-9280-0784b2696361"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "b5ec20c4-c526-4e5c-83b9-2606a094072c"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View Device Data'.'FIP 1'); 
                    }  
                    action 'Capture Data' : PhysicalFunction  { 
                        @CapellaID { eid = "e7e2ecb0-2007-428b-8044-a0af6abb154d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "b7b54e93-3ad8-4dc0-8816-e7756f7309d3"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "e46c65ff-b1c5-40b2-a4d6-c06d9bbbf7ed"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'.'FOP 1'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data'.'FIP 1'); 
                    }  
                    action 'Duplicate 7' : PhysicalFunction  { 
                        @CapellaID { eid = "a3ac7c7e-bb43-412d-a312-76322241ba5d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::DUPLICATE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "335346de-5f92-4cef-a6b9-3bb0a01acf04"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "5ba0bb82-f421-4897-adc2-db8a1ca900b2"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "91ee8644-d81f-402e-962a-bd908a4a345b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FOP 1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FOP 2'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7'.'FIP 1'); 
                    }  
                    action 'Deliver Device Alerts' : PhysicalFunction  { 
                        @CapellaID { eid = "0633a188-19be-4ff4-bb26-16b82d40d93a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "155e3395-e9c3-4597-9634-efbc0e58e465"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "4e5d1a22-95f9-458d-81b5-a2b675967b71"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "0afddb20-03ba-497f-8ab0-e73c56624095"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FOP 1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FOP 2'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts'.'FIP 1'); 
                    }  
                    action 'Duplicate 9' : PhysicalFunction  { 
                        @CapellaID { eid = "3d0f265e-f27a-4788-b4b6-19825c4b2b18"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::DUPLICATE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "0ccdf286-2c90-4c81-95d4-04561b27f730"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "c33d9612-1825-44b4-9dc1-9e173c263f31"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "2b450e56-dd44-461d-8733-bfe192c603c0"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FOP 1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FOP 2'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9'.'FIP 1'); 
                    }  
                    action 'Email' : PhysicalFunction  { 
                        @CapellaID { eid = "8f89239d-5ed8-4938-a7e2-837b5de18daf"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "7a38047c-17b0-4eeb-a848-6646781f7eec"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Email'.'FIP 1'); 
                    }  
                    action 'Webhook' : PhysicalFunction  { 
                        @CapellaID { eid = "e1400c24-02e9-4370-9af2-90b3b0dea8da"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "3af4d181-c137-4c24-a322-15c91cac227b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "7f8e9875-37bc-4bde-8e1a-00dd59ba015e"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'.'FOP 1'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook'.'FIP 1'); 
                    }  
                    action 'Text' : PhysicalFunction  { 
                        @CapellaID { eid = "a951ec36-42d2-4e7e-a7a3-5eeae55c86f4"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'App Function' : PhysicalFunction  { 
                        @CapellaID { eid = "9977639e-ce0f-4ded-ab32-26e755dbc5af"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "d6bb906a-df7c-4b56-a747-579cb73aaee4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function'.'FIP 1'); 
                    }  
                    action 'Transmit over LoraWAN' : PhysicalFunction  { 
                        @CapellaID { eid = "2b55651e-0bfa-4a32-a385-30f3dd1e2b69"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'LoraWAN Out_1' : FunctionOutputPort  { 
                            @CapellaID { eid = "130395c7-2231-499d-a568-9ff46424b534"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "294915d6-2dc9-4464-b788-b4abe5d77b6c"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1_1' : FunctionInputPort  { 
                            @CapellaID { eid = "bd4d25ec-d4ce-4189-9701-ac33963e1862"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'LoraWAN In_1' : FunctionInputPort  { 
                            @CapellaID { eid = "af1f90f1-0d47-4bb2-873b-5d2bbea0d18d"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN Out_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'FOP 2'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'FIP 1_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN'.'LoraWAN In_1'); 
                    }  
                    action 'Apply Power for Computation' : PhysicalFunction  { 
                        @CapellaID { eid = "25f488bd-4b6e-4275-aed0-661fa17a9c9a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 2_1' : FunctionInputPort  { 
                            @CapellaID { eid = "eb25952b-5383-4101-8196-e0f8c675fec8"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'Power In_1' : FunctionInputPort  { 
                            @CapellaID { eid = "9f0388e5-2e64-4b4b-a022-1f710043a1b9"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation'.'FIP 2_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation'.'Power In_1'); 
                    }  
                    action 'Provide LED Light' : PhysicalFunction  { 
                        @CapellaID { eid = "49fe086c-2d5e-4144-a4c6-e56a92aed7ed"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'LED Out_1' : FunctionOutputPort  { 
                            @CapellaID { eid = "c75ba7f8-3add-4a6b-ae6e-54e3e6199fcc"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1_1' : FunctionInputPort  { 
                            @CapellaID { eid = "b8717447-ca14-44e3-bf99-3cabf84705fe"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'LED Out_1'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light'.'FIP 1_1'); 
                    }  
                    action 'Compute GPS + Battery Status' : PhysicalFunction  { 
                        @CapellaID { eid = "7055aa5e-da23-49b7-a866-f611ab0fb021"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1_1' : FunctionOutputPort  { 
                            @CapellaID { eid = "5d35843c-b323-4f0c-a212-2dffe3bd2eaa"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 2_1' : FunctionOutputPort  { 
                            @CapellaID { eid = "b634673d-f592-4c2e-a42d-6bb540571064"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 3' : FunctionOutputPort  { 
                            @CapellaID { eid = "e19ee4d1-5156-4df1-92b9-0509f9ee60b8"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1_1' : FunctionInputPort  { 
                            @CapellaID { eid = "70073d3f-1200-4cf3-bff0-ecc7fbd2f247"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 3_1' : FunctionInputPort  { 
                            @CapellaID { eid = "3af85bc0-dcb8-45f7-8241-3eae7e2844c7"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 4_1' : FunctionInputPort  { 
                            @CapellaID { eid = "d320e5c9-acc5-4fdd-9e93-81d84e9ad134"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 1_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 2_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FOP 3'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 1_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 3_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status'.'FIP 4_1'); 
                    }  
                    action 'Provide display' : PhysicalFunction  { 
                        @CapellaID { eid = "1502f19d-ea86-46ba-9485-51e7c626d0af"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "e9df76d6-bdb8-4d3c-bf70-e48966e36c67"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "775510a3-9bc5-431f-9d4a-05ed971ed7fc"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'.'FOP 1'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display'.'FIP 1'); 
                    }  
                    action 'Receive GPS Signal' : PhysicalFunction  { 
                        @CapellaID { eid = "8d807576-ecbb-45c2-aab8-29c5af62d7b3"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1_1' : FunctionOutputPort  { 
                            @CapellaID { eid = "d0f33e95-7dd3-4a45-b8c4-6197a215541b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'GPS In_1' : FunctionInputPort  { 
                            @CapellaID { eid = "7b1c42a0-9b5d-42bd-871e-3471c7384623"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'FOP 1_1'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal'.'GPS In_1'); 
                    }  
                    action 'Provide status' : PhysicalFunction  { 
                        @CapellaID { eid = "17e9120b-9a38-4a63-8b3f-fd6179d8ea46"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "5ea11c00-7745-47ab-9c36-32d65cba1752"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "e5dc041f-32ac-4e6c-a269-fea45fca32c3"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "5e8f5bed-bb4b-4720-ac61-da7657c025d8"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FOP 1'); 
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FIP 1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status'.'FIP 2'); 
                    }  
                    action 'Charge Battery' : PhysicalFunction  { 
                        @CapellaID { eid = "eb7ff6fa-824d-425a-bee4-191546750217"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1_1' : FunctionOutputPort  { 
                            @CapellaID { eid = "77c7f775-0d29-432c-93e0-256c2bec6831"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 2_1' : FunctionOutputPort  { 
                            @CapellaID { eid = "7d4b8226-b6be-4b92-8e67-094d2ec7928b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'.'FOP 1_1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery'.'FOP 2_1'); 
                    }  
                    action 'View LED and Display' : PhysicalFunction  { 
                        @CapellaID { eid = "5c073106-cbd9-47c2-b197-3f2ee063c61b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "28a3a406-1fdf-47d2-9ad7-906d270bb7c1"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "f3983f9b-f2cb-4d1b-b38b-4bc47e9627f2"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display'.'FIP 1',
                        'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display'.'FIP 2'); 
                    }  
                    action 'Send GPS Signals' : PhysicalFunction  { 
                        @CapellaID { eid = "3f6c5c9b-3a69-4562-8380-f2efd2ad4b7b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "bb8fc6f1-74f0-4acb-99bf-46ae1cc591b4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals'.'FOP 1'); 
                    }  
                    ref :>> ownedFunctionalExchanges =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f07fc0c3-9245-4663-a094-0f029023ecee',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'0c5120cd-6643-4bfa-97c2-3a735f8130e3',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'72b9641e-37d8-4466-a31c-ed2e64ac6e8a',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'0b42cd70-6145-42ba-ae2e-c7ff1c0294f2',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'61b64f59-cdd8-442d-820b-2be9dbe1259b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'bf405b31-3084-40b3-bce8-4a7ce9f116b3',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'a4857226-6356-4277-86cb-f501aa0b69e9',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'6ad8b3e7-a6fb-43c7-99ab-f0a7a5401cc1',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'b778396b-85a1-41c1-b264-f760d1571478',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f4c453de-b1dc-4500-9c67-778a8f29a62b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'7b162984-edbd-406f-95b1-d3f459a6e296',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8e8e9930-1b08-4387-904d-820277fb0f97',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'83f878b9-4d00-4114-83d0-da13682def6c',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f14e3dd8-1e57-4073-96de-2b3d3b54f939',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'9044060c-4073-4af1-9c32-4199f88a36e8',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'9ca99e53-d568-49d3-b32f-24448d854a6a',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'be85b473-a28b-4264-94f5-4423cbc4dee2',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'a0d63d92-b2b9-4330-93f7-703cec69c508',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'5438e077-8d2d-4c77-96ca-8b9188cf2b30',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f3763d4b-193e-40c8-b642-b91af71acc8e',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'61dd373e-4e2c-484e-86fa-5b5f7477f35b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'0c7f9233-676f-4f20-a195-b0ddce0be41b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8721a327-b701-47b4-961d-a0afd60b113c',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'e0b6084d-e5db-4014-a5b8-c84e0e2d73af',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'659334ce-9521-4c2a-88fe-1b86100ff20b',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'77495d9f-8fe1-4e9c-b6a2-1ae40e4bfd63',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'3a524588-b16b-45f4-ba1f-997494776a00',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'61bd7e0f-de4b-468b-a0c8-d41b023ae5b2',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'701f3a68-a4d2-4d93-88b2-83e18e9f1555',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8bcb2e0b-5cbf-4d05-8e73-a89de8afd53d',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'6c09f5b5-c2dd-4536-897f-6af0a6a38979',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'435686ac-01a1-41ec-894d-8de1c5f4ce52'); 
                     
                    ref :>> ownedFunctions =  ('LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Monitor Alerts',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Detect Temperature Anomolies',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transfered from Environment',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Heat Influence',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View Device Data',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Capture Data',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 7',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Deliver Device Alerts',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Duplicate 9',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Email',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Webhook',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Text',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'App Function',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Transmit over LoraWAN',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Apply Power for Computation',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide LED Light',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Compute GPS + Battery Status',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide display',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Receive GPS Signal',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide status',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Charge Battery',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'View LED and Display',
                    'LORAWAN_Library Library'::'LORAWAN_Library'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Send GPS Signals'); 
                }  
            } 
        } 
    } 
}