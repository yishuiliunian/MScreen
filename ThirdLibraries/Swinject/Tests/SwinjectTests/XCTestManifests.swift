#if !canImport(ObjectiveC)
import XCTest

extension AssemblerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__AssemblerTests = [
        ("testAssemblerAssemblesLazyBuild", testAssemblerAssemblesLazyBuild),
        ("testAssemblerCanAssembleContainerWithNilParent", testAssemblerCanAssembleContainerWithNilParent),
        ("testAssemblerCanAssembleContainerWithNilParentAndAssemblies", testAssemblerCanAssembleContainerWithNilParentAndAssemblies),
        ("testAssemblerCanAssembleMultipleContainers", testAssemblerCanAssembleMultipleContainers),
        ("testAssemblerCanAssembleMultipleContainersAtOnce", testAssemblerCanAssembleMultipleContainersAtOnce),
        ("testAssemblerCanAssembleMultipleContainersOneByOne", testAssemblerCanAssembleMultipleContainersOneByOne),
        ("testAssemblerCanAssembleMultipleContainersWithInterDependencies", testAssemblerCanAssembleMultipleContainersWithInterDependencies),
        ("testAssemblerCanAssembleMultipleContainersWithInterDependenciesInAnyOrder", testAssemblerCanAssembleMultipleContainersWithInterDependenciesInAnyOrder),
        ("testAssemblerCanAssembleSingleContainer", testAssemblerCanAssembleSingleContainer),
        ("testAssemblerCanAssembleSingleLoadAwareContainer", testAssemblerCanAssembleSingleLoadAwareContainer),
        ("testAssemblerCanCreateEmptyAssemblerAndBuildIt", testAssemblerCanCreateEmptyAssemblerAndBuildIt),
        ("testAssemblerUsesGraphScopeIfNoDefaultObjectScopeIsInjected", testAssemblerUsesGraphScopeIfNoDefaultObjectScopeIsInjected),
        ("testAssemblerUsesInjectedDefaultObjectScope", testAssemblerUsesInjectedDefaultObjectScope),
        ("testChildAssemblerCanBeEmpty", testChildAssemblerCanBeEmpty),
        ("testChildAssemblerCannotGiveEntitiesToParent", testChildAssemblerCannotGiveEntitiesToParent),
        ("testChildAssemblerHasDefaultObjectScopeOfGraphType", testChildAssemblerHasDefaultObjectScopeOfGraphType),
        ("testChildAssemblerUsesGivenListOfBehaviorsBeforeApplyingAssemblies", testChildAssemblerUsesGivenListOfBehaviorsBeforeApplyingAssemblies),
        ("testChildAssemblerUsesGivenListOfBehaviorsToContainer", testChildAssemblerUsesGivenListOfBehaviorsToContainer),
        ("testChildAssemblerUsesInjectedDefaultObjectScope", testChildAssemblerUsesInjectedDefaultObjectScope),
        ("testLoadAwareAssemblyCanAssembleMultipleContainers", testLoadAwareAssemblyCanAssembleMultipleContainers),
        ("testLoadAwareAssemblyCanAssembleSingleContainer", testLoadAwareAssemblyCanAssembleSingleContainer),
    ]
}

