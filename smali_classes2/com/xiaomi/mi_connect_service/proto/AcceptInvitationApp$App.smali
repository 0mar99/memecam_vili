.class public final Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AcceptInvitationApp.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AppOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "App"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$AppOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADV_DATA_FIELD_NUMBER:I = 0x2

.field public static final APP_ID_FIELD_NUMBER:I = 0x1

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

.field public static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public advData_:Lcom/google/protobuf/ByteString;

.field public appId_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    .line 3
    const-class v1, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->advData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$000()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->setAppId(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->clearAppId()V

    return-void
.end method

.method public static synthetic access$300(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->setAdvData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->clearAdvData()V

    return-void
.end method

.method private clearAdvData()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->getAdvData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->advData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearAppId()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->appId_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-virtual {v0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdvData(Lcom/google/protobuf/ByteString;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->advData_:Lcom/google/protobuf/ByteString;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method private setAppId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->appId_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 5
    const-class p1, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    monitor-enter p1

    .line 6
    :try_start_0
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 7
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->PARSER:Lcom/google/protobuf/Parser;

    .line 9
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 10
    :pswitch_3
    sget-object p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    return-object p0

    :pswitch_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "appId_"

    aput-object p3, p0, p2

    const-string p2, "advData_"

    aput-object p2, p0, p1

    .line 11
    sget-object p1, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->DEFAULT_INSTANCE:Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n"

    invoke-static {p1, p2, p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_5
    new-instance p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App$Builder;-><init>(Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$1;)V

    return-object p0

    .line 13
    :pswitch_6
    new-instance p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAdvData()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->advData_:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public getAppId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/mi_connect_service/proto/AcceptInvitationApp$App;->appId_:I

    return p0
.end method
