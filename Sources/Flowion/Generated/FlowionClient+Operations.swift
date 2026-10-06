// Generated typed forwarding methods. Do not edit.
import OpenAPIRuntime

extension FlowionClient: APIProtocol {
    public func approveAssistant(_ input: Operations.ApproveAssistant.Input) async throws -> Operations.ApproveAssistant.Output {
        do { return try await api.approveAssistant(input) }
        catch { throw Self.failure(error) }
    }
    public func declineAssistant(_ input: Operations.DeclineAssistant.Input) async throws -> Operations.DeclineAssistant.Output {
        do { return try await api.declineAssistant(input) }
        catch { throw Self.failure(error) }
    }
    public func getAssistantClient(_ input: Operations.GetAssistantClient.Input) async throws -> Operations.GetAssistantClient.Output {
        do { return try await api.getAssistantClient(input) }
        catch { throw Self.failure(error) }
    }
    public func startAssistantConversation(_ input: Operations.StartAssistantConversation.Input) async throws -> Operations.StartAssistantConversation.Output {
        do { return try await api.startAssistantConversation(input) }
        catch { throw Self.failure(error) }
    }
    public func sendAssistantMessage(_ input: Operations.SendAssistantMessage.Input) async throws -> Operations.SendAssistantMessage.Output {
        do { return try await api.sendAssistantMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func getAssistantTurn(_ input: Operations.GetAssistantTurn.Input) async throws -> Operations.GetAssistantTurn.Output {
        do { return try await api.getAssistantTurn(input) }
        catch { throw Self.failure(error) }
    }
    public func registerAssistantClient(_ input: Operations.RegisterAssistantClient.Input) async throws -> Operations.RegisterAssistantClient.Output {
        do { return try await api.registerAssistantClient(input) }
        catch { throw Self.failure(error) }
    }
    public func assistantToken(_ input: Operations.AssistantToken.Input) async throws -> Operations.AssistantToken.Output {
        do { return try await api.assistantToken(input) }
        catch { throw Self.failure(error) }
    }
    public func recordAssistantProposalOutcome(_ input: Operations.RecordAssistantProposalOutcome.Input) async throws -> Operations.RecordAssistantProposalOutcome.Output {
        do { return try await api.recordAssistantProposalOutcome(input) }
        catch { throw Self.failure(error) }
    }
    public func getCharger(_ input: Operations.GetCharger.Input) async throws -> Operations.GetCharger.Output {
        do { return try await api.getCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func deprovisionCharger(_ input: Operations.DeprovisionCharger.Input) async throws -> Operations.DeprovisionCharger.Output {
        do { return try await api.deprovisionCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func getChargerAccessPolicy(_ input: Operations.GetChargerAccessPolicy.Input) async throws -> Operations.GetChargerAccessPolicy.Output {
        do { return try await api.getChargerAccessPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func setChargerAccessPolicy(_ input: Operations.SetChargerAccessPolicy.Input) async throws -> Operations.SetChargerAccessPolicy.Output {
        do { return try await api.setChargerAccessPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteChargerAccessPolicy(_ input: Operations.DeleteChargerAccessPolicy.Input) async throws -> Operations.DeleteChargerAccessPolicy.Output {
        do { return try await api.deleteChargerAccessPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func listChargingStationActiveFaults(_ input: Operations.ListChargingStationActiveFaults.Input) async throws -> Operations.ListChargingStationActiveFaults.Output {
        do { return try await api.listChargingStationActiveFaults(input) }
        catch { throw Self.failure(error) }
    }
    public func listActivity(_ input: Operations.ListActivity.Input) async throws -> Operations.ListActivity.Output {
        do { return try await api.listActivity(input) }
        catch { throw Self.failure(error) }
    }
    public func clearChargingStationActuationStatus(_ input: Operations.ClearChargingStationActuationStatus.Input) async throws -> Operations.ClearChargingStationActuationStatus.Output {
        do { return try await api.clearChargingStationActuationStatus(input) }
        catch { throw Self.failure(error) }
    }
    public func listChargerBindings(_ input: Operations.ListChargerBindings.Input) async throws -> Operations.ListChargerBindings.Output {
        do { return try await api.listChargerBindings(input) }
        catch { throw Self.failure(error) }
    }
    public func attachChargerBinding(_ input: Operations.AttachChargerBinding.Input) async throws -> Operations.AttachChargerBinding.Output {
        do { return try await api.attachChargerBinding(input) }
        catch { throw Self.failure(error) }
    }
    public func detachChargerBinding(_ input: Operations.DetachChargerBinding.Input) async throws -> Operations.DetachChargerBinding.Output {
        do { return try await api.detachChargerBinding(input) }
        catch { throw Self.failure(error) }
    }
    public func listBootReports(_ input: Operations.ListBootReports.Input) async throws -> Operations.ListBootReports.Output {
        do { return try await api.listBootReports(input) }
        catch { throw Self.failure(error) }
    }
    public func listChargingLimits(_ input: Operations.ListChargingLimits.Input) async throws -> Operations.ListChargingLimits.Output {
        do { return try await api.listChargingLimits(input) }
        catch { throw Self.failure(error) }
    }
    public func createChargingLimit(_ input: Operations.CreateChargingLimit.Input) async throws -> Operations.CreateChargingLimit.Output {
        do { return try await api.createChargingLimit(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteChargingLimits(_ input: Operations.DeleteChargingLimits.Input) async throws -> Operations.DeleteChargingLimits.Output {
        do { return try await api.deleteChargingLimits(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteChargingLimit(_ input: Operations.DeleteChargingLimit.Input) async throws -> Operations.DeleteChargingLimit.Output {
        do { return try await api.deleteChargingLimit(input) }
        catch { throw Self.failure(error) }
    }
    public func listCommands(_ input: Operations.ListCommands.Input) async throws -> Operations.ListCommands.Output {
        do { return try await api.listCommands(input) }
        catch { throw Self.failure(error) }
    }
    public func createCommand(_ input: Operations.CreateCommand.Input) async throws -> Operations.CreateCommand.Output {
        do { return try await api.createCommand(input) }
        catch { throw Self.failure(error) }
    }
    public func getCapabilities(_ input: Operations.GetCapabilities.Input) async throws -> Operations.GetCapabilities.Output {
        do { return try await api.getCapabilities(input) }
        catch { throw Self.failure(error) }
    }
    public func changeConfiguration(_ input: Operations.ChangeConfiguration.Input) async throws -> Operations.ChangeConfiguration.Output {
        do { return try await api.changeConfiguration(input) }
        catch { throw Self.failure(error) }
    }
    public func dataTransfer(_ input: Operations.DataTransfer.Input) async throws -> Operations.DataTransfer.Output {
        do { return try await api.dataTransfer(input) }
        catch { throw Self.failure(error) }
    }
    public func getConfiguration(_ input: Operations.GetConfiguration.Input) async throws -> Operations.GetConfiguration.Output {
        do { return try await api.getConfiguration(input) }
        catch { throw Self.failure(error) }
    }
    public func getVariables(_ input: Operations.GetVariables.Input) async throws -> Operations.GetVariables.Output {
        do { return try await api.getVariables(input) }
        catch { throw Self.failure(error) }
    }
    public func setVariables(_ input: Operations.SetVariables.Input) async throws -> Operations.SetVariables.Output {
        do { return try await api.setVariables(input) }
        catch { throw Self.failure(error) }
    }
    public func getCommand(_ input: Operations.GetCommand.Input) async throws -> Operations.GetCommand.Output {
        do { return try await api.getCommand(input) }
        catch { throw Self.failure(error) }
    }
    public func listConfiguration(_ input: Operations.ListConfiguration.Input) async throws -> Operations.ListConfiguration.Output {
        do { return try await api.listConfiguration(input) }
        catch { throw Self.failure(error) }
    }
    public func getConnectivity(_ input: Operations.GetConnectivity.Input) async throws -> Operations.GetConnectivity.Output {
        do { return try await api.getConnectivity(input) }
        catch { throw Self.failure(error) }
    }
    public func rotateChargerCredential(_ input: Operations.RotateChargerCredential.Input) async throws -> Operations.RotateChargerCredential.Output {
        do { return try await api.rotateChargerCredential(input) }
        catch { throw Self.failure(error) }
    }
    public func listCurrentEnvelopesForCharger(_ input: Operations.ListCurrentEnvelopesForCharger.Input) async throws -> Operations.ListCurrentEnvelopesForCharger.Output {
        do { return try await api.listCurrentEnvelopesForCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func listDeviceModel(_ input: Operations.ListDeviceModel.Input) async throws -> Operations.ListDeviceModel.Output {
        do { return try await api.listDeviceModel(input) }
        catch { throw Self.failure(error) }
    }
    public func getDiagnosis(_ input: Operations.GetDiagnosis.Input) async throws -> Operations.GetDiagnosis.Output {
        do { return try await api.getDiagnosis(input) }
        catch { throw Self.failure(error) }
    }
    public func listDiagnosticsRequests(_ input: Operations.ListDiagnosticsRequests.Input) async throws -> Operations.ListDiagnosticsRequests.Output {
        do { return try await api.listDiagnosticsRequests(input) }
        catch { throw Self.failure(error) }
    }
    public func createDiagnosticsRequest(_ input: Operations.CreateDiagnosticsRequest.Input) async throws -> Operations.CreateDiagnosticsRequest.Output {
        do { return try await api.createDiagnosticsRequest(input) }
        catch { throw Self.failure(error) }
    }
    public func getDiagnosticsRequest(_ input: Operations.GetDiagnosticsRequest.Input) async throws -> Operations.GetDiagnosticsRequest.Output {
        do { return try await api.getDiagnosticsRequest(input) }
        catch { throw Self.failure(error) }
    }
    public func downloadDiagnosticsRequest(_ input: Operations.DownloadDiagnosticsRequest.Input) async throws -> Operations.DownloadDiagnosticsRequest.Output {
        do { return try await api.downloadDiagnosticsRequest(input) }
        catch { throw Self.failure(error) }
    }
    public func refreshDiagnosticsRequest(_ input: Operations.RefreshDiagnosticsRequest.Input) async throws -> Operations.RefreshDiagnosticsRequest.Output {
        do { return try await api.refreshDiagnosticsRequest(input) }
        catch { throw Self.failure(error) }
    }
    public func listDisplayMessages(_ input: Operations.ListDisplayMessages.Input) async throws -> Operations.ListDisplayMessages.Output {
        do { return try await api.listDisplayMessages(input) }
        catch { throw Self.failure(error) }
    }
    public func getDisplayMessage(_ input: Operations.GetDisplayMessage.Input) async throws -> Operations.GetDisplayMessage.Output {
        do { return try await api.getDisplayMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func putDisplayMessage(_ input: Operations.PutDisplayMessage.Input) async throws -> Operations.PutDisplayMessage.Output {
        do { return try await api.putDisplayMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteDisplayMessage(_ input: Operations.DeleteDisplayMessage.Input) async throws -> Operations.DeleteDisplayMessage.Output {
        do { return try await api.deleteDisplayMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func hideDisplayMessage(_ input: Operations.HideDisplayMessage.Input) async throws -> Operations.HideDisplayMessage.Output {
        do { return try await api.hideDisplayMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func showDisplayMessage(_ input: Operations.ShowDisplayMessage.Input) async throws -> Operations.ShowDisplayMessage.Output {
        do { return try await api.showDisplayMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func listEvses(_ input: Operations.ListEvses.Input) async throws -> Operations.ListEvses.Output {
        do { return try await api.listEvses(input) }
        catch { throw Self.failure(error) }
    }
    public func setEvseCircuit(_ input: Operations.SetEvseCircuit.Input) async throws -> Operations.SetEvseCircuit.Output {
        do { return try await api.setEvseCircuit(input) }
        catch { throw Self.failure(error) }
    }
    public func setEvsePhaseRotation(_ input: Operations.SetEvsePhaseRotation.Input) async throws -> Operations.SetEvsePhaseRotation.Output {
        do { return try await api.setEvsePhaseRotation(input) }
        catch { throw Self.failure(error) }
    }
    public func listInboundMessages(_ input: Operations.ListInboundMessages.Input) async throws -> Operations.ListInboundMessages.Output {
        do { return try await api.listInboundMessages(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocalAuthList(_ input: Operations.GetLocalAuthList.Input) async throws -> Operations.GetLocalAuthList.Output {
        do { return try await api.getLocalAuthList(input) }
        catch { throw Self.failure(error) }
    }
    public func getChargerMetrics(_ input: Operations.GetChargerMetrics.Input) async throws -> Operations.GetChargerMetrics.Output {
        do { return try await api.getChargerMetrics(input) }
        catch { throw Self.failure(error) }
    }
    public func setChargerName(_ input: Operations.SetChargerName.Input) async throws -> Operations.SetChargerName.Output {
        do { return try await api.setChargerName(input) }
        catch { throw Self.failure(error) }
    }
    public func placeCharger(_ input: Operations.PlaceCharger.Input) async throws -> Operations.PlaceCharger.Output {
        do { return try await api.placeCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func getChargerRegistration(_ input: Operations.GetChargerRegistration.Input) async throws -> Operations.GetChargerRegistration.Output {
        do { return try await api.getChargerRegistration(input) }
        catch { throw Self.failure(error) }
    }
    public func getSettings(_ input: Operations.GetSettings.Input) async throws -> Operations.GetSettings.Output {
        do { return try await api.getSettings(input) }
        catch { throw Self.failure(error) }
    }
    public func updateSettings(_ input: Operations.UpdateSettings.Input) async throws -> Operations.UpdateSettings.Output {
        do { return try await api.updateSettings(input) }
        catch { throw Self.failure(error) }
    }
    public func listChargingStationStatusHistory(_ input: Operations.ListChargingStationStatusHistory.Input) async throws -> Operations.ListChargingStationStatusHistory.Output {
        do { return try await api.listChargingStationStatusHistory(input) }
        catch { throw Self.failure(error) }
    }
    public func getStationTariffs(_ input: Operations.GetStationTariffs.Input) async throws -> Operations.GetStationTariffs.Output {
        do { return try await api.getStationTariffs(input) }
        catch { throw Self.failure(error) }
    }
    public func startTestSession(_ input: Operations.StartTestSession.Input) async throws -> Operations.StartTestSession.Output {
        do { return try await api.startTestSession(input) }
        catch { throw Self.failure(error) }
    }
    public func listChargerTransactions(_ input: Operations.ListChargerTransactions.Input) async throws -> Operations.ListChargerTransactions.Output {
        do { return try await api.listChargerTransactions(input) }
        catch { throw Self.failure(error) }
    }
    public func whoCanChargeAtCharger(_ input: Operations.WhoCanChargeAtCharger.Input) async throws -> Operations.WhoCanChargeAtCharger.Output {
        do { return try await api.whoCanChargeAtCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func getCircuit(_ input: Operations.GetCircuit.Input) async throws -> Operations.GetCircuit.Output {
        do { return try await api.getCircuit(input) }
        catch { throw Self.failure(error) }
    }
    public func setCircuitParent(_ input: Operations.SetCircuitParent.Input) async throws -> Operations.SetCircuitParent.Output {
        do { return try await api.setCircuitParent(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteCircuit(_ input: Operations.DeleteCircuit.Input) async throws -> Operations.DeleteCircuit.Output {
        do { return try await api.deleteCircuit(input) }
        catch { throw Self.failure(error) }
    }
    public func getAllocationDecisions(_ input: Operations.GetAllocationDecisions.Input) async throws -> Operations.GetAllocationDecisions.Output {
        do { return try await api.getAllocationDecisions(input) }
        catch { throw Self.failure(error) }
    }
    public func getAllocationLog(_ input: Operations.GetAllocationLog.Input) async throws -> Operations.GetAllocationLog.Output {
        do { return try await api.getAllocationLog(input) }
        catch { throw Self.failure(error) }
    }
    public func getCircuitCurrent(_ input: Operations.GetCircuitCurrent.Input) async throws -> Operations.GetCircuitCurrent.Output {
        do { return try await api.getCircuitCurrent(input) }
        catch { throw Self.failure(error) }
    }
    public func getCircuitMonitor(_ input: Operations.GetCircuitMonitor.Input) async throws -> Operations.GetCircuitMonitor.Output {
        do { return try await api.getCircuitMonitor(input) }
        catch { throw Self.failure(error) }
    }
    public func assignMonitor(_ input: Operations.AssignMonitor.Input) async throws -> Operations.AssignMonitor.Output {
        do { return try await api.assignMonitor(input) }
        catch { throw Self.failure(error) }
    }
    public func removeMonitor(_ input: Operations.RemoveMonitor.Input) async throws -> Operations.RemoveMonitor.Output {
        do { return try await api.removeMonitor(input) }
        catch { throw Self.failure(error) }
    }
    public func listMonitorCandidates(_ input: Operations.ListMonitorCandidates.Input) async throws -> Operations.ListMonitorCandidates.Output {
        do { return try await api.listMonitorCandidates(input) }
        catch { throw Self.failure(error) }
    }
    public func setCircuitName(_ input: Operations.SetCircuitName.Input) async throws -> Operations.SetCircuitName.Output {
        do { return try await api.setCircuitName(input) }
        catch { throw Self.failure(error) }
    }
    public func setCircuitRatedCurrent(_ input: Operations.SetCircuitRatedCurrent.Input) async throws -> Operations.SetCircuitRatedCurrent.Output {
        do { return try await api.setCircuitRatedCurrent(input) }
        catch { throw Self.failure(error) }
    }
    public func getCircuitStats(_ input: Operations.GetCircuitStats.Input) async throws -> Operations.GetCircuitStats.Output {
        do { return try await api.getCircuitStats(input) }
        catch { throw Self.failure(error) }
    }
    public func listReviewableConnectionApps(_ input: Operations.ListReviewableConnectionApps.Input) async throws -> Operations.ListReviewableConnectionApps.Output {
        do { return try await api.listReviewableConnectionApps(input) }
        catch { throw Self.failure(error) }
    }
    public func reviewConnectionApp(_ input: Operations.ReviewConnectionApp.Input) async throws -> Operations.ReviewConnectionApp.Output {
        do { return try await api.reviewConnectionApp(input) }
        catch { throw Self.failure(error) }
    }
    public func returnGrant(_ input: Operations.ReturnGrant.Input) async throws -> Operations.ReturnGrant.Output {
        do { return try await api.returnGrant(input) }
        catch { throw Self.failure(error) }
    }
    public func prepareChallenge(_ input: Operations.PrepareChallenge.Input) async throws -> Operations.PrepareChallenge.Output {
        do { return try await api.prepareChallenge(input) }
        catch { throw Self.failure(error) }
    }
    public func getProviderConnectionConfiguration(_ input: Operations.GetProviderConnectionConfiguration.Input) async throws -> Operations.GetProviderConnectionConfiguration.Output {
        do { return try await api.getProviderConnectionConfiguration(input) }
        catch { throw Self.failure(error) }
    }
    public func currentConnection(_ input: Operations.CurrentConnection.Input) async throws -> Operations.CurrentConnection.Output {
        do { return try await api.currentConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func connectionProjects(_ input: Operations.ConnectionProjects.Input) async throws -> Operations.ConnectionProjects.Output {
        do { return try await api.connectionProjects(input) }
        catch { throw Self.failure(error) }
    }
    public func completeInstallFlow(_ input: Operations.CompleteInstallFlow.Input) async throws -> Operations.CompleteInstallFlow.Output {
        do { return try await api.completeInstallFlow(input) }
        catch { throw Self.failure(error) }
    }
    public func oauthToken(_ input: Operations.OauthToken.Input) async throws -> Operations.OauthToken.Output {
        do { return try await api.oauthToken(input) }
        catch { throw Self.failure(error) }
    }
    public func listConnectorActiveFaults(_ input: Operations.ListConnectorActiveFaults.Input) async throws -> Operations.ListConnectorActiveFaults.Output {
        do { return try await api.listConnectorActiveFaults(input) }
        catch { throw Self.failure(error) }
    }
    public func getCurrentEnvelope(_ input: Operations.GetCurrentEnvelope.Input) async throws -> Operations.GetCurrentEnvelope.Output {
        do { return try await api.getCurrentEnvelope(input) }
        catch { throw Self.failure(error) }
    }
    public func getConnectorMetrics(_ input: Operations.GetConnectorMetrics.Input) async throws -> Operations.GetConnectorMetrics.Output {
        do { return try await api.getConnectorMetrics(input) }
        catch { throw Self.failure(error) }
    }
    public func listConnectorStatusHistory(_ input: Operations.ListConnectorStatusHistory.Input) async throws -> Operations.ListConnectorStatusHistory.Output {
        do { return try await api.listConnectorStatusHistory(input) }
        catch { throw Self.failure(error) }
    }
    public func listConnectorTransactions(_ input: Operations.ListConnectorTransactions.Input) async throws -> Operations.ListConnectorTransactions.Output {
        do { return try await api.listConnectorTransactions(input) }
        catch { throw Self.failure(error) }
    }
    public func listMonitors(_ input: Operations.ListMonitors.Input) async throws -> Operations.ListMonitors.Output {
        do { return try await api.listMonitors(input) }
        catch { throw Self.failure(error) }
    }
    public func createMonitor(_ input: Operations.CreateMonitor.Input) async throws -> Operations.CreateMonitor.Output {
        do { return try await api.createMonitor(input) }
        catch { throw Self.failure(error) }
    }
    public func getMonitor(_ input: Operations.GetMonitor.Input) async throws -> Operations.GetMonitor.Output {
        do { return try await api.getMonitor(input) }
        catch { throw Self.failure(error) }
    }
    public func renameMonitor(_ input: Operations.RenameMonitor.Input) async throws -> Operations.RenameMonitor.Output {
        do { return try await api.renameMonitor(input) }
        catch { throw Self.failure(error) }
    }
    public func monitorConnectionStatus(_ input: Operations.MonitorConnectionStatus.Input) async throws -> Operations.MonitorConnectionStatus.Output {
        do { return try await api.monitorConnectionStatus(input) }
        catch { throw Self.failure(error) }
    }
    public func disableMonitorConnection(_ input: Operations.DisableMonitorConnection.Input) async throws -> Operations.DisableMonitorConnection.Output {
        do { return try await api.disableMonitorConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func revokeMonitorCredential(_ input: Operations.RevokeMonitorCredential.Input) async throws -> Operations.RevokeMonitorCredential.Output {
        do { return try await api.revokeMonitorCredential(input) }
        catch { throw Self.failure(error) }
    }
    public func rotateMonitorCredential(_ input: Operations.RotateMonitorCredential.Input) async throws -> Operations.RotateMonitorCredential.Output {
        do { return try await api.rotateMonitorCredential(input) }
        catch { throw Self.failure(error) }
    }
    public func setMonitorDisabled(_ input: Operations.SetMonitorDisabled.Input) async throws -> Operations.SetMonitorDisabled.Output {
        do { return try await api.setMonitorDisabled(input) }
        catch { throw Self.failure(error) }
    }
    public func listPrices(_ input: Operations.ListPrices.Input) async throws -> Operations.ListPrices.Output {
        do { return try await api.listPrices(input) }
        catch { throw Self.failure(error) }
    }
    public func listBiddingZones(_ input: Operations.ListBiddingZones.Input) async throws -> Operations.ListBiddingZones.Output {
        do { return try await api.listBiddingZones(input) }
        catch { throw Self.failure(error) }
    }
    public func listConnectors(_ input: Operations.ListConnectors.Input) async throws -> Operations.ListConnectors.Output {
        do { return try await api.listConnectors(input) }
        catch { throw Self.failure(error) }
    }
    public func getHandover(_ input: Operations.GetHandover.Input) async throws -> Operations.GetHandover.Output {
        do { return try await api.getHandover(input) }
        catch { throw Self.failure(error) }
    }
    public func acceptHandover(_ input: Operations.AcceptHandover.Input) async throws -> Operations.AcceptHandover.Output {
        do { return try await api.acceptHandover(input) }
        catch { throw Self.failure(error) }
    }
    public func getHandoverProgress(_ input: Operations.GetHandoverProgress.Input) async throws -> Operations.GetHandoverProgress.Output {
        do { return try await api.getHandoverProgress(input) }
        catch { throw Self.failure(error) }
    }
    public func getIdToken(_ input: Operations.GetIdToken.Input) async throws -> Operations.GetIdToken.Output {
        do { return try await api.getIdToken(input) }
        catch { throw Self.failure(error) }
    }
    public func updateIdToken(_ input: Operations.UpdateIdToken.Input) async throws -> Operations.UpdateIdToken.Output {
        do { return try await api.updateIdToken(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteIdToken(_ input: Operations.DeleteIdToken.Input) async throws -> Operations.DeleteIdToken.Output {
        do { return try await api.deleteIdToken(input) }
        catch { throw Self.failure(error) }
    }
    public func listAuthorizationDecisions(_ input: Operations.ListAuthorizationDecisions.Input) async throws -> Operations.ListAuthorizationDecisions.Output {
        do { return try await api.listAuthorizationDecisions(input) }
        catch { throw Self.failure(error) }
    }
    public func eraseIdToken(_ input: Operations.EraseIdToken.Input) async throws -> Operations.EraseIdToken.Output {
        do { return try await api.eraseIdToken(input) }
        catch { throw Self.failure(error) }
    }
    public func listIdTokenErasures(_ input: Operations.ListIdTokenErasures.Input) async throws -> Operations.ListIdTokenErasures.Output {
        do { return try await api.listIdTokenErasures(input) }
        catch { throw Self.failure(error) }
    }
    public func setIdTokenGroupKey(_ input: Operations.SetIdTokenGroupKey.Input) async throws -> Operations.SetIdTokenGroupKey.Output {
        do { return try await api.setIdTokenGroupKey(input) }
        catch { throw Self.failure(error) }
    }
    public func handOverIdToken(_ input: Operations.HandOverIdToken.Input) async throws -> Operations.HandOverIdToken.Output {
        do { return try await api.handOverIdToken(input) }
        catch { throw Self.failure(error) }
    }
    public func setIdTokenHolder(_ input: Operations.SetIdTokenHolder.Input) async throws -> Operations.SetIdTokenHolder.Output {
        do { return try await api.setIdTokenHolder(input) }
        catch { throw Self.failure(error) }
    }
    public func detachIdTokenHolder(_ input: Operations.DetachIdTokenHolder.Input) async throws -> Operations.DetachIdTokenHolder.Output {
        do { return try await api.detachIdTokenHolder(input) }
        catch { throw Self.failure(error) }
    }
    public func revealIdToken(_ input: Operations.RevealIdToken.Input) async throws -> Operations.RevealIdToken.Output {
        do { return try await api.revealIdToken(input) }
        catch { throw Self.failure(error) }
    }
    public func listIdTokenReveals(_ input: Operations.ListIdTokenReveals.Input) async throws -> Operations.ListIdTokenReveals.Output {
        do { return try await api.listIdTokenReveals(input) }
        catch { throw Self.failure(error) }
    }
    public func revokeIdToken(_ input: Operations.RevokeIdToken.Input) async throws -> Operations.RevokeIdToken.Output {
        do { return try await api.revokeIdToken(input) }
        catch { throw Self.failure(error) }
    }
    public func unrevokeIdToken(_ input: Operations.UnrevokeIdToken.Input) async throws -> Operations.UnrevokeIdToken.Output {
        do { return try await api.unrevokeIdToken(input) }
        catch { throw Self.failure(error) }
    }
    public func getInvitation(_ input: Operations.GetInvitation.Input) async throws -> Operations.GetInvitation.Output {
        do { return try await api.getInvitation(input) }
        catch { throw Self.failure(error) }
    }
    public func acceptInvitation(_ input: Operations.AcceptInvitation.Input) async throws -> Operations.AcceptInvitation.Output {
        do { return try await api.acceptInvitation(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocation(_ input: Operations.GetLocation.Input) async throws -> Operations.GetLocation.Output {
        do { return try await api.getLocation(input) }
        catch { throw Self.failure(error) }
    }
    public func updateLocation(_ input: Operations.UpdateLocation.Input) async throws -> Operations.UpdateLocation.Output {
        do { return try await api.updateLocation(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationAccessPolicy(_ input: Operations.GetLocationAccessPolicy.Input) async throws -> Operations.GetLocationAccessPolicy.Output {
        do { return try await api.getLocationAccessPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func setLocationAccessPolicy(_ input: Operations.SetLocationAccessPolicy.Input) async throws -> Operations.SetLocationAccessPolicy.Output {
        do { return try await api.setLocationAccessPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteLocationAccessPolicy(_ input: Operations.DeleteLocationAccessPolicy.Input) async throws -> Operations.DeleteLocationAccessPolicy.Output {
        do { return try await api.deleteLocationAccessPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func listLocationDevicesAccess(_ input: Operations.ListLocationDevicesAccess.Input) async throws -> Operations.ListLocationDevicesAccess.Output {
        do { return try await api.listLocationDevicesAccess(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationAllocationDecisions(_ input: Operations.GetLocationAllocationDecisions.Input) async throws -> Operations.GetLocationAllocationDecisions.Output {
        do { return try await api.getLocationAllocationDecisions(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationAllocationLog(_ input: Operations.GetLocationAllocationLog.Input) async throws -> Operations.GetLocationAllocationLog.Output {
        do { return try await api.getLocationAllocationLog(input) }
        catch { throw Self.failure(error) }
    }
    public func listLocationBindings(_ input: Operations.ListLocationBindings.Input) async throws -> Operations.ListLocationBindings.Output {
        do { return try await api.listLocationBindings(input) }
        catch { throw Self.failure(error) }
    }
    public func attachLocationBinding(_ input: Operations.AttachLocationBinding.Input) async throws -> Operations.AttachLocationBinding.Output {
        do { return try await api.attachLocationBinding(input) }
        catch { throw Self.failure(error) }
    }
    public func detachLocationBinding(_ input: Operations.DetachLocationBinding.Input) async throws -> Operations.DetachLocationBinding.Output {
        do { return try await api.detachLocationBinding(input) }
        catch { throw Self.failure(error) }
    }
    public func listCircuits(_ input: Operations.ListCircuits.Input) async throws -> Operations.ListCircuits.Output {
        do { return try await api.listCircuits(input) }
        catch { throw Self.failure(error) }
    }
    public func createCircuit(_ input: Operations.CreateCircuit.Input) async throws -> Operations.CreateCircuit.Output {
        do { return try await api.createCircuit(input) }
        catch { throw Self.failure(error) }
    }
    public func listLocationDisplayMessages(_ input: Operations.ListLocationDisplayMessages.Input) async throws -> Operations.ListLocationDisplayMessages.Output {
        do { return try await api.listLocationDisplayMessages(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationDisplayMessage(_ input: Operations.GetLocationDisplayMessage.Input) async throws -> Operations.GetLocationDisplayMessage.Output {
        do { return try await api.getLocationDisplayMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func putLocationDisplayMessage(_ input: Operations.PutLocationDisplayMessage.Input) async throws -> Operations.PutLocationDisplayMessage.Output {
        do { return try await api.putLocationDisplayMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteLocationDisplayMessage(_ input: Operations.DeleteLocationDisplayMessage.Input) async throws -> Operations.DeleteLocationDisplayMessage.Output {
        do { return try await api.deleteLocationDisplayMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationEnergy(_ input: Operations.GetLocationEnergy.Input) async throws -> Operations.GetLocationEnergy.Output {
        do { return try await api.getLocationEnergy(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationEnergyCost(_ input: Operations.GetLocationEnergyCost.Input) async throws -> Operations.GetLocationEnergyCost.Output {
        do { return try await api.getLocationEnergyCost(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationPriceCurve(_ input: Operations.GetLocationPriceCurve.Input) async throws -> Operations.GetLocationPriceCurve.Output {
        do { return try await api.getLocationPriceCurve(input) }
        catch { throw Self.failure(error) }
    }
    public func previewLocationPriceCurve(_ input: Operations.PreviewLocationPriceCurve.Input) async throws -> Operations.PreviewLocationPriceCurve.Output {
        do { return try await api.previewLocationPriceCurve(input) }
        catch { throw Self.failure(error) }
    }
    public func listLocationPrices(_ input: Operations.ListLocationPrices.Input) async throws -> Operations.ListLocationPrices.Output {
        do { return try await api.listLocationPrices(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationMonth(_ input: Operations.GetLocationMonth.Input) async throws -> Operations.GetLocationMonth.Output {
        do { return try await api.getLocationMonth(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationOccupancy(_ input: Operations.GetLocationOccupancy.Input) async throws -> Operations.GetLocationOccupancy.Output {
        do { return try await api.getLocationOccupancy(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationSupply(_ input: Operations.GetLocationSupply.Input) async throws -> Operations.GetLocationSupply.Output {
        do { return try await api.getLocationSupply(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationSupplyContract(_ input: Operations.GetLocationSupplyContract.Input) async throws -> Operations.GetLocationSupplyContract.Output {
        do { return try await api.getLocationSupplyContract(input) }
        catch { throw Self.failure(error) }
    }
    public func putLocationSupplyContract(_ input: Operations.PutLocationSupplyContract.Input) async throws -> Operations.PutLocationSupplyContract.Output {
        do { return try await api.putLocationSupplyContract(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteLocationSupplyContract(_ input: Operations.DeleteLocationSupplyContract.Input) async throws -> Operations.DeleteLocationSupplyContract.Output {
        do { return try await api.deleteLocationSupplyContract(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationTariffHours(_ input: Operations.GetLocationTariffHours.Input) async throws -> Operations.GetLocationTariffHours.Output {
        do { return try await api.getLocationTariffHours(input) }
        catch { throw Self.failure(error) }
    }
    public func getLocationUtilisation(_ input: Operations.GetLocationUtilisation.Input) async throws -> Operations.GetLocationUtilisation.Output {
        do { return try await api.getLocationUtilisation(input) }
        catch { throw Self.failure(error) }
    }
    public func whoCanChargeAtLocation(_ input: Operations.WhoCanChargeAtLocation.Input) async throws -> Operations.WhoCanChargeAtLocation.Output {
        do { return try await api.whoCanChargeAtLocation(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteAccount(_ input: Operations.DeleteAccount.Input) async throws -> Operations.DeleteAccount.Output {
        do { return try await api.deleteAccount(input) }
        catch { throw Self.failure(error) }
    }
    public func listAssistantConnections(_ input: Operations.ListAssistantConnections.Input) async throws -> Operations.ListAssistantConnections.Output {
        do { return try await api.listAssistantConnections(input) }
        catch { throw Self.failure(error) }
    }
    public func revokeAssistantConnection(_ input: Operations.RevokeAssistantConnection.Input) async throws -> Operations.RevokeAssistantConnection.Output {
        do { return try await api.revokeAssistantConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func startCharging(_ input: Operations.StartCharging.Input) async throws -> Operations.StartCharging.Output {
        do { return try await api.startCharging(input) }
        catch { throw Self.failure(error) }
    }
    public func stopCharging(_ input: Operations.StopCharging.Input) async throws -> Operations.StopCharging.Output {
        do { return try await api.stopCharging(input) }
        catch { throw Self.failure(error) }
    }
    public func getMyCharging(_ input: Operations.GetMyCharging.Input) async throws -> Operations.GetMyCharging.Output {
        do { return try await api.getMyCharging(input) }
        catch { throw Self.failure(error) }
    }
    public func getMyChargingSession(_ input: Operations.GetMyChargingSession.Input) async throws -> Operations.GetMyChargingSession.Output {
        do { return try await api.getMyChargingSession(input) }
        catch { throw Self.failure(error) }
    }
    public func setMyNotificationLanguage(_ input: Operations.SetMyNotificationLanguage.Input) async throws -> Operations.SetMyNotificationLanguage.Output {
        do { return try await api.setMyNotificationLanguage(input) }
        catch { throw Self.failure(error) }
    }
    public func getMyNotificationPreferences(_ input: Operations.GetMyNotificationPreferences.Input) async throws -> Operations.GetMyNotificationPreferences.Output {
        do { return try await api.getMyNotificationPreferences(input) }
        catch { throw Self.failure(error) }
    }
    public func setMyNotificationPreference(_ input: Operations.SetMyNotificationPreference.Input) async throws -> Operations.SetMyNotificationPreference.Output {
        do { return try await api.setMyNotificationPreference(input) }
        catch { throw Self.failure(error) }
    }
    public func listMyNotifications(_ input: Operations.ListMyNotifications.Input) async throws -> Operations.ListMyNotifications.Output {
        do { return try await api.listMyNotifications(input) }
        catch { throw Self.failure(error) }
    }
    public func markAllMyNotificationsRead(_ input: Operations.MarkAllMyNotificationsRead.Input) async throws -> Operations.MarkAllMyNotificationsRead.Output {
        do { return try await api.markAllMyNotificationsRead(input) }
        catch { throw Self.failure(error) }
    }
    public func getMyUnreadCount(_ input: Operations.GetMyUnreadCount.Input) async throws -> Operations.GetMyUnreadCount.Output {
        do { return try await api.getMyUnreadCount(input) }
        catch { throw Self.failure(error) }
    }
    public func markMyNotificationRead(_ input: Operations.MarkMyNotificationRead.Input) async throws -> Operations.MarkMyNotificationRead.Output {
        do { return try await api.markMyNotificationRead(input) }
        catch { throw Self.failure(error) }
    }
    public func listMyPlaces(_ input: Operations.ListMyPlaces.Input) async throws -> Operations.ListMyPlaces.Output {
        do { return try await api.listMyPlaces(input) }
        catch { throw Self.failure(error) }
    }
    public func listMyVehicleConnections(_ input: Operations.ListMyVehicleConnections.Input) async throws -> Operations.ListMyVehicleConnections.Output {
        do { return try await api.listMyVehicleConnections(input) }
        catch { throw Self.failure(error) }
    }
    public func startMyVehicleConnection(_ input: Operations.StartMyVehicleConnection.Input) async throws -> Operations.StartMyVehicleConnection.Output {
        do { return try await api.startMyVehicleConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func disconnectMyVehicleConnection(_ input: Operations.DisconnectMyVehicleConnection.Input) async throws -> Operations.DisconnectMyVehicleConnection.Output {
        do { return try await api.disconnectMyVehicleConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func discoverMyVehicles(_ input: Operations.DiscoverMyVehicles.Input) async throws -> Operations.DiscoverMyVehicles.Output {
        do { return try await api.discoverMyVehicles(input) }
        catch { throw Self.failure(error) }
    }
    public func addMyVehicles(_ input: Operations.AddMyVehicles.Input) async throws -> Operations.AddMyVehicles.Output {
        do { return try await api.addMyVehicles(input) }
        catch { throw Self.failure(error) }
    }
    public func listMyVehicles(_ input: Operations.ListMyVehicles.Input) async throws -> Operations.ListMyVehicles.Output {
        do { return try await api.listMyVehicles(input) }
        catch { throw Self.failure(error) }
    }
    public func getMyVehicle(_ input: Operations.GetMyVehicle.Input) async throws -> Operations.GetMyVehicle.Output {
        do { return try await api.getMyVehicle(input) }
        catch { throw Self.failure(error) }
    }
    public func renameMyVehicle(_ input: Operations.RenameMyVehicle.Input) async throws -> Operations.RenameMyVehicle.Output {
        do { return try await api.renameMyVehicle(input) }
        catch { throw Self.failure(error) }
    }
    public func removeMyVehicle(_ input: Operations.RemoveMyVehicle.Input) async throws -> Operations.RemoveMyVehicle.Output {
        do { return try await api.removeMyVehicle(input) }
        catch { throw Self.failure(error) }
    }
    public func listOrganizations(_ input: Operations.ListOrganizations.Input) async throws -> Operations.ListOrganizations.Output {
        do { return try await api.listOrganizations(input) }
        catch { throw Self.failure(error) }
    }
    public func createOrganization(_ input: Operations.CreateOrganization.Input) async throws -> Operations.CreateOrganization.Output {
        do { return try await api.createOrganization(input) }
        catch { throw Self.failure(error) }
    }
    public func getOrganizationBySlug(_ input: Operations.GetOrganizationBySlug.Input) async throws -> Operations.GetOrganizationBySlug.Output {
        do { return try await api.getOrganizationBySlug(input) }
        catch { throw Self.failure(error) }
    }
    public func getOrganization(_ input: Operations.GetOrganization.Input) async throws -> Operations.GetOrganization.Output {
        do { return try await api.getOrganization(input) }
        catch { throw Self.failure(error) }
    }
    public func updateOrganization(_ input: Operations.UpdateOrganization.Input) async throws -> Operations.UpdateOrganization.Output {
        do { return try await api.updateOrganization(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteOrganization(_ input: Operations.DeleteOrganization.Input) async throws -> Operations.DeleteOrganization.Output {
        do { return try await api.deleteOrganization(input) }
        catch { throw Self.failure(error) }
    }
    public func listApiKeys(_ input: Operations.ListApiKeys.Input) async throws -> Operations.ListApiKeys.Output {
        do { return try await api.listApiKeys(input) }
        catch { throw Self.failure(error) }
    }
    public func createApiKey(_ input: Operations.CreateApiKey.Input) async throws -> Operations.CreateApiKey.Output {
        do { return try await api.createApiKey(input) }
        catch { throw Self.failure(error) }
    }
    public func revokeApiKey(_ input: Operations.RevokeApiKey.Input) async throws -> Operations.RevokeApiKey.Output {
        do { return try await api.revokeApiKey(input) }
        catch { throw Self.failure(error) }
    }
    public func attachApiKeyBinding(_ input: Operations.AttachApiKeyBinding.Input) async throws -> Operations.AttachApiKeyBinding.Output {
        do { return try await api.attachApiKeyBinding(input) }
        catch { throw Self.failure(error) }
    }
    public func detachApiKeyBinding(_ input: Operations.DetachApiKeyBinding.Input) async throws -> Operations.DetachApiKeyBinding.Output {
        do { return try await api.detachApiKeyBinding(input) }
        catch { throw Self.failure(error) }
    }
    public func getOrganizationAssistantSetting(_ input: Operations.GetOrganizationAssistantSetting.Input) async throws -> Operations.GetOrganizationAssistantSetting.Output {
        do { return try await api.getOrganizationAssistantSetting(input) }
        catch { throw Self.failure(error) }
    }
    public func updateOrganizationAssistantSetting(_ input: Operations.UpdateOrganizationAssistantSetting.Input) async throws -> Operations.UpdateOrganizationAssistantSetting.Output {
        do { return try await api.updateOrganizationAssistantSetting(input) }
        catch { throw Self.failure(error) }
    }
    public func listAuditEntries(_ input: Operations.ListAuditEntries.Input) async throws -> Operations.ListAuditEntries.Output {
        do { return try await api.listAuditEntries(input) }
        catch { throw Self.failure(error) }
    }
    public func getBillingAddress(_ input: Operations.GetBillingAddress.Input) async throws -> Operations.GetBillingAddress.Output {
        do { return try await api.getBillingAddress(input) }
        catch { throw Self.failure(error) }
    }
    public func setBillingAddress(_ input: Operations.SetBillingAddress.Input) async throws -> Operations.SetBillingAddress.Output {
        do { return try await api.setBillingAddress(input) }
        catch { throw Self.failure(error) }
    }
    public func listInvoices(_ input: Operations.ListInvoices.Input) async throws -> Operations.ListInvoices.Output {
        do { return try await api.listInvoices(input) }
        catch { throw Self.failure(error) }
    }
    public func getPaymentMethod(_ input: Operations.GetPaymentMethod.Input) async throws -> Operations.GetPaymentMethod.Output {
        do { return try await api.getPaymentMethod(input) }
        catch { throw Self.failure(error) }
    }
    public func setDefaultPaymentMethod(_ input: Operations.SetDefaultPaymentMethod.Input) async throws -> Operations.SetDefaultPaymentMethod.Output {
        do { return try await api.setDefaultPaymentMethod(input) }
        catch { throw Self.failure(error) }
    }
    public func getPayouts(_ input: Operations.GetPayouts.Input) async throws -> Operations.GetPayouts.Output {
        do { return try await api.getPayouts(input) }
        catch { throw Self.failure(error) }
    }
    public func requestOnboardingLink(_ input: Operations.RequestOnboardingLink.Input) async throws -> Operations.RequestOnboardingLink.Output {
        do { return try await api.requestOnboardingLink(input) }
        catch { throw Self.failure(error) }
    }
    public func beginPaymentMethodSetup(_ input: Operations.BeginPaymentMethodSetup.Input) async throws -> Operations.BeginPaymentMethodSetup.Output {
        do { return try await api.beginPaymentMethodSetup(input) }
        catch { throw Self.failure(error) }
    }
    public func getSubscription(_ input: Operations.GetSubscription.Input) async throws -> Operations.GetSubscription.Output {
        do { return try await api.getSubscription(input) }
        catch { throw Self.failure(error) }
    }
    public func getTaxId(_ input: Operations.GetTaxId.Input) async throws -> Operations.GetTaxId.Output {
        do { return try await api.getTaxId(input) }
        catch { throw Self.failure(error) }
    }
    public func setTaxId(_ input: Operations.SetTaxId.Input) async throws -> Operations.SetTaxId.Output {
        do { return try await api.setTaxId(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteTaxId(_ input: Operations.DeleteTaxId.Input) async throws -> Operations.DeleteTaxId.Output {
        do { return try await api.deleteTaxId(input) }
        catch { throw Self.failure(error) }
    }
    public func listCapabilities(_ input: Operations.ListCapabilities.Input) async throws -> Operations.ListCapabilities.Output {
        do { return try await api.listCapabilities(input) }
        catch { throw Self.failure(error) }
    }
    public func grantCapability(_ input: Operations.GrantCapability.Input) async throws -> Operations.GrantCapability.Output {
        do { return try await api.grantCapability(input) }
        catch { throw Self.failure(error) }
    }
    public func revokeCapability(_ input: Operations.RevokeCapability.Input) async throws -> Operations.RevokeCapability.Output {
        do { return try await api.revokeCapability(input) }
        catch { throw Self.failure(error) }
    }
    public func listConnectionApps(_ input: Operations.ListConnectionApps.Input) async throws -> Operations.ListConnectionApps.Output {
        do { return try await api.listConnectionApps(input) }
        catch { throw Self.failure(error) }
    }
    public func createConnectionApp(_ input: Operations.CreateConnectionApp.Input) async throws -> Operations.CreateConnectionApp.Output {
        do { return try await api.createConnectionApp(input) }
        catch { throw Self.failure(error) }
    }
    public func getConnectionApp(_ input: Operations.GetConnectionApp.Input) async throws -> Operations.GetConnectionApp.Output {
        do { return try await api.getConnectionApp(input) }
        catch { throw Self.failure(error) }
    }
    public func updateConnectionApp(_ input: Operations.UpdateConnectionApp.Input) async throws -> Operations.UpdateConnectionApp.Output {
        do { return try await api.updateConnectionApp(input) }
        catch { throw Self.failure(error) }
    }
    public func rotateConnectionAppSecret(_ input: Operations.RotateConnectionAppSecret.Input) async throws -> Operations.RotateConnectionAppSecret.Output {
        do { return try await api.rotateConnectionAppSecret(input) }
        catch { throw Self.failure(error) }
    }
    public func submitConnectionApp(_ input: Operations.SubmitConnectionApp.Input) async throws -> Operations.SubmitConnectionApp.Output {
        do { return try await api.submitConnectionApp(input) }
        catch { throw Self.failure(error) }
    }
    public func listOrganizationConnections(_ input: Operations.ListOrganizationConnections.Input) async throws -> Operations.ListOrganizationConnections.Output {
        do { return try await api.listOrganizationConnections(input) }
        catch { throw Self.failure(error) }
    }
    public func createOrganizationConnection(_ input: Operations.CreateOrganizationConnection.Input) async throws -> Operations.CreateOrganizationConnection.Output {
        do { return try await api.createOrganizationConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func listSyncedFortnoxArticles(_ input: Operations.ListSyncedFortnoxArticles.Input) async throws -> Operations.ListSyncedFortnoxArticles.Output {
        do { return try await api.listSyncedFortnoxArticles(input) }
        catch { throw Self.failure(error) }
    }
    public func updateInstallation(_ input: Operations.UpdateInstallation.Input) async throws -> Operations.UpdateInstallation.Output {
        do { return try await api.updateInstallation(input) }
        catch { throw Self.failure(error) }
    }
    public func disconnectInstallation(_ input: Operations.DisconnectInstallation.Input) async throws -> Operations.DisconnectInstallation.Output {
        do { return try await api.disconnectInstallation(input) }
        catch { throw Self.failure(error) }
    }
    public func listLinkProposals(_ input: Operations.ListLinkProposals.Input) async throws -> Operations.ListLinkProposals.Output {
        do { return try await api.listLinkProposals(input) }
        catch { throw Self.failure(error) }
    }
    public func dismissLinkProposal(_ input: Operations.DismissLinkProposal.Input) async throws -> Operations.DismissLinkProposal.Output {
        do { return try await api.dismissLinkProposal(input) }
        catch { throw Self.failure(error) }
    }
    public func confirmLink(_ input: Operations.ConfirmLink.Input) async throws -> Operations.ConfirmLink.Output {
        do { return try await api.confirmLink(input) }
        catch { throw Self.failure(error) }
    }
    public func getOrganizationConnection(_ input: Operations.GetOrganizationConnection.Input) async throws -> Operations.GetOrganizationConnection.Output {
        do { return try await api.getOrganizationConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func updateOrganizationConnection(_ input: Operations.UpdateOrganizationConnection.Input) async throws -> Operations.UpdateOrganizationConnection.Output {
        do { return try await api.updateOrganizationConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func disconnectOrganizationConnection(_ input: Operations.DisconnectOrganizationConnection.Input) async throws -> Operations.DisconnectOrganizationConnection.Output {
        do { return try await api.disconnectOrganizationConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func startGrant(_ input: Operations.StartGrant.Input) async throws -> Operations.StartGrant.Output {
        do { return try await api.startGrant(input) }
        catch { throw Self.failure(error) }
    }
    public func approveGrant(_ input: Operations.ApproveGrant.Input) async throws -> Operations.ApproveGrant.Output {
        do { return try await api.approveGrant(input) }
        catch { throw Self.failure(error) }
    }
    public func denyGrant(_ input: Operations.DenyGrant.Input) async throws -> Operations.DenyGrant.Output {
        do { return try await api.denyGrant(input) }
        catch { throw Self.failure(error) }
    }
    public func setOrganizationConnectionSecret(_ input: Operations.SetOrganizationConnectionSecret.Input) async throws -> Operations.SetOrganizationConnectionSecret.Output {
        do { return try await api.setOrganizationConnectionSecret(input) }
        catch { throw Self.failure(error) }
    }
    public func revokeOrganizationConnectionSecret(_ input: Operations.RevokeOrganizationConnectionSecret.Input) async throws -> Operations.RevokeOrganizationConnectionSecret.Output {
        do { return try await api.revokeOrganizationConnectionSecret(input) }
        catch { throw Self.failure(error) }
    }
    public func startInstallFlow(_ input: Operations.StartInstallFlow.Input) async throws -> Operations.StartInstallFlow.Output {
        do { return try await api.startInstallFlow(input) }
        catch { throw Self.failure(error) }
    }
    public func listCustomers(_ input: Operations.ListCustomers.Input) async throws -> Operations.ListCustomers.Output {
        do { return try await api.listCustomers(input) }
        catch { throw Self.failure(error) }
    }
    public func createCustomer(_ input: Operations.CreateCustomer.Input) async throws -> Operations.CreateCustomer.Output {
        do { return try await api.createCustomer(input) }
        catch { throw Self.failure(error) }
    }
    public func createStationCommand(_ input: Operations.CreateStationCommand.Input) async throws -> Operations.CreateStationCommand.Output {
        do { return try await api.createStationCommand(input) }
        catch { throw Self.failure(error) }
    }
    public func getDiagnostics(_ input: Operations.GetDiagnostics.Input) async throws -> Operations.GetDiagnostics.Output {
        do { return try await api.getDiagnostics(input) }
        catch { throw Self.failure(error) }
    }
    public func listInstallerTeam(_ input: Operations.ListInstallerTeam.Input) async throws -> Operations.ListInstallerTeam.Output {
        do { return try await api.listInstallerTeam(input) }
        catch { throw Self.failure(error) }
    }
    public func assignTechnician(_ input: Operations.AssignTechnician.Input) async throws -> Operations.AssignTechnician.Output {
        do { return try await api.assignTechnician(input) }
        catch { throw Self.failure(error) }
    }
    public func unassignTechnician(_ input: Operations.UnassignTechnician.Input) async throws -> Operations.UnassignTechnician.Output {
        do { return try await api.unassignTechnician(input) }
        catch { throw Self.failure(error) }
    }
    public func listInstallers(_ input: Operations.ListInstallers.Input) async throws -> Operations.ListInstallers.Output {
        do { return try await api.listInstallers(input) }
        catch { throw Self.failure(error) }
    }
    public func revokeInstaller(_ input: Operations.RevokeInstaller.Input) async throws -> Operations.RevokeInstaller.Output {
        do { return try await api.revokeInstaller(input) }
        catch { throw Self.failure(error) }
    }
    public func acceptInstaller(_ input: Operations.AcceptInstaller.Input) async throws -> Operations.AcceptInstaller.Output {
        do { return try await api.acceptInstaller(input) }
        catch { throw Self.failure(error) }
    }
    public func listInvitations(_ input: Operations.ListInvitations.Input) async throws -> Operations.ListInvitations.Output {
        do { return try await api.listInvitations(input) }
        catch { throw Self.failure(error) }
    }
    public func createInvitation(_ input: Operations.CreateInvitation.Input) async throws -> Operations.CreateInvitation.Output {
        do { return try await api.createInvitation(input) }
        catch { throw Self.failure(error) }
    }
    public func revokeInvitation(_ input: Operations.RevokeInvitation.Input) async throws -> Operations.RevokeInvitation.Output {
        do { return try await api.revokeInvitation(input) }
        catch { throw Self.failure(error) }
    }
    public func listJobs(_ input: Operations.ListJobs.Input) async throws -> Operations.ListJobs.Output {
        do { return try await api.listJobs(input) }
        catch { throw Self.failure(error) }
    }
    public func createJob(_ input: Operations.CreateJob.Input) async throws -> Operations.CreateJob.Output {
        do { return try await api.createJob(input) }
        catch { throw Self.failure(error) }
    }
    public func getJob(_ input: Operations.GetJob.Input) async throws -> Operations.GetJob.Output {
        do { return try await api.getJob(input) }
        catch { throw Self.failure(error) }
    }
    public func updateJob(_ input: Operations.UpdateJob.Input) async throws -> Operations.UpdateJob.Output {
        do { return try await api.updateJob(input) }
        catch { throw Self.failure(error) }
    }
    public func assignJob(_ input: Operations.AssignJob.Input) async throws -> Operations.AssignJob.Output {
        do { return try await api.assignJob(input) }
        catch { throw Self.failure(error) }
    }
    public func unassignJob(_ input: Operations.UnassignJob.Input) async throws -> Operations.UnassignJob.Output {
        do { return try await api.unassignJob(input) }
        catch { throw Self.failure(error) }
    }
    public func cancelJob(_ input: Operations.CancelJob.Input) async throws -> Operations.CancelJob.Output {
        do { return try await api.cancelJob(input) }
        catch { throw Self.failure(error) }
    }
    public func registerJobCharger(_ input: Operations.RegisterJobCharger.Input) async throws -> Operations.RegisterJobCharger.Output {
        do { return try await api.registerJobCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func setCheckNote(_ input: Operations.SetCheckNote.Input) async throws -> Operations.SetCheckNote.Output {
        do { return try await api.setCheckNote(input) }
        catch { throw Self.failure(error) }
    }
    public func getJobEaseeCommissioning(_ input: Operations.GetJobEaseeCommissioning.Input) async throws -> Operations.GetJobEaseeCommissioning.Output {
        do { return try await api.getJobEaseeCommissioning(input) }
        catch { throw Self.failure(error) }
    }
    public func retryJobEaseeCommissioning(_ input: Operations.RetryJobEaseeCommissioning.Input) async throws -> Operations.RetryJobEaseeCommissioning.Output {
        do { return try await api.retryJobEaseeCommissioning(input) }
        catch { throw Self.failure(error) }
    }
    public func applyJobEaseeMapping(_ input: Operations.ApplyJobEaseeMapping.Input) async throws -> Operations.ApplyJobEaseeMapping.Output {
        do { return try await api.applyJobEaseeMapping(input) }
        catch { throw Self.failure(error) }
    }
    public func getJobEaseeTopology(_ input: Operations.GetJobEaseeTopology.Input) async throws -> Operations.GetJobEaseeTopology.Output {
        do { return try await api.getJobEaseeTopology(input) }
        catch { throw Self.failure(error) }
    }
    public func pairJobEaseeSite(_ input: Operations.PairJobEaseeSite.Input) async throws -> Operations.PairJobEaseeSite.Output {
        do { return try await api.pairJobEaseeSite(input) }
        catch { throw Self.failure(error) }
    }
    public func waiveExpectedCharger(_ input: Operations.WaiveExpectedCharger.Input) async throws -> Operations.WaiveExpectedCharger.Output {
        do { return try await api.waiveExpectedCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func resendHandoverLink(_ input: Operations.ResendHandoverLink.Input) async throws -> Operations.ResendHandoverLink.Output {
        do { return try await api.resendHandoverLink(input) }
        catch { throw Self.failure(error) }
    }
    public func createJobLocation(_ input: Operations.CreateJobLocation.Input) async throws -> Operations.CreateJobLocation.Output {
        do { return try await api.createJobLocation(input) }
        catch { throw Self.failure(error) }
    }
    public func markReadyForHandover(_ input: Operations.MarkReadyForHandover.Input) async throws -> Operations.MarkReadyForHandover.Output {
        do { return try await api.markReadyForHandover(input) }
        catch { throw Self.failure(error) }
    }
    public func withdrawReadiness(_ input: Operations.WithdrawReadiness.Input) async throws -> Operations.WithdrawReadiness.Output {
        do { return try await api.withdrawReadiness(input) }
        catch { throw Self.failure(error) }
    }
    public func listMembers(_ input: Operations.ListMembers.Input) async throws -> Operations.ListMembers.Output {
        do { return try await api.listMembers(input) }
        catch { throw Self.failure(error) }
    }
    public func addMember(_ input: Operations.AddMember.Input) async throws -> Operations.AddMember.Output {
        do { return try await api.addMember(input) }
        catch { throw Self.failure(error) }
    }
    public func getMyMembership(_ input: Operations.GetMyMembership.Input) async throws -> Operations.GetMyMembership.Output {
        do { return try await api.getMyMembership(input) }
        catch { throw Self.failure(error) }
    }
    public func leaveOrganization(_ input: Operations.LeaveOrganization.Input) async throws -> Operations.LeaveOrganization.Output {
        do { return try await api.leaveOrganization(input) }
        catch { throw Self.failure(error) }
    }
    public func getMyBindings(_ input: Operations.GetMyBindings.Input) async throws -> Operations.GetMyBindings.Output {
        do { return try await api.getMyBindings(input) }
        catch { throw Self.failure(error) }
    }
    public func removeMember(_ input: Operations.RemoveMember.Input) async throws -> Operations.RemoveMember.Output {
        do { return try await api.removeMember(input) }
        catch { throw Self.failure(error) }
    }
    public func listMemberBindings(_ input: Operations.ListMemberBindings.Input) async throws -> Operations.ListMemberBindings.Output {
        do { return try await api.listMemberBindings(input) }
        catch { throw Self.failure(error) }
    }
    public func attachMemberBinding(_ input: Operations.AttachMemberBinding.Input) async throws -> Operations.AttachMemberBinding.Output {
        do { return try await api.attachMemberBinding(input) }
        catch { throw Self.failure(error) }
    }
    public func detachMemberBinding(_ input: Operations.DetachMemberBinding.Input) async throws -> Operations.DetachMemberBinding.Output {
        do { return try await api.detachMemberBinding(input) }
        catch { throw Self.failure(error) }
    }
    public func transferOwnership(_ input: Operations.TransferOwnership.Input) async throws -> Operations.TransferOwnership.Output {
        do { return try await api.transferOwnership(input) }
        catch { throw Self.failure(error) }
    }
    public func getPaymentsAccount(_ input: Operations.GetPaymentsAccount.Input) async throws -> Operations.GetPaymentsAccount.Output {
        do { return try await api.getPaymentsAccount(input) }
        catch { throw Self.failure(error) }
    }
    public func createPaymentsAccount(_ input: Operations.CreatePaymentsAccount.Input) async throws -> Operations.CreatePaymentsAccount.Output {
        do { return try await api.createPaymentsAccount(input) }
        catch { throw Self.failure(error) }
    }
    public func deletePaymentsAccount(_ input: Operations.DeletePaymentsAccount.Input) async throws -> Operations.DeletePaymentsAccount.Output {
        do { return try await api.deletePaymentsAccount(input) }
        catch { throw Self.failure(error) }
    }
    public func createPaymentsAccountSession(_ input: Operations.CreatePaymentsAccountSession.Input) async throws -> Operations.CreatePaymentsAccountSession.Output {
        do { return try await api.createPaymentsAccountSession(input) }
        catch { throw Self.failure(error) }
    }
    public func listPermissionPolicies(_ input: Operations.ListPermissionPolicies.Input) async throws -> Operations.ListPermissionPolicies.Output {
        do { return try await api.listPermissionPolicies(input) }
        catch { throw Self.failure(error) }
    }
    public func createPermissionPolicy(_ input: Operations.CreatePermissionPolicy.Input) async throws -> Operations.CreatePermissionPolicy.Output {
        do { return try await api.createPermissionPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func explainPermission(_ input: Operations.ExplainPermission.Input) async throws -> Operations.ExplainPermission.Output {
        do { return try await api.explainPermission(input) }
        catch { throw Self.failure(error) }
    }
    public func simulateBindings(_ input: Operations.SimulateBindings.Input) async throws -> Operations.SimulateBindings.Output {
        do { return try await api.simulateBindings(input) }
        catch { throw Self.failure(error) }
    }
    public func getPermissionPolicy(_ input: Operations.GetPermissionPolicy.Input) async throws -> Operations.GetPermissionPolicy.Output {
        do { return try await api.getPermissionPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func updatePermissionPolicy(_ input: Operations.UpdatePermissionPolicy.Input) async throws -> Operations.UpdatePermissionPolicy.Output {
        do { return try await api.updatePermissionPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func deletePermissionPolicy(_ input: Operations.DeletePermissionPolicy.Input) async throws -> Operations.DeletePermissionPolicy.Output {
        do { return try await api.deletePermissionPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func listProjects(_ input: Operations.ListProjects.Input) async throws -> Operations.ListProjects.Output {
        do { return try await api.listProjects(input) }
        catch { throw Self.failure(error) }
    }
    public func createProject(_ input: Operations.CreateProject.Input) async throws -> Operations.CreateProject.Output {
        do { return try await api.createProject(input) }
        catch { throw Self.failure(error) }
    }
    public func getProjectBySlug(_ input: Operations.GetProjectBySlug.Input) async throws -> Operations.GetProjectBySlug.Output {
        do { return try await api.getProjectBySlug(input) }
        catch { throw Self.failure(error) }
    }
    public func listProjectFleetHealth(_ input: Operations.ListProjectFleetHealth.Input) async throws -> Operations.ListProjectFleetHealth.Output {
        do { return try await api.listProjectFleetHealth(input) }
        catch { throw Self.failure(error) }
    }
    public func getProject(_ input: Operations.GetProject.Input) async throws -> Operations.GetProject.Output {
        do { return try await api.getProject(input) }
        catch { throw Self.failure(error) }
    }
    public func updateProject(_ input: Operations.UpdateProject.Input) async throws -> Operations.UpdateProject.Output {
        do { return try await api.updateProject(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteProject(_ input: Operations.DeleteProject.Input) async throws -> Operations.DeleteProject.Output {
        do { return try await api.deleteProject(input) }
        catch { throw Self.failure(error) }
    }
    public func listProjectConnections(_ input: Operations.ListProjectConnections.Input) async throws -> Operations.ListProjectConnections.Output {
        do { return try await api.listProjectConnections(input) }
        catch { throw Self.failure(error) }
    }
    public func setDefaultProject(_ input: Operations.SetDefaultProject.Input) async throws -> Operations.SetDefaultProject.Output {
        do { return try await api.setDefaultProject(input) }
        catch { throw Self.failure(error) }
    }
    public func listPermissions(_ input: Operations.ListPermissions.Input) async throws -> Operations.ListPermissions.Output {
        do { return try await api.listPermissions(input) }
        catch { throw Self.failure(error) }
    }
    public func listCertificates(_ input: Operations.ListCertificates.Input) async throws -> Operations.ListCertificates.Output {
        do { return try await api.listCertificates(input) }
        catch { throw Self.failure(error) }
    }
    public func getHierarchyHealth(_ input: Operations.GetHierarchyHealth.Input) async throws -> Operations.GetHierarchyHealth.Output {
        do { return try await api.getHierarchyHealth(input) }
        catch { throw Self.failure(error) }
    }
    public func unlinkPaymentsAccount(_ input: Operations.UnlinkPaymentsAccount.Input) async throws -> Operations.UnlinkPaymentsAccount.Output {
        do { return try await api.unlinkPaymentsAccount(input) }
        catch { throw Self.failure(error) }
    }
    public func getPrincipal(_ input: Operations.GetPrincipal.Input) async throws -> Operations.GetPrincipal.Output {
        do { return try await api.getPrincipal(input) }
        catch { throw Self.failure(error) }
    }
    public func updatePrincipal(_ input: Operations.UpdatePrincipal.Input) async throws -> Operations.UpdatePrincipal.Output {
        do { return try await api.updatePrincipal(input) }
        catch { throw Self.failure(error) }
    }
    public func erasePrincipal(_ input: Operations.ErasePrincipal.Input) async throws -> Operations.ErasePrincipal.Output {
        do { return try await api.erasePrincipal(input) }
        catch { throw Self.failure(error) }
    }
    public func addPrincipalReference(_ input: Operations.AddPrincipalReference.Input) async throws -> Operations.AddPrincipalReference.Output {
        do { return try await api.addPrincipalReference(input) }
        catch { throw Self.failure(error) }
    }
    public func removePrincipalReference(_ input: Operations.RemovePrincipalReference.Input) async throws -> Operations.RemovePrincipalReference.Output {
        do { return try await api.removePrincipalReference(input) }
        catch { throw Self.failure(error) }
    }
    public func reinstatePrincipal(_ input: Operations.ReinstatePrincipal.Input) async throws -> Operations.ReinstatePrincipal.Output {
        do { return try await api.reinstatePrincipal(input) }
        catch { throw Self.failure(error) }
    }
    public func suspendPrincipal(_ input: Operations.SuspendPrincipal.Input) async throws -> Operations.SuspendPrincipal.Output {
        do { return try await api.suspendPrincipal(input) }
        catch { throw Self.failure(error) }
    }
    public func getProjectAccessPolicy(_ input: Operations.GetProjectAccessPolicy.Input) async throws -> Operations.GetProjectAccessPolicy.Output {
        do { return try await api.getProjectAccessPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func setProjectAccessPolicy(_ input: Operations.SetProjectAccessPolicy.Input) async throws -> Operations.SetProjectAccessPolicy.Output {
        do { return try await api.setProjectAccessPolicy(input) }
        catch { throw Self.failure(error) }
    }
    public func getProjectAuthorizationSettings(_ input: Operations.GetProjectAuthorizationSettings.Input) async throws -> Operations.GetProjectAuthorizationSettings.Output {
        do { return try await api.getProjectAuthorizationSettings(input) }
        catch { throw Self.failure(error) }
    }
    public func updateProjectAuthorizationSettings(_ input: Operations.UpdateProjectAuthorizationSettings.Input) async throws -> Operations.UpdateProjectAuthorizationSettings.Output {
        do { return try await api.updateProjectAuthorizationSettings(input) }
        catch { throw Self.failure(error) }
    }
    public func listProjectBindings(_ input: Operations.ListProjectBindings.Input) async throws -> Operations.ListProjectBindings.Output {
        do { return try await api.listProjectBindings(input) }
        catch { throw Self.failure(error) }
    }
    public func attachProjectBinding(_ input: Operations.AttachProjectBinding.Input) async throws -> Operations.AttachProjectBinding.Output {
        do { return try await api.attachProjectBinding(input) }
        catch { throw Self.failure(error) }
    }
    public func detachProjectBinding(_ input: Operations.DetachProjectBinding.Input) async throws -> Operations.DetachProjectBinding.Output {
        do { return try await api.detachProjectBinding(input) }
        catch { throw Self.failure(error) }
    }
    public func listChargers(_ input: Operations.ListChargers.Input) async throws -> Operations.ListChargers.Output {
        do { return try await api.listChargers(input) }
        catch { throw Self.failure(error) }
    }
    public func createCharger(_ input: Operations.CreateCharger.Input) async throws -> Operations.CreateCharger.Output {
        do { return try await api.createCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func getNeedsAttention(_ input: Operations.GetNeedsAttention.Input) async throws -> Operations.GetNeedsAttention.Output {
        do { return try await api.getNeedsAttention(input) }
        catch { throw Self.failure(error) }
    }
    public func listConnectorsInBadState(_ input: Operations.ListConnectorsInBadState.Input) async throws -> Operations.ListConnectorsInBadState.Output {
        do { return try await api.listConnectorsInBadState(input) }
        catch { throw Self.failure(error) }
    }
    public func getDelegateEndpoint(_ input: Operations.GetDelegateEndpoint.Input) async throws -> Operations.GetDelegateEndpoint.Output {
        do { return try await api.getDelegateEndpoint(input) }
        catch { throw Self.failure(error) }
    }
    public func registerDelegateEndpoint(_ input: Operations.RegisterDelegateEndpoint.Input) async throws -> Operations.RegisterDelegateEndpoint.Output {
        do { return try await api.registerDelegateEndpoint(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteDelegateEndpoint(_ input: Operations.DeleteDelegateEndpoint.Input) async throws -> Operations.DeleteDelegateEndpoint.Output {
        do { return try await api.deleteDelegateEndpoint(input) }
        catch { throw Self.failure(error) }
    }
    public func rotateDelegateEndpointSecret(_ input: Operations.RotateDelegateEndpointSecret.Input) async throws -> Operations.RotateDelegateEndpointSecret.Output {
        do { return try await api.rotateDelegateEndpointSecret(input) }
        catch { throw Self.failure(error) }
    }
    public func listProjectDisplayMessages(_ input: Operations.ListProjectDisplayMessages.Input) async throws -> Operations.ListProjectDisplayMessages.Output {
        do { return try await api.listProjectDisplayMessages(input) }
        catch { throw Self.failure(error) }
    }
    public func getProjectDisplayMessage(_ input: Operations.GetProjectDisplayMessage.Input) async throws -> Operations.GetProjectDisplayMessage.Output {
        do { return try await api.getProjectDisplayMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func putProjectDisplayMessage(_ input: Operations.PutProjectDisplayMessage.Input) async throws -> Operations.PutProjectDisplayMessage.Output {
        do { return try await api.putProjectDisplayMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteProjectDisplayMessage(_ input: Operations.DeleteProjectDisplayMessage.Input) async throws -> Operations.DeleteProjectDisplayMessage.Output {
        do { return try await api.deleteProjectDisplayMessage(input) }
        catch { throw Self.failure(error) }
    }
    public func getEarnings(_ input: Operations.GetEarnings.Input) async throws -> Operations.GetEarnings.Output {
        do { return try await api.getEarnings(input) }
        catch { throw Self.failure(error) }
    }
    public func getCommissioningStatusEasee(_ input: Operations.GetCommissioningStatusEasee.Input) async throws -> Operations.GetCommissioningStatusEasee.Output {
        do { return try await api.getCommissioningStatusEasee(input) }
        catch { throw Self.failure(error) }
    }
    public func retryCommissioningEasee(_ input: Operations.RetryCommissioningEasee.Input) async throws -> Operations.RetryCommissioningEasee.Output {
        do { return try await api.retryCommissioningEasee(input) }
        catch { throw Self.failure(error) }
    }
    public func applyEaseeMapping(_ input: Operations.ApplyEaseeMapping.Input) async throws -> Operations.ApplyEaseeMapping.Output {
        do { return try await api.applyEaseeMapping(input) }
        catch { throw Self.failure(error) }
    }
    public func reconcileEasee(_ input: Operations.ReconcileEasee.Input) async throws -> Operations.ReconcileEasee.Output {
        do { return try await api.reconcileEasee(input) }
        catch { throw Self.failure(error) }
    }
    public func getEaseeTopology(_ input: Operations.GetEaseeTopology.Input) async throws -> Operations.GetEaseeTopology.Output {
        do { return try await api.getEaseeTopology(input) }
        catch { throw Self.failure(error) }
    }
    public func unlinkEasee(_ input: Operations.UnlinkEasee.Input) async throws -> Operations.UnlinkEasee.Output {
        do { return try await api.unlinkEasee(input) }
        catch { throw Self.failure(error) }
    }
    public func getEaseeLocationClaim(_ input: Operations.GetEaseeLocationClaim.Input) async throws -> Operations.GetEaseeLocationClaim.Output {
        do { return try await api.getEaseeLocationClaim(input) }
        catch { throw Self.failure(error) }
    }
    public func pairEasee(_ input: Operations.PairEasee.Input) async throws -> Operations.PairEasee.Output {
        do { return try await api.pairEasee(input) }
        catch { throw Self.failure(error) }
    }
    public func getProjectEnergyCost(_ input: Operations.GetProjectEnergyCost.Input) async throws -> Operations.GetProjectEnergyCost.Output {
        do { return try await api.getProjectEnergyCost(input) }
        catch { throw Self.failure(error) }
    }
    public func getProjectFleetHealth(_ input: Operations.GetProjectFleetHealth.Input) async throws -> Operations.GetProjectFleetHealth.Output {
        do { return try await api.getProjectFleetHealth(input) }
        catch { throw Self.failure(error) }
    }
    public func listIdTokens(_ input: Operations.ListIdTokens.Input) async throws -> Operations.ListIdTokens.Output {
        do { return try await api.listIdTokens(input) }
        catch { throw Self.failure(error) }
    }
    public func createIdToken(_ input: Operations.CreateIdToken.Input) async throws -> Operations.CreateIdToken.Output {
        do { return try await api.createIdToken(input) }
        catch { throw Self.failure(error) }
    }
    public func batchEnrolIdTokens(_ input: Operations.BatchEnrolIdTokens.Input) async throws -> Operations.BatchEnrolIdTokens.Output {
        do { return try await api.batchEnrolIdTokens(input) }
        catch { throw Self.failure(error) }
    }
    public func listIdTokensByExternalUserId(_ input: Operations.ListIdTokensByExternalUserId.Input) async throws -> Operations.ListIdTokensByExternalUserId.Output {
        do { return try await api.listIdTokensByExternalUserId(input) }
        catch { throw Self.failure(error) }
    }
    public func listIdTokensInGroup(_ input: Operations.ListIdTokensInGroup.Input) async throws -> Operations.ListIdTokensInGroup.Output {
        do { return try await api.listIdTokensInGroup(input) }
        catch { throw Self.failure(error) }
    }
    public func streamLiveEvents(_ input: Operations.StreamLiveEvents.Input) async throws -> Operations.StreamLiveEvents.Output {
        do { return try await api.streamLiveEvents(input) }
        catch { throw Self.failure(error) }
    }
    public func listLocations(_ input: Operations.ListLocations.Input) async throws -> Operations.ListLocations.Output {
        do { return try await api.listLocations(input) }
        catch { throw Self.failure(error) }
    }
    public func createLocation(_ input: Operations.CreateLocation.Input) async throws -> Operations.CreateLocation.Output {
        do { return try await api.createLocation(input) }
        catch { throw Self.failure(error) }
    }
    public func getMyProjectPermissions(_ input: Operations.GetMyProjectPermissions.Input) async throws -> Operations.GetMyProjectPermissions.Output {
        do { return try await api.getMyProjectPermissions(input) }
        catch { throw Self.failure(error) }
    }
    public func getPlannedSchedule(_ input: Operations.GetPlannedSchedule.Input) async throws -> Operations.GetPlannedSchedule.Output {
        do { return try await api.getPlannedSchedule(input) }
        catch { throw Self.failure(error) }
    }
    public func listPrincipals(_ input: Operations.ListPrincipals.Input) async throws -> Operations.ListPrincipals.Output {
        do { return try await api.listPrincipals(input) }
        catch { throw Self.failure(error) }
    }
    public func createPrincipal(_ input: Operations.CreatePrincipal.Input) async throws -> Operations.CreatePrincipal.Output {
        do { return try await api.createPrincipal(input) }
        catch { throw Self.failure(error) }
    }
    public func getPrincipalByReference(_ input: Operations.GetPrincipalByReference.Input) async throws -> Operations.GetPrincipalByReference.Output {
        do { return try await api.getPrincipalByReference(input) }
        catch { throw Self.failure(error) }
    }
    public func upsertPrincipalByReference(_ input: Operations.UpsertPrincipalByReference.Input) async throws -> Operations.UpsertPrincipalByReference.Output {
        do { return try await api.upsertPrincipalByReference(input) }
        catch { throw Self.failure(error) }
    }
    public func getStatementMonth(_ input: Operations.GetStatementMonth.Input) async throws -> Operations.GetStatementMonth.Output {
        do { return try await api.getStatementMonth(input) }
        catch { throw Self.failure(error) }
    }
    public func getStatementDestination(_ input: Operations.GetStatementDestination.Input) async throws -> Operations.GetStatementDestination.Output {
        do { return try await api.getStatementDestination(input) }
        catch { throw Self.failure(error) }
    }
    public func putStatementDestination(_ input: Operations.PutStatementDestination.Input) async throws -> Operations.PutStatementDestination.Output {
        do { return try await api.putStatementDestination(input) }
        catch { throw Self.failure(error) }
    }
    public func listStatementMonths(_ input: Operations.ListStatementMonths.Input) async throws -> Operations.ListStatementMonths.Output {
        do { return try await api.listStatementMonths(input) }
        catch { throw Self.failure(error) }
    }
    public func closeStatementMonth(_ input: Operations.CloseStatementMonth.Input) async throws -> Operations.CloseStatementMonth.Output {
        do { return try await api.closeStatementMonth(input) }
        catch { throw Self.failure(error) }
    }
    public func downloadMonthLedgerCsv(_ input: Operations.DownloadMonthLedgerCsv.Input) async throws -> Operations.DownloadMonthLedgerCsv.Output {
        do { return try await api.downloadMonthLedgerCsv(input) }
        catch { throw Self.failure(error) }
    }
    public func getStatementResident(_ input: Operations.GetStatementResident.Input) async throws -> Operations.GetStatementResident.Output {
        do { return try await api.getStatementResident(input) }
        catch { throw Self.failure(error) }
    }
    public func downloadResidentQuartersCsv(_ input: Operations.DownloadResidentQuartersCsv.Input) async throws -> Operations.DownloadResidentQuartersCsv.Output {
        do { return try await api.downloadResidentQuartersCsv(input) }
        catch { throw Self.failure(error) }
    }
    public func downloadResidentStatementPdf(_ input: Operations.DownloadResidentStatementPdf.Input) async throws -> Operations.DownloadResidentStatementPdf.Output {
        do { return try await api.downloadResidentStatementPdf(input) }
        catch { throw Self.failure(error) }
    }
    public func listProjectStatusHistory(_ input: Operations.ListProjectStatusHistory.Input) async throws -> Operations.ListProjectStatusHistory.Output {
        do { return try await api.listProjectStatusHistory(input) }
        catch { throw Self.failure(error) }
    }
    public func getProjectSupplyContract(_ input: Operations.GetProjectSupplyContract.Input) async throws -> Operations.GetProjectSupplyContract.Output {
        do { return try await api.getProjectSupplyContract(input) }
        catch { throw Self.failure(error) }
    }
    public func putProjectSupplyContract(_ input: Operations.PutProjectSupplyContract.Input) async throws -> Operations.PutProjectSupplyContract.Output {
        do { return try await api.putProjectSupplyContract(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteProjectSupplyContract(_ input: Operations.DeleteProjectSupplyContract.Input) async throws -> Operations.DeleteProjectSupplyContract.Output {
        do { return try await api.deleteProjectSupplyContract(input) }
        catch { throw Self.failure(error) }
    }
    public func listTariffAssignments(_ input: Operations.ListTariffAssignments.Input) async throws -> Operations.ListTariffAssignments.Output {
        do { return try await api.listTariffAssignments(input) }
        catch { throw Self.failure(error) }
    }
    public func clearTariffAssignment(_ input: Operations.ClearTariffAssignment.Input) async throws -> Operations.ClearTariffAssignment.Output {
        do { return try await api.clearTariffAssignment(input) }
        catch { throw Self.failure(error) }
    }
    public func listTariffs(_ input: Operations.ListTariffs.Input) async throws -> Operations.ListTariffs.Output {
        do { return try await api.listTariffs(input) }
        catch { throw Self.failure(error) }
    }
    public func createTariff(_ input: Operations.CreateTariff.Input) async throws -> Operations.CreateTariff.Output {
        do { return try await api.createTariff(input) }
        catch { throw Self.failure(error) }
    }
    public func assignTariff(_ input: Operations.AssignTariff.Input) async throws -> Operations.AssignTariff.Output {
        do { return try await api.assignTariff(input) }
        catch { throw Self.failure(error) }
    }
    public func listTariffVersions(_ input: Operations.ListTariffVersions.Input) async throws -> Operations.ListTariffVersions.Output {
        do { return try await api.listTariffVersions(input) }
        catch { throw Self.failure(error) }
    }
    public func listProjectTransactions(_ input: Operations.ListProjectTransactions.Input) async throws -> Operations.ListProjectTransactions.Output {
        do { return try await api.listProjectTransactions(input) }
        catch { throw Self.failure(error) }
    }
    public func exportTransactions(_ input: Operations.ExportTransactions.Input) async throws -> Operations.ExportTransactions.Output {
        do { return try await api.exportTransactions(input) }
        catch { throw Self.failure(error) }
    }
    public func summarizeProjectTransactions(_ input: Operations.SummarizeProjectTransactions.Input) async throws -> Operations.SummarizeProjectTransactions.Output {
        do { return try await api.summarizeProjectTransactions(input) }
        catch { throw Self.failure(error) }
    }
    public func listVehicleConnections(_ input: Operations.ListVehicleConnections.Input) async throws -> Operations.ListVehicleConnections.Output {
        do { return try await api.listVehicleConnections(input) }
        catch { throw Self.failure(error) }
    }
    public func startVehicleConnection(_ input: Operations.StartVehicleConnection.Input) async throws -> Operations.StartVehicleConnection.Output {
        do { return try await api.startVehicleConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func disconnectVehicleConnection(_ input: Operations.DisconnectVehicleConnection.Input) async throws -> Operations.DisconnectVehicleConnection.Output {
        do { return try await api.disconnectVehicleConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func discoverVehicles(_ input: Operations.DiscoverVehicles.Input) async throws -> Operations.DiscoverVehicles.Output {
        do { return try await api.discoverVehicles(input) }
        catch { throw Self.failure(error) }
    }
    public func addVehicles(_ input: Operations.AddVehicles.Input) async throws -> Operations.AddVehicles.Output {
        do { return try await api.addVehicles(input) }
        catch { throw Self.failure(error) }
    }
    public func listVehicles(_ input: Operations.ListVehicles.Input) async throws -> Operations.ListVehicles.Output {
        do { return try await api.listVehicles(input) }
        catch { throw Self.failure(error) }
    }
    public func getVehicle(_ input: Operations.GetVehicle.Input) async throws -> Operations.GetVehicle.Output {
        do { return try await api.getVehicle(input) }
        catch { throw Self.failure(error) }
    }
    public func renameVehicle(_ input: Operations.RenameVehicle.Input) async throws -> Operations.RenameVehicle.Output {
        do { return try await api.renameVehicle(input) }
        catch { throw Self.failure(error) }
    }
    public func removeVehicle(_ input: Operations.RemoveVehicle.Input) async throws -> Operations.RemoveVehicle.Output {
        do { return try await api.removeVehicle(input) }
        catch { throw Self.failure(error) }
    }
    public func getVehicleAbout(_ input: Operations.GetVehicleAbout.Input) async throws -> Operations.GetVehicleAbout.Output {
        do { return try await api.getVehicleAbout(input) }
        catch { throw Self.failure(error) }
    }
    public func listVehicleAssignees(_ input: Operations.ListVehicleAssignees.Input) async throws -> Operations.ListVehicleAssignees.Output {
        do { return try await api.listVehicleAssignees(input) }
        catch { throw Self.failure(error) }
    }
    public func setVehicleAssignees(_ input: Operations.SetVehicleAssignees.Input) async throws -> Operations.SetVehicleAssignees.Output {
        do { return try await api.setVehicleAssignees(input) }
        catch { throw Self.failure(error) }
    }
    public func enterCapacity(_ input: Operations.EnterCapacity.Input) async throws -> Operations.EnterCapacity.Output {
        do { return try await api.enterCapacity(input) }
        catch { throw Self.failure(error) }
    }
    public func listVehicleSessions(_ input: Operations.ListVehicleSessions.Input) async throws -> Operations.ListVehicleSessions.Output {
        do { return try await api.listVehicleSessions(input) }
        catch { throw Self.failure(error) }
    }
    public func listVirtualChargers(_ input: Operations.ListVirtualChargers.Input) async throws -> Operations.ListVirtualChargers.Output {
        do { return try await api.listVirtualChargers(input) }
        catch { throw Self.failure(error) }
    }
    public func spawnVirtualCharger(_ input: Operations.SpawnVirtualCharger.Input) async throws -> Operations.SpawnVirtualCharger.Output {
        do { return try await api.spawnVirtualCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func getVirtualChargerCatalog(_ input: Operations.GetVirtualChargerCatalog.Input) async throws -> Operations.GetVirtualChargerCatalog.Output {
        do { return try await api.getVirtualChargerCatalog(input) }
        catch { throw Self.failure(error) }
    }
    public func listWebhooks(_ input: Operations.ListWebhooks.Input) async throws -> Operations.ListWebhooks.Output {
        do { return try await api.listWebhooks(input) }
        catch { throw Self.failure(error) }
    }
    public func createWebhook(_ input: Operations.CreateWebhook.Input) async throws -> Operations.CreateWebhook.Output {
        do { return try await api.createWebhook(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteWebhook(_ input: Operations.DeleteWebhook.Input) async throws -> Operations.DeleteWebhook.Output {
        do { return try await api.deleteWebhook(input) }
        catch { throw Self.failure(error) }
    }
    public func listWebhookDeliveries(_ input: Operations.ListWebhookDeliveries.Input) async throws -> Operations.ListWebhookDeliveries.Output {
        do { return try await api.listWebhookDeliveries(input) }
        catch { throw Self.failure(error) }
    }
    public func replayDelivery(_ input: Operations.ReplayDelivery.Input) async throws -> Operations.ReplayDelivery.Output {
        do { return try await api.replayDelivery(input) }
        catch { throw Self.failure(error) }
    }
    public func reactivateWebhook(_ input: Operations.ReactivateWebhook.Input) async throws -> Operations.ReactivateWebhook.Output {
        do { return try await api.reactivateWebhook(input) }
        catch { throw Self.failure(error) }
    }
    public func rotateWebhookSecret(_ input: Operations.RotateWebhookSecret.Input) async throws -> Operations.RotateWebhookSecret.Output {
        do { return try await api.rotateWebhookSecret(input) }
        catch { throw Self.failure(error) }
    }
    public func sendTestDelivery(_ input: Operations.SendTestDelivery.Input) async throws -> Operations.SendTestDelivery.Output {
        do { return try await api.sendTestDelivery(input) }
        catch { throw Self.failure(error) }
    }
    public func whoCanChargeAtProject(_ input: Operations.WhoCanChargeAtProject.Input) async throws -> Operations.WhoCanChargeAtProject.Output {
        do { return try await api.whoCanChargeAtProject(input) }
        catch { throw Self.failure(error) }
    }
    public func getTransaction(_ input: Operations.GetTransaction.Input) async throws -> Operations.GetTransaction.Output {
        do { return try await api.getTransaction(input) }
        catch { throw Self.failure(error) }
    }
    public func getTransactionCost(_ input: Operations.GetTransactionCost.Input) async throws -> Operations.GetTransactionCost.Output {
        do { return try await api.getTransactionCost(input) }
        catch { throw Self.failure(error) }
    }
    public func getSessionDeadline(_ input: Operations.GetSessionDeadline.Input) async throws -> Operations.GetSessionDeadline.Output {
        do { return try await api.getSessionDeadline(input) }
        catch { throw Self.failure(error) }
    }
    public func setSessionDeadline(_ input: Operations.SetSessionDeadline.Input) async throws -> Operations.SetSessionDeadline.Output {
        do { return try await api.setSessionDeadline(input) }
        catch { throw Self.failure(error) }
    }
    public func clearSessionDeadline(_ input: Operations.ClearSessionDeadline.Input) async throws -> Operations.ClearSessionDeadline.Output {
        do { return try await api.clearSessionDeadline(input) }
        catch { throw Self.failure(error) }
    }
    public func getTransactionEnergyCost(_ input: Operations.GetTransactionEnergyCost.Input) async throws -> Operations.GetTransactionEnergyCost.Output {
        do { return try await api.getTransactionEnergyCost(input) }
        catch { throw Self.failure(error) }
    }
    public func listTransactionEvents(_ input: Operations.ListTransactionEvents.Input) async throws -> Operations.ListTransactionEvents.Output {
        do { return try await api.listTransactionEvents(input) }
        catch { throw Self.failure(error) }
    }
    public func setTransactionLimit(_ input: Operations.SetTransactionLimit.Input) async throws -> Operations.SetTransactionLimit.Output {
        do { return try await api.setTransactionLimit(input) }
        catch { throw Self.failure(error) }
    }
    public func changeTransactionTariff(_ input: Operations.ChangeTransactionTariff.Input) async throws -> Operations.ChangeTransactionTariff.Output {
        do { return try await api.changeTransactionTariff(input) }
        catch { throw Self.failure(error) }
    }
    public func completeVehicleConnection(_ input: Operations.CompleteVehicleConnection.Input) async throws -> Operations.CompleteVehicleConnection.Output {
        do { return try await api.completeVehicleConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func deleteVirtualCharger(_ input: Operations.DeleteVirtualCharger.Input) async throws -> Operations.DeleteVirtualCharger.Output {
        do { return try await api.deleteVirtualCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func clearVirtualConnectorFault(_ input: Operations.ClearVirtualConnectorFault.Input) async throws -> Operations.ClearVirtualConnectorFault.Output {
        do { return try await api.clearVirtualConnectorFault(input) }
        catch { throw Self.failure(error) }
    }
    public func faultVirtualConnector(_ input: Operations.FaultVirtualConnector.Input) async throws -> Operations.FaultVirtualConnector.Output {
        do { return try await api.faultVirtualConnector(input) }
        catch { throw Self.failure(error) }
    }
    public func pauseVirtualVehicle(_ input: Operations.PauseVirtualVehicle.Input) async throws -> Operations.PauseVirtualVehicle.Output {
        do { return try await api.pauseVirtualVehicle(input) }
        catch { throw Self.failure(error) }
    }
    public func plugInVirtualVehicle(_ input: Operations.PlugInVirtualVehicle.Input) async throws -> Operations.PlugInVirtualVehicle.Output {
        do { return try await api.plugInVirtualVehicle(input) }
        catch { throw Self.failure(error) }
    }
    public func resumeVirtualVehicle(_ input: Operations.ResumeVirtualVehicle.Input) async throws -> Operations.ResumeVirtualVehicle.Output {
        do { return try await api.resumeVirtualVehicle(input) }
        catch { throw Self.failure(error) }
    }
    public func startVirtualChargerTransaction(_ input: Operations.StartVirtualChargerTransaction.Input) async throws -> Operations.StartVirtualChargerTransaction.Output {
        do { return try await api.startVirtualChargerTransaction(input) }
        catch { throw Self.failure(error) }
    }
    public func stopVirtualChargerTransaction(_ input: Operations.StopVirtualChargerTransaction.Input) async throws -> Operations.StopVirtualChargerTransaction.Output {
        do { return try await api.stopVirtualChargerTransaction(input) }
        catch { throw Self.failure(error) }
    }
    public func unplugVirtualVehicle(_ input: Operations.UnplugVirtualVehicle.Input) async throws -> Operations.UnplugVirtualVehicle.Output {
        do { return try await api.unplugVirtualVehicle(input) }
        catch { throw Self.failure(error) }
    }
    public func dropVirtualChargerConnection(_ input: Operations.DropVirtualChargerConnection.Input) async throws -> Operations.DropVirtualChargerConnection.Output {
        do { return try await api.dropVirtualChargerConnection(input) }
        catch { throw Self.failure(error) }
    }
    public func getVirtualChargerEnd(_ input: Operations.GetVirtualChargerEnd.Input) async throws -> Operations.GetVirtualChargerEnd.Output {
        do { return try await api.getVirtualChargerEnd(input) }
        catch { throw Self.failure(error) }
    }
    public func setVirtualChargerIgnoreLimits(_ input: Operations.SetVirtualChargerIgnoreLimits.Input) async throws -> Operations.SetVirtualChargerIgnoreLimits.Output {
        do { return try await api.setVirtualChargerIgnoreLimits(input) }
        catch { throw Self.failure(error) }
    }
    public func rebootVirtualCharger(_ input: Operations.RebootVirtualCharger.Input) async throws -> Operations.RebootVirtualCharger.Output {
        do { return try await api.rebootVirtualCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func reconnectVirtualCharger(_ input: Operations.ReconnectVirtualCharger.Input) async throws -> Operations.ReconnectVirtualCharger.Output {
        do { return try await api.reconnectVirtualCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func startVirtualCharger(_ input: Operations.StartVirtualCharger.Input) async throws -> Operations.StartVirtualCharger.Output {
        do { return try await api.startVirtualCharger(input) }
        catch { throw Self.failure(error) }
    }
    public func stopVirtualCharger(_ input: Operations.StopVirtualCharger.Input) async throws -> Operations.StopVirtualCharger.Output {
        do { return try await api.stopVirtualCharger(input) }
        catch { throw Self.failure(error) }
    }
}