extension ContainerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ContainerTests = [
        ("testContainerAcceptsInitializerInjection", testContainerAcceptsInitializerInjection),
        ("testContainerAcceptsMethodInjectionInInitCompletedEvent", testContainerAcceptsMethodInjectionInInitCompletedEvent),
        ("testContainerAcceptsMethodInjectionInRegistration", testContainerAcceptsMethodInjectionInRegistration),
        ("testContainerAcceptsPropertyInjectionInInitCompletedEvent", testContainerAcceptsPropertyInjectionInInitCompletedEvent),
        ("testContainerAfcceptsPropertyInjectionInRegistration", testContainerAfcceptsPropertyInjectionInRegistration),
        ("testContainerCanRemoveAllRegisteredServices", testContainerCanRemoveAllRegisteredServices),
        ("testContainerDoesNotCreateZombies", testContainerDoesNotCreateZombies),
        ("testContainerDoesNotHaveSharedObjectInContainerWithGraphScope", testContainerDoesNotHaveSharedObjectInContainerWithGraphScope),
        ("testContainerDoesNotHaveSharedObjectInContainerWithTransientScope", testContainerDoesNotHaveSharedObjectInContainerWithTransientScope),
        ("testContainerDoesNotMaintainStrongReferenceToObjectWithWeakScope", testContainerDoesNotMaintainStrongReferenceToObjectWithWeakScope),
        ("testContainerDoesNotResolveServiceRegistredOnChildContainer", testContainerDoesNotResolveServiceRegistredOnChildContainer),
        ("testContainerRaisesInitCompletedEventForAllSubscribedClosuresWhenNewInstanceIsCreated", testContainerRaisesInitCompletedEventForAllSubscribedClosuresWhenNewInstanceIsCreated),
        ("testContainerRaisesInitCompletedEventWhenNewInstanceIsCreated", testContainerRaisesInitCompletedEventWhenNewInstanceIsCreated),
        ("testContainerRegistersServiceWithGivenObjectScope", testContainerRegistersServiceWithGivenObjectScope),
        ("testContainerResolvesByArguments", testContainerResolvesByArguments),
        ("testContainerResolvesByRegisteredName", testContainerResolvesByRegisteredName),
        ("testContainerResolvesOnlyOnceToSimulateSingletonIfObjectScopeIsContainerOrHierarchy", testContainerResolvesOnlyOnceToSimulateSingletonIfObjectScopeIsContainerOrHierarchy),
        ("testContainerResolvesRegistredSubclassOfServiceYypeClass", testContainerResolvesRegistredSubclassOfServiceYypeClass),
        ("testContainerResolvesSelfBindingWithDependencyInjected", testContainerResolvesSelfBindingWithDependencyInjected),
        ("testContainerResolvesServiceInParentContainerToTheSameObjectInGraphWithContainerScope", testContainerResolvesServiceInParentContainerToTheSameObjectInGraphWithContainerScope),
        ("testContainerResolvesServiceRegisteredOnParentContainer", testContainerResolvesServiceRegisteredOnParentContainer),
        ("testContainerResolvesServiceToNewObjectsInGraphWithTransientScope", testContainerResolvesServiceToNewObjectsInGraphWithTransientScope),
        ("testContainerResolvesServiceToTheSameObjectInGraphWithGraphScope", testContainerResolvesServiceToTheSameObjectInGraphWithGraphScope),
        ("testContainerResolvesStructInstancesDefinedInParentContainerIgnoringObjectScopes", testContainerResolvesStructInstancesDefinedInParentContainerIgnoringObjectScopes),
        ("testContainerResolvesStructInstancesIgnoringObjectScopes", testContainerResolvesStructInstancesIgnoringObjectScopes),
        ("testContainerReturnsNilWithoutRegistration", testContainerReturnsNilWithoutRegistration),
        ("testContainerSharesObjectFromParentContainerToItsChildWithContainerScope", testContainerSharesObjectFromParentContainerToItsChildWithContainerScope),
        ("testContainerSharesObjectInContainerWithWeakScope", testContainerSharesObjectInContainerWithWeakScope),
        ("testContainerSharesObjectInTheOwnContainerWithContainerScope", testContainerSharesObjectInTheOwnContainerWithContainerScope),
        ("testContainerTakesClosureRegisteringServices", testContainerTakesClosureRegisteringServices),
    ]
}

