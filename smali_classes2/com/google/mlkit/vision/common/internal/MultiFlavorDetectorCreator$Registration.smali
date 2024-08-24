.class public Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Registration"
.end annotation


# instance fields
.field public final zza:Ljava/lang/Class;

.field public final zzb:Lcom/google/firebase/inject/Provider;

.field public final zzc:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/firebase/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DetectorT::",
            "Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$MultiFlavorDetector;",
            "OptionsT::",
            "Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorOptions<",
            "TDetectorT;>;>(",
            "Ljava/lang/Class<",
            "+TOptionsT;>;",
            "Lcom/google/firebase/inject/Provider<",
            "+",
            "Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorCreator<",
            "TDetectorT;TOptionsT;>;>;)V"
        }
    .end annotation

    const/16 v0, 0x64

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;-><init>(Ljava/lang/Class;Lcom/google/firebase/inject/Provider;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/google/firebase/inject/Provider;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DetectorT::",
            "Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$MultiFlavorDetector;",
            "OptionsT::",
            "Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorOptions<",
            "TDetectorT;>;>(",
            "Ljava/lang/Class<",
            "+TOptionsT;>;",
            "Lcom/google/firebase/inject/Provider<",
            "+",
            "Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$DetectorCreator<",
            "TDetectorT;TOptionsT;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;->zza:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;->zzb:Lcom/google/firebase/inject/Provider;

    iput p3, p0, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;->zzc:I

    return p0
.end method

.method public final zzb()Lcom/google/firebase/inject/Provider;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;->zzb:Lcom/google/firebase/inject/Provider;

    return-object p0
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;->zza:Ljava/lang/Class;

    return-object p0
.end method
