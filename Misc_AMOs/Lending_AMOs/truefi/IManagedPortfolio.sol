// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.6.11;

interface IManagedPortfolio {
  function allowance ( address owner, address spender ) external view returns ( uint256 );
  function approve ( address spender, uint256 amount ) external returns ( bool );
  function balanceOf ( address account ) external view returns ( uint256 );
  function bulletLoans (  ) external view returns ( address );
  function claimManagement (  ) external;
  function createBulletLoan ( uint256 loanDuration, address borrower, uint256 principalAmount, uint256 repaymentAmount ) external;
  function decimals (  ) external view returns ( uint8 );
  function decreaseAllowance ( address spender, uint256 subtractedValue ) external returns ( bool );
  function defaultedLoansCount (  ) external view returns ( uint256 );
  function deposit ( uint256 depositAmount, bytes memory metadata ) external;
  function endDate (  ) external view returns ( uint256 );
  function getAmountToMint ( uint256 amount ) external view returns ( uint256 );
  function getOpenLoanIds (  ) external view returns ( uint256[] memory );
  function getStatus (  ) external view returns ( uint8 );
  function illiquidValue (  ) external view returns ( uint256 );
  function increaseAllowance ( address spender, uint256 addedValue ) external returns ( bool );
  function initialize ( string memory _name, string memory _symbol, address _manager, address _underlyingToken, address _bulletLoans, address _protocolConfig, address _lenderVerifier, uint256 _duration, uint256 _maxSize, uint256 _managerFee ) external;
  function latestRepaymentDate (  ) external view returns ( uint256 );
  function lenderVerifier (  ) external view returns ( address );
  function liquidValue (  ) external view returns ( uint256 );
  function manager (  ) external view returns ( address );
  function managerFee (  ) external view returns ( uint256 );
  function markLoanAsDefaulted ( uint256 instrumentId ) external;
  function markLoanAsResolved ( uint256 instrumentId ) external;
  function maxSize (  ) external view returns ( uint256 );
  function name (  ) external view returns ( string memory );
  function onERC721Received ( address, address, uint256, bytes memory ) external pure returns ( bytes4 );
  function pendingManager (  ) external view returns ( address );
  function protocolConfig (  ) external view returns ( address );
  function setEndDate ( uint256 newEndDate ) external;
  function setLenderVerifier ( address _lenderVerifier ) external;
  function setManagerFee ( uint256 _managerFee ) external;
  function setMaxSize ( uint256 _maxSize ) external;
  function symbol (  ) external view returns ( string memory );
  function totalDeposited (  ) external view returns ( uint256 );
  function totalSupply (  ) external view returns ( uint256 );
  function transfer ( address recipient, uint256 amount ) external returns ( bool );
  function transferFrom ( address sender, address recipient, uint256 amount ) external returns ( bool );
  function transferManagement ( address newManager ) external;
  function underlyingToken (  ) external view returns ( address );
  function updateLoanParameters ( uint256 instrumentId, uint256 newTotalDebt, uint256 newRepaymentDate, bytes memory borrowerSignature ) external;
  function updateLoanParameters ( uint256 instrumentId, uint256 newTotalDebt, uint256 newRepaymentDate ) external;
  function upgradeTo ( address newImplementation ) external;
  function upgradeToAndCall ( address newImplementation, bytes memory data ) external;
  function value (  ) external view returns ( uint256 );
  function withdraw ( uint256 sharesAmount, bytes memory ) external returns ( uint256 );
}