extension ContainerTests_Arguments {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ContainerTests_Arguments = [
        ("testContainierAccepts1Argument", testContainierAccepts1Argument),
        ("testContainierAccepts2Arguments", testContainierAccepts2Arguments),
        ("testContainierAccepts3Arguments", testContainierAccepts3Arguments),
        ("testContainierAccepts4Arguments", testContainierAccepts4Arguments),
        ("testContainierAccepts5Arguments", testContainierAccepts5Arguments),
        ("testContainierAccepts6Arguments", testContainierAccepts6Arguments),
        ("testContainierAccepts7Arguments", testContainierAccepts7Arguments),
        ("testContainierAccepts8Arguments", testContainierAccepts8Arguments),
        ("testContainierAccepts9Arguments", testContainierAccepts9Arguments),
    ]
}

extension ContainerTests_Behavior {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ContainerTests_Behavior = [
        ("testBehaviorShoulBeInvokedUsingProperNameWhenAddingService", testBehaviorShoulBeInvokedUsingProperNameWhenAddingService),
        ("testBehaviorShoulBeInvokedUsingProperNameWhenForwardingService", testBehaviorShoulBeInvokedUsingProperNameWhenForwardingService),
        ("testBehaviorShouldBeInvokedUsingProperTypeWhenAddingService", testBehaviorShouldBeInvokedUsingProperTypeWhenAddingService),
        ("testBehaviorShouldBeInvokedUsingProperTypeWhenForwardingService", testBehaviorShouldBeInvokedUsingProperTypeWhenForwardingService),
        ("testBehaviorShouldBeInvokedWhenAddingService", testBehaviorShouldBeInvokedWhenAddingService),
        ("testBehaviorShouldBeInvokedWhenForwardingService", testBehaviorShouldBeInvokedWhenForwardingService),
        ("testConvenienceInitializerAddsBehaviorsToContainer", testConvenienceInitializerAddsBehaviorsToContainer),
    ]
}

extension ContainerTests_Circularity {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ContainerTests_Circularity = [
        ("testContainerDoesNotDeallocateDuringGraphResolutionWithGraphRootInWeakScope", testContainerDoesNotDeallocateDuringGraphResolutionWithGraphRootInWeakScope),
        ("testContainerResolvesCircularDependencyOneachProperty", testContainerResolvesCircularDependencyOneachProperty),
        ("testContainerResolvesCircularDependencyOnInitializerAndProperty", testContainerResolvesCircularDependencyOnInitializerAndProperty),
        ("testContainerResolvesCircularDependencyOnInitializersAndProperties", testContainerResolvesCircularDependencyOnInitializersAndProperties),
        ("testContainerResolvesCircularDependencyOnProperties", testContainerResolvesCircularDependencyOnProperties),
    ]
}

extension ContainerTests_CustomScope {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ContainerTests_CustomScope = [
        ("testContainerCreatesNewInstanceStorageForEachService", testContainerCreatesNewInstanceStorageForEachService),
        ("testContainerDoesNotRemoveInstancesFromOtherScopes", testContainerDoesNotRemoveInstancesFromOtherScopes),
        ("testContainerRemovesInstanceFromServiceRegisteredInParentContainer", testContainerRemovesInstanceFromServiceRegisteredInParentContainer),
        ("testContainerRemovesInstanceFromServicesInGivenScope", testContainerRemovesInstanceFromServicesInGivenScope),
        ("testContainerReturnsStoredInstanceIfStorageIsNotEmpty", testContainerReturnsStoredInstanceIfStorageIsNotEmpty),
        ("testContainerStoresInstanceToStorageDuringResolution", testContainerStoresInstanceToStorageDuringResolution),
    ]
}

extension ContainerTests_CustomStringConvertible {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ContainerTests_CustomStringConvertible = [
        ("testContainerDescribesEmptyDescriptionWithoutServiceRegistrations", testContainerDescribesEmptyDescriptionWithoutServiceRegistrations),
        ("testContainerDescribesMultipleRegistrations", testContainerDescribesMultipleRegistrations),
        ("testContainerDescribesRegistration", testContainerDescribesRegistration),
        ("testContainerDescribesRegistrationWithArguments", testContainerDescribesRegistrationWithArguments),
        ("testContainerDescribesRegistrationWithInitCompleted", testContainerDescribesRegistrationWithInitCompleted),
        ("testContainerDescribesRegistrationWithName", testContainerDescribesRegistrationWithName),
        ("testContainerDescribesRegistrationWithSpecifiedObjectScope", testContainerDescribesRegistrationWithSpecifiedObjectScope),
    ]
}

