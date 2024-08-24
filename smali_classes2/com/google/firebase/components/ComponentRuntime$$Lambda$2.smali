.class public final synthetic Lcom/google/firebase/components/ComponentRuntime$$Lambda$2;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final arg$1:Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/ComponentRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$2;->arg$1:Lcom/google/firebase/components/ComponentRegistrar;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/inject/Provider;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/ComponentRuntime$$Lambda$2;-><init>(Lcom/google/firebase/components/ComponentRegistrar;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$2;->arg$1:Lcom/google/firebase/components/ComponentRegistrar;

    invoke-static {p0}, Lcom/google/firebase/components/ComponentRuntime;->lambda$toProviders$1(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object p0

    return-object p0
.end method
