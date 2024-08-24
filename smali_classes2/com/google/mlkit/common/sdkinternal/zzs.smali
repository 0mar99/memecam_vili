.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzs;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/common/sdkinternal/zzs;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzs;

    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/zzs;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/zzs;->zza:Lcom/google/mlkit/common/sdkinternal/zzs;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class p0, Landroid/content/Context;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    invoke-interface {p1, p0}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
