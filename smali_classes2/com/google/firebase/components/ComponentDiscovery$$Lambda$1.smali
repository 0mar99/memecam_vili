.class public final synthetic Lcom/google/firebase/components/ComponentDiscovery$$Lambda$1;
.super Ljava/lang/Object;
.source "ComponentDiscovery.java"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final arg$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/ComponentDiscovery$$Lambda$1;->arg$1:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Ljava/lang/String;)Lcom/google/firebase/inject/Provider;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/ComponentDiscovery$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/ComponentDiscovery$$Lambda$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/components/ComponentDiscovery$$Lambda$1;->arg$1:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/firebase/components/ComponentDiscovery;->lambda$discoverLazy$0(Ljava/lang/String;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object p0

    return-object p0
.end method