extension ContainerTests_DebugHelper {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ContainerTests_DebugHelper = [
        ("testContainerShouldCallDebugHelperWithFailingServiceAndKey", testContainerShouldCallDebugHelperWithFailingServiceAndKey),
        ("testContainerShouldCallHelperWithAllRegistrations", testContainerShouldCallHelperWithAllRegistrations),
        ("testContainerShouldCallHelperWithParentRegistrations", testContainerShouldCallHelperWithParentRegistrations),
    ]
}

extension ContainerTests_GraphCaching {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ContainerTests_GraphCaching = [
        ("testContaineirHasMethodForRestoringGraph", testContaineirHasMethodForRestoringGraph),
        ("testContainerIsNilOutsideGraphResolution", testContainerIsNilOutsideGraphResolution),
        ("testContainerRestoresInstancesFromPreviousGraphsIfAvailable", testContainerRestoresInstancesFromPreviousGraphsIfAvailable),
        ("testContainerUsesCurrentGraphIdentifierWhenManipulatingInstances", testContainerUsesCurrentGraphIdentifierWhenManipulatingInstances),
        ("testContainerUsesRestoredIdentifierDuringGraphResolution", testContainerUsesRestoredIdentifierDuringGraphResolution),
        ("testIdentifierIsDifferentForSeparateGraphResolutions", testIdentifierIsDifferentForSeparateGraphResolutions),
        ("testIdentifierIsNotNilDuringGraphResolution", testIdentifierIsNotNilDuringGraphResolution),
        ("testIdentifierIsSameDuringGraphResolution", testIdentifierIsSameDuringGraphResolution),
    ]
}

extension ContainerTests_TypeForwarding {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ContainerTests_TypeForwarding = [
        ("testContainerDoesNotResolveForwardedTypeGivenIncorrectName", testContainerDoesNotResolveForwardedTypeGivenIncorrectName),
        ("testContainerDoesNotResolveWhenForwardingIncompatibleTypes", testContainerDoesNotResolveWhenForwardingIncompatibleTypes),
        ("testContainerDoesNotResolveWhenForwardingIncompatibleTypesWithArguments", testContainerDoesNotResolveWhenForwardingIncompatibleTypesWithArguments),
        ("testContainerResolvesForwardedType", testContainerResolvesForwardedType),
        ("testContainerResolvesForwardedTypeEvenIfOnlyImplementationTypeConformsToIt", testContainerResolvesForwardedTypeEvenIfOnlyImplementationTypeConformsToIt),
        ("testContainerResolvesForwardedTypeGivenCorrectName", testContainerResolvesForwardedTypeGivenCorrectName),
        ("testContainerResolvesForwardedTypesOnlyWhenCorrectNameIsGiven", testContainerResolvesForwardedTypesOnlyWhenCorrectNameIsGiven),
        ("testContainerResolvesForwardedTypeWithArguments", testContainerResolvesForwardedTypeWithArguments),
        ("testContainerResolvesForwardedTypeWithServiceEntry", testContainerResolvesForwardedTypeWithServiceEntry),
        ("testContainerResolvesOptionalOfFowrardedType", testContainerResolvesOptionalOfFowrardedType),
        ("testContainerResolvesOptionalToNilWhenWrappedTypeIsNotRegistered", testContainerResolvesOptionalToNilWhenWrappedTypeIsNotRegistered),
        ("testContainerResolvesOptionalToNilWithWrongName", testContainerResolvesOptionalToNilWithWrongName),
        ("testContainerResolvesOptionalWhenWrappedTypeIsRegistered", testContainerResolvesOptionalWhenWrappedTypeIsRegistered),
        ("testContainerResolvesOptionalWithArguments", testContainerResolvesOptionalWithArguments),
        ("testContainerResolvesOptionalWithName", testContainerResolvesOptionalWithName),
        ("testContainerSuportsMultipleForwardingDefinitions", testContainerSuportsMultipleForwardingDefinitions),
        ("testContainerSupportsDefiningMultipleTypesAtOnce", testContainerSupportsDefiningMultipleTypesAtOnce),
    ]
}

