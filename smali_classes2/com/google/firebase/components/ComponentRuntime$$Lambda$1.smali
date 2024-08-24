.class public final synthetic Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final arg$1:Lcom/google/firebase/components/ComponentRuntime;

.field public final arg$2:Lcom/google/firebase/components/Component;


# direct methods
.method public constructor <init>(Lcom/google/firebase/components/ComponentRuntime;Lcom/google/firebase/components/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->arg$1:Lcom/google/firebase/components/ComponentRuntime;

    iput-object p2, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->arg$2:Lcom/google/firebase/components/Component;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/components/ComponentRuntime;Lcom/google/firebase/components/Component;)Lcom/google/firebase/inject/Provider;
    .locals 1

    new-instance v0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;-><init>(Lcom/google/firebase/components/ComponentRuntime;Lcom/google/firebase/components/Component;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->arg$1:Lcom/google/firebase/components/ComponentRuntime;

    iget-object p0, p0, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->arg$2:Lcom/google/firebase/components/Component;

    invoke-static {v0, p0}, Lcom/google/firebase/components/ComponentRuntime;->lambda$discoverComponents$0(Lcom/google/firebase/components/ComponentRuntime;Lcom/google/firebase/components/Component;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
