import 'package:finalyearproject/settings.dart';
import 'package:flutter/material.dart';


class learning2 extends StatefulWidget {
  @override
  _learning2 createState() => _learning2();
}

class _learning2 extends State<learning2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => settings()));
            },
          ),
        ],
        title: const Text("Blockchain"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
            ),
            const Center(
              child: Text("Lets learn about Blockchain!", style: TextStyle(fontSize: 25.0, decoration: TextDecoration.underline,decorationColor: Colors.black, fontWeight: FontWeight.bold),),
            ),
            const Text("What is the Blockchain?", textAlign: TextAlign.center,),
            const Text("\nA system in which a record of transactions, especially those made in a cryptocurrency, is maintained across computers that are linked in a peer-to-peer network.", textAlign: TextAlign.center),
            const Text("\nBlockchain defined",style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Blockchain is a shared, immutable ledger that facilitates the process of recording transactions and tracking assets in a business network. An asset can be tangible (a house, car, cash, land) or intangible (intellectual property, patents, copyrights, branding). Virtually anything of value can be tracked and traded on a blockchain network, reducing risk and cutting costs for all involved."),
            const Text("\nWhy blockchain is important",style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Business runs on information. The faster it’s received and the more accurate it is, the better. Blockchain is ideal for delivering that information because it provides immediate, shared and completely transparent information stored on an immutable ledger that can be accessed only by permissioned network members. A blockchain network can track orders, payments, accounts, production and much more. And because members share a single view of the truth, you can see all details of a transaction end to end, giving you greater confidence, as well as new efficiencies and opportunities."),
            const Text("\nKey elements of a blockchain", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("•Distributed ledger technology\n•Immutable records\n•Smart contracts"),
            const Text("\nHow blockchain works", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("As each transaction occurs, it is recorded as a “block” of data, each block is connected to the ones before and after it then transactions are blocked together in an irreversible chain: a blockchain."),
            const Text("\nBenefits of Blockchain", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("•Greater trust\n•Greater security\n•More efficiencies"),
            const Text("\nPublic blockchain networks", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("A public blockchain is one that anyone can join and participate in, such as Bitcoin. Drawbacks might include substantial computational power required, little or no privacy for transactions, and weak security. These are important considerations for enterprise use cases of blockchain."),
            const Text("\nPrivate blockchain networks", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("A private blockchain network, similar to a public blockchain network, is a decentralized peer-to-peer network. However, one organization governs the network, controlling who is allowed to participate, execute a consensus protocol and maintain the shared ledger. Depending on the use case, this can significantly boost trust and confidence between participants. A private blockchain can be run behind a corporate firewall and even be hosted on premises."),
            const Text("\nPermissioned blockchain networks", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Businesses who set up a private blockchain will generally set up a permissioned blockchain network. It is important to note that public blockchain networks can also be permissioned. This places restrictions on who is allowed to participate in the network and in what transactions. Participants need to obtain an invitation or permission to join."),
            const Text("\nConsortium blockchains", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Multiple organizations can share the responsibilities of maintaining a blockchain. These pre-selected organizations determine who may submit transactions or access the data. A consortium blockchain is ideal for business when all participants need to be permissioned and have a shared responsibility for the blockchain."),
          ],
        ),
      ),
    );
  }
}