extension LazyTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__LazyTests = [
        ("testContainerAlwaysProducesDifferentInstanceForRelatedObjectsInTransientScope", testContainerAlwaysProducesDifferentInstanceForRelatedObjectsInTransientScope),
        ("testContainerAlwaysProducesTheSameInstanceForRelatedObjectsInContainerScope", testContainerAlwaysProducesTheSameInstanceForRelatedObjectsInContainerScope),
        ("testContainerAlwaysProducesTheSameInstanceForRelatedObjectsInGraphScope", testContainerAlwaysProducesTheSameInstanceForRelatedObjectsInGraphScope),
        ("testContainerDoesNotCreateInstanceUntilRequested", testContainerDoesNotCreateInstanceUntilRequested),
        ("testContainerDoesNotResolveLazyIfBaseTypeIsNotRegistered", testContainerDoesNotResolveLazyIfBaseTypeIsNotRegistered),
        ("testContainerDoesNotResolveLazyWithWrongName", testContainerDoesNotResolveLazyWithWrongName),
        ("testContainerDoesResolveForwardedLazyType", testContainerDoesResolveForwardedLazyType),
        ("testContainerProvidesInstanceFromContainer", testContainerProvidesInstanceFromContainer),
        ("testContainerResolveInstanceFromContainerOnlyOnce", testContainerResolveInstanceFromContainerOnlyOnce),
        ("testContainerResolvesCircularDependenciesForLazyInstance", testContainerResolvesCircularDependenciesForLazyInstance),
        ("testContainerResolvesDependenciesToSameInstance", testContainerResolvesDependenciesToSameInstance),
        ("testContainerResolvesLazyWithArguments", testContainerResolvesLazyWithArguments),
        ("testContainerResolvesLazyWithName", testContainerResolvesLazyWithName),
    ]
}

extension ProviderTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ProviderTests = [
        ("testContainerAlwaysProducesDifferentIncetanceInGraphScope", testContainerAlwaysProducesDifferentIncetanceInGraphScope),
        ("testContainerAlwaysProducesDifferentIncetanceInTransientScope", testContainerAlwaysProducesDifferentIncetanceInTransientScope),
        ("testContainerAlwaysProducesSameIncetanceInContainerScope", testContainerAlwaysProducesSameIncetanceInContainerScope),
        ("testContainerDoesNotResolveProoviderWithWrongName", testContainerDoesNotResolveProoviderWithWrongName),
        ("testContainerResolveForwarrdedProviderType", testContainerResolveForwarrdedProviderType),
        ("testContainerResolvesNonProovidedDependenciesToTheSameInstance", testContainerResolvesNonProovidedDependenciesToTheSameInstance),
        ("testContainerResolvesProvidedDependenciesToDifferentInstances", testContainerResolvesProvidedDependenciesToDifferentInstances),
        ("testContainerResolvesProviderrWithArguments", testContainerResolvesProviderrWithArguments),
        ("testContainerResolvesProviderWithName", testContainerResolvesProviderWithName),
        ("testProviderDoesNotCreateInstanceUntilRequested", testProviderDoesNotCreateInstanceUntilRequested),
        ("testProviderDoesNotResolveProviderIfBaseTypeIsNotRegistered", testProviderDoesNotResolveProviderIfBaseTypeIsNotRegistered),
        ("testProviderProvidesInstanceFromContainer", testProviderProvidesInstanceFromContainer),
        ("testProviderResolveInstanceFromContainerEachTime", testProviderResolveInstanceFromContainerEachTime),
    ]
}

