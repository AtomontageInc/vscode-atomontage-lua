// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';

export function setUserThirdPartyAllWorkspaceFolders(folder: string, enable: boolean) {
	//if workspace has folders apply setting to each folder workspace individually
	const folders = vscode.workspace.workspaceFolders;
	if (folders){
		folders.forEach(element => {
			const uri = element.uri;
			const config = vscode.workspace.getConfiguration("Lua", uri);
			setUserThirdParty(config, folder, enable);
		});
	}else{
		const config = vscode.workspace.getConfiguration("Lua");
		setUserThirdParty(config, folder, enable);
		
		//this is not a multi root workspace so inform user
		//multiRootInfo();
	}

}

export function setUserThirdParty(config: vscode.WorkspaceConfiguration, folder: string, enable: boolean) {
	// get id like this? context.extension.id
	const extensionId = "AtomontageInc.vscode-atomontage-lua";
	const extensionPath = vscode.extensions.getExtension(extensionId)?.extensionPath;
	const folderPath = extensionPath + "\\" + folder;

	const library: string[] | undefined = config.get("workspace.userThirdParty");
	if (library && extensionPath) {
		// remove any older versions of our path e.g. "publisher.name-0.0.1"
		for (let i = library.length - 1; i >= 0; i--) {
			const el = library[i];
			const isSelfExtension = el.indexOf(extensionId) > -1;
			const isCurrentVersion = el.indexOf(extensionPath) > -1;
			if (isSelfExtension && !isCurrentVersion) {
				library.splice(i, 1);
			}
		}
		const index = library.indexOf(folderPath);
		if (enable) {
			if (index === -1) {
				library.push(folderPath);
			}
		}
		else {
			if (index > -1) {
				library.splice(index, 1);
			}
		}

		config.update("workspace.userThirdParty", library, null);
	}
}

export function multiRootInfo(){
	const ignore = vscode.workspace.getConfiguration("atomontage").get("ignoreMultiRootInfo");
	if (!ignore) {
		vscode.window.showInformationMessage("It is recommended to set up a multi-root workspace for Atomontage projects.", "Info", "Don't show again").then(selection => {
			console.log(selection);
			if (selection === "Don't show again") {
				vscode.workspace.getConfiguration("atomontage").update("ignoreMultiRootInfo", true);
			} else if (selection === "Info") {
				//TODO update to https later
				vscode.env.openExternal(vscode.Uri.parse('http://docs.atomontage.com/using-vs-code#setting-up-your-workspace'));
			}
		});
	}
}

// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {
	setUserThirdPartyAllWorkspaceFolders("am_library", true);
}

// this method is called when your extension is deactivated
export function deactivate() {}
