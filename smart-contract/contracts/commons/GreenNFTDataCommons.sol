pragma solidity 0.6.12;

import { GreenNFT } from "../GreenNFT.sol";


contract GreenNFTDataCommons {

    ///---------------------------
    /// Storages
    ///---------------------------
    Project[] public projects;

    Claim[] public claims;

    GreenNFTMetadata[] public greenNFTMetadatas;

    GreenNFTEmissonData[] public greenNFTEmissonDatas;


    ///---------------------------
    /// Objects
    ///---------------------------
    enum GreenNFTStatus { Audited, Sale, NotSale }

    struct Project {
        address projectOwner;
        string projectName;
        uint co2Emissions;
    }
   
    /// @notice - CO2 reduction claim from a project
    struct Claim {
        uint projectId;            /// This is projectId for the Project struct (Index is projectId - 1)
        uint co2Reductions;
        string referenceDocument;  /// IPFS hash
    }

    /// @notice - Metadata of a GreenNFT of a project
    struct GreenNFTMetadata {  /// [Key]: index of array
        uint projectId;
        uint claimId;              /// This is claimId for the Claim struct (Index is claimId - 1)
        GreenNFT greenNFT;
        address projectOwner;
        address auditor;
        string auditedReport;      /// IPFS hash
        GreenNFTStatus greenNFTStatus;  /// "Audited" or "Sale" or "Not Sale"
    }

    /// @notice - Emission data of a GreenNFT of a project
    struct GreenNFTEmissonData {  /// [Key]: index of array
        uint co2Emissions;
        uint co2Reductions;
        uint carbonCredits;        /// CO2 emissions - CO2 reductions
        uint buyableCarbonCredits;
    }


    ///---------------------------
    /// Events
    ///---------------------------
}