extension ServiceEntryTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ServiceEntryTests = [
        ("testServiceEntryHasObjectScopeGraphAsDefault", testServiceEntryHasObjectScopeGraphAsDefault),
        ("testServiceEntryHasObjectScopeSetToValueFromInit", testServiceEntryHasObjectScopeSetToValueFromInit),
    ]
}

extension ServiceKeyTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ServiceKeyTests = [
        ("testServiceKeyDoesNotEqualWithDifferentArgTypesInFactoryTypes", testServiceKeyDoesNotEqualWithDifferentArgTypesInFactoryTypes),
        ("testServiceKeyDoesNotEqualWithDifferentNames", testServiceKeyDoesNotEqualWithDifferentNames),
        ("testServiceKeyDoesNotEqualWithDifferentOptions", testServiceKeyDoesNotEqualWithDifferentOptions),
        ("testServiceKeyDoesNotEqualWithDifferentServiceTypesInFactoryTypes", testServiceKeyDoesNotEqualWithDifferentServiceTypesInFactoryTypes),
        ("testServiceKeyEqualsWithTheSameFactoryType", testServiceKeyEqualsWithTheSameFactoryType),
        ("testServiceKeyEqualsWithTheSameName", testServiceKeyEqualsWithTheSameName),
        ("testServiceKeyEqualsWithTheSameOption", testServiceKeyEqualsWithTheSameOption),
    ]
}

extension SynchronizedResolverTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SynchronizedResolverTests = [
        ("testSynchronizedResolverCanAccessParentAndChildContainersWithoutDeadlock", testSynchronizedResolverCanAccessParentAndChildContainersWithoutDeadlock),
        ("testSynchronizedResolverCanMakeItWithoutDeadlock", testSynchronizedResolverCanMakeItWithoutDeadlock),
        ("testSynchronizedResolverCanResolveCircularDependencies", testSynchronizedResolverCanResolveCircularDependencies),
        ("testSynchronizedResolverUsesDistinctGraphIdentifier", testSynchronizedResolverUsesDistinctGraphIdentifier),
    ]
}

extension WeakStorageTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__WeakStorageTests = [
        ("testWeakStorageShouldNotPersistInstance", testWeakStorageShouldNotPersistInstance),
        ("testWeakStorageShouldNotPersistInstanceWithoutStrongReference", testWeakStorageShouldNotPersistInstanceWithoutStrongReference),
        ("testWeakStorageShouldNotPersistInstanceWithWeakReference", testWeakStorageShouldNotPersistInstanceWithWeakReference),
        ("testWeakStorageShouldProvideStoredInstanceWithStrongReference", testWeakStorageShouldProvideStoredInstanceWithStrongReference),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(AssemblerTests.__allTests__AssemblerTests),
        testCase(ContainerTests.__allTests__ContainerTests),
        testCase(ContainerTests_Arguments.__allTests__ContainerTests_Arguments),
        testCase(ContainerTests_Behavior.__allTests__ContainerTests_Behavior),
        testCase(ContainerTests_Circularity.__allTests__ContainerTests_Circularity),
        testCase(ContainerTests_CustomScope.__allTests__ContainerTests_CustomScope),
        testCase(ContainerTests_CustomStringConvertible.__allTests__ContainerTests_CustomStringConvertible),
        testCase(ContainerTests_DebugHelper.__allTests__ContainerTests_DebugHelper),
        testCase(ContainerTests_GraphCaching.__allTests__ContainerTests_GraphCaching),
        testCase(ContainerTests_TypeForwarding.__allTests__ContainerTests_TypeForwarding),
        testCase(LazyTests.__allTests__LazyTests),
        testCase(ProviderTests.__allTests__ProviderTests),
        testCase(ServiceEntryTests.__allTests__ServiceEntryTests),
        testCase(ServiceKeyTests.__allTests__ServiceKeyTests),
        testCase(SynchronizedResolverTests.__allTests__SynchronizedResolverTests),
        testCase(WeakStorageTests.__allTests__WeakStorageTests),
    ]
}
#endif
