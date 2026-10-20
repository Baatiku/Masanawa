.class public final Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\"\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u00bf\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0006\u0010;\u001a\u00020<J\r\u0010=\u001a\u00020<H\u0000\u00a2\u0006\u0002\u0008>J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010R\u001a\u00020\u0014H\u00c6\u0003J\t\u0010S\u001a\u00020\u0014H\u00c6\u0003J\t\u0010T\u001a\u00020\u0014H\u00c6\u0003J\t\u0010U\u001a\u00020\u0014H\u00c6\u0003J\u00e5\u0001\u0010V\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0014H\u00c6\u0001J\u0013\u0010W\u001a\u00020<2\u0008\u0010X\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010Y\u001a\u000207H\u00d6\u0001J\t\u0010Z\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001bR\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001bR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001bR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001bR\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001bR \u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010\u001bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001bR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u001bR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u001bR\u0016\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0016\u0010\u0015\u001a\u00020\u00148\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00100R\u0016\u0010\u0016\u001a\u00020\u00148\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00100R\u001e\u0010\u0017\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00100\"\u0004\u00084\u00105R \u00108\u001a\u0002072\u0006\u00106\u001a\u0002078F@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010:R$\u0010@\u001a\u0004\u0018\u00010?2\u0008\u00106\u001a\u0004\u0018\u00010?8@@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010B\u00a8\u0006["
    }
    d2 = {
        "Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;",
        "Ljava/io/Serializable;",
        "action",
        "",
        "actionUrl",
        "id",
        "title",
        "body",
        "displayType",
        "messageStyle",
        "messageType",
        "receiveId",
        "thumbnailUrl",
        "data",
        "",
        "params",
        "noticeBarData",
        "voicePlay",
        "voiceSound",
        "transTime",
        "",
        "sendTime",
        "fcmSentTime",
        "receiveTime",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V",
        "getAction",
        "()Ljava/lang/String;",
        "getActionUrl",
        "getId",
        "getTitle",
        "getBody",
        "getDisplayType",
        "getMessageStyle",
        "getMessageType",
        "getReceiveId",
        "getThumbnailUrl",
        "getData",
        "()Ljava/lang/Object;",
        "setData",
        "(Ljava/lang/Object;)V",
        "getParams$annotations",
        "()V",
        "getParams",
        "getNoticeBarData",
        "getVoicePlay",
        "getVoiceSound",
        "getTransTime",
        "()J",
        "getSendTime",
        "getFcmSentTime",
        "getReceiveTime",
        "setReceiveTime",
        "(J)V",
        "value",
        "",
        "notificationId",
        "getNotificationId",
        "()I",
        "isInvalidMessage",
        "",
        "isMessageExpired",
        "isMessageExpired$opay_push_release",
        "Lteam/opay/pay/fcm/dispatcher/opb/NoticeBarData;",
        "barData",
        "getBarData$opay_push_release",
        "()Lteam/opay/pay/fcm/dispatcher/opb/NoticeBarData;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "opay-push_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final action:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final actionUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient barData:Lteam/opay/pay/fcm/dispatcher/opb/NoticeBarData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final body:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private data:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final displayType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "displayType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fcmSentTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fcmSentTime"
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "messageId"
        }
        value = "id"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final messageStyle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messageStyle"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final messageType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messageType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final noticeBarData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noticeBarData"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient notificationId:I

.field private final params:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "params"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final receiveId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receiveId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private receiveTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receiveTime"
    .end annotation
.end field

.field private final sendTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sendTime"
    .end annotation
.end field

.field private final thumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnailUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final transTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transTime"
    .end annotation
.end field

.field private final voicePlay:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voicePlay"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final voiceSound:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voiceSound"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->action:Ljava/lang/String;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->actionUrl:Ljava/lang/String;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->id:Ljava/lang/String;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->title:Ljava/lang/String;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->body:Ljava/lang/String;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->displayType:Ljava/lang/String;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageStyle:Ljava/lang/String;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageType:Ljava/lang/String;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveId:Ljava/lang/String;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->thumbnailUrl:Ljava/lang/String;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->data:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->params:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->noticeBarData:Ljava/lang/String;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voicePlay:Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voiceSound:Ljava/lang/String;

    .line 52
    .line 53
    move-wide/from16 v1, p16

    .line 54
    .line 55
    iput-wide v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->transTime:J

    .line 56
    .line 57
    move-wide/from16 v1, p18

    .line 58
    .line 59
    iput-wide v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->sendTime:J

    .line 60
    .line 61
    move-wide/from16 v1, p20

    .line 62
    .line 63
    iput-wide v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->fcmSentTime:J

    .line 64
    .line 65
    move-wide/from16 v1, p22

    .line 66
    .line 67
    iput-wide v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveTime:J

    .line 68
    .line 69
    return-void
.end method

.method public static synthetic a(IJ)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->isMessageExpired$lambda$0(IJ)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic copy$default(Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJILjava/lang/Object;)Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p24

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->action:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object/from16 v2, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-object v3, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->actionUrl:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object/from16 v3, p2

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    iget-object v4, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->id:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-object/from16 v4, p3

    .line 31
    .line 32
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 33
    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    iget-object v5, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->title:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move-object/from16 v5, p4

    .line 40
    .line 41
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 42
    .line 43
    if-eqz v6, :cond_4

    .line 44
    .line 45
    iget-object v6, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->body:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move-object/from16 v6, p5

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 51
    .line 52
    if-eqz v7, :cond_5

    .line 53
    .line 54
    iget-object v7, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->displayType:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-object/from16 v7, p6

    .line 58
    .line 59
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 60
    .line 61
    if-eqz v8, :cond_6

    .line 62
    .line 63
    iget-object v8, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageStyle:Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move-object/from16 v8, p7

    .line 67
    .line 68
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 69
    .line 70
    if-eqz v9, :cond_7

    .line 71
    .line 72
    iget-object v9, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageType:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move-object/from16 v9, p8

    .line 76
    .line 77
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 78
    .line 79
    if-eqz v10, :cond_8

    .line 80
    .line 81
    iget-object v10, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveId:Ljava/lang/String;

    .line 82
    .line 83
    goto :goto_8

    .line 84
    :cond_8
    move-object/from16 v10, p9

    .line 85
    .line 86
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 87
    .line 88
    if-eqz v11, :cond_9

    .line 89
    .line 90
    iget-object v11, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->thumbnailUrl:Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_9

    .line 93
    :cond_9
    move-object/from16 v11, p10

    .line 94
    .line 95
    :goto_9
    and-int/lit16 v12, v1, 0x400

    .line 96
    .line 97
    if-eqz v12, :cond_a

    .line 98
    .line 99
    iget-object v12, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->data:Ljava/lang/Object;

    .line 100
    .line 101
    goto :goto_a

    .line 102
    :cond_a
    move-object/from16 v12, p11

    .line 103
    .line 104
    :goto_a
    and-int/lit16 v13, v1, 0x800

    .line 105
    .line 106
    if-eqz v13, :cond_b

    .line 107
    .line 108
    iget-object v13, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->params:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_b

    .line 111
    :cond_b
    move-object/from16 v13, p12

    .line 112
    .line 113
    :goto_b
    and-int/lit16 v14, v1, 0x1000

    .line 114
    .line 115
    if-eqz v14, :cond_c

    .line 116
    .line 117
    iget-object v14, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->noticeBarData:Ljava/lang/String;

    .line 118
    .line 119
    goto :goto_c

    .line 120
    :cond_c
    move-object/from16 v14, p13

    .line 121
    .line 122
    :goto_c
    and-int/lit16 v15, v1, 0x2000

    .line 123
    .line 124
    if-eqz v15, :cond_d

    .line 125
    .line 126
    iget-object v15, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voicePlay:Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_d

    .line 129
    :cond_d
    move-object/from16 v15, p14

    .line 130
    .line 131
    :goto_d
    move-object/from16 p14, v15

    .line 132
    .line 133
    and-int/lit16 v15, v1, 0x4000

    .line 134
    .line 135
    if-eqz v15, :cond_e

    .line 136
    .line 137
    iget-object v15, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voiceSound:Ljava/lang/String;

    .line 138
    .line 139
    goto :goto_e

    .line 140
    :cond_e
    move-object/from16 v15, p15

    .line 141
    .line 142
    :goto_e
    const v16, 0x8000

    .line 143
    .line 144
    .line 145
    and-int v16, v1, v16

    .line 146
    .line 147
    move-object/from16 p13, v14

    .line 148
    .line 149
    move-object/from16 p15, v15

    .line 150
    .line 151
    if-eqz v16, :cond_f

    .line 152
    .line 153
    iget-wide v14, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->transTime:J

    .line 154
    .line 155
    goto :goto_f

    .line 156
    :cond_f
    move-wide/from16 v14, p16

    .line 157
    .line 158
    :goto_f
    const/high16 v16, 0x10000

    .line 159
    .line 160
    and-int v16, v1, v16

    .line 161
    .line 162
    move-wide/from16 p16, v14

    .line 163
    .line 164
    if-eqz v16, :cond_10

    .line 165
    .line 166
    iget-wide v14, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->sendTime:J

    .line 167
    .line 168
    goto :goto_10

    .line 169
    :cond_10
    move-wide/from16 v14, p18

    .line 170
    .line 171
    :goto_10
    const/high16 v16, 0x20000

    .line 172
    .line 173
    and-int v16, v1, v16

    .line 174
    .line 175
    move-wide/from16 p18, v14

    .line 176
    .line 177
    if-eqz v16, :cond_11

    .line 178
    .line 179
    iget-wide v14, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->fcmSentTime:J

    .line 180
    .line 181
    goto :goto_11

    .line 182
    :cond_11
    move-wide/from16 v14, p20

    .line 183
    .line 184
    :goto_11
    const/high16 v16, 0x40000

    .line 185
    .line 186
    and-int v1, v1, v16

    .line 187
    .line 188
    move-wide/from16 p20, v14

    .line 189
    .line 190
    if-eqz v1, :cond_12

    .line 191
    .line 192
    iget-wide v14, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveTime:J

    .line 193
    .line 194
    goto :goto_12

    .line 195
    :cond_12
    move-wide/from16 v14, p22

    .line 196
    .line 197
    :goto_12
    move-object/from16 p1, v2

    .line 198
    .line 199
    move-object/from16 p2, v3

    .line 200
    .line 201
    move-object/from16 p3, v4

    .line 202
    .line 203
    move-object/from16 p4, v5

    .line 204
    .line 205
    move-object/from16 p5, v6

    .line 206
    .line 207
    move-object/from16 p6, v7

    .line 208
    .line 209
    move-object/from16 p7, v8

    .line 210
    .line 211
    move-object/from16 p8, v9

    .line 212
    .line 213
    move-object/from16 p9, v10

    .line 214
    .line 215
    move-object/from16 p10, v11

    .line 216
    .line 217
    move-object/from16 p11, v12

    .line 218
    .line 219
    move-object/from16 p12, v13

    .line 220
    .line 221
    move-wide/from16 p22, v14

    .line 222
    .line 223
    invoke-virtual/range {p0 .. p23}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    return-object v0
.end method

.method public static synthetic getParams$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final isMessageExpired$lambda$0(IJ)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Message expiration check, interval="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, "HOUR, diffTime="

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, "ms"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->thumbnailUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->params:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->noticeBarData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voicePlay:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voiceSound:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->transTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component17()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->sendTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component18()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->fcmSentTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component19()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->actionUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->body:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->displayType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;
    .locals 25
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

    .line 20
    .line 21
    move-object/from16 v11, p11

    .line 22
    .line 23
    move-object/from16 v12, p12

    .line 24
    .line 25
    move-object/from16 v13, p13

    .line 26
    .line 27
    move-object/from16 v14, p14

    .line 28
    .line 29
    move-object/from16 v15, p15

    .line 30
    .line 31
    move-wide/from16 v16, p16

    .line 32
    .line 33
    move-wide/from16 v18, p18

    .line 34
    .line 35
    move-wide/from16 v20, p20

    .line 36
    .line 37
    move-wide/from16 v22, p22

    .line 38
    .line 39
    new-instance v24, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 40
    .line 41
    move-object/from16 v0, v24

    .line 42
    .line 43
    invoke-direct/range {v0 .. v23}, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V

    .line 44
    .line 45
    .line 46
    return-object v24
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->action:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->action:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->actionUrl:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->actionUrl:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->id:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->id:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->title:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->title:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->body:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->body:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->displayType:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->displayType:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageStyle:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageStyle:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageType:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageType:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveId:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveId:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->thumbnailUrl:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->thumbnailUrl:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->data:Ljava/lang/Object;

    .line 124
    .line 125
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->data:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->params:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->params:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->noticeBarData:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->noticeBarData:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voicePlay:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voicePlay:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voiceSound:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v3, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voiceSound:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-wide v3, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->transTime:J

    .line 179
    .line 180
    iget-wide v5, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->transTime:J

    .line 181
    .line 182
    cmp-long v1, v3, v5

    .line 183
    .line 184
    if-eqz v1, :cond_11

    .line 185
    .line 186
    return v2

    .line 187
    :cond_11
    iget-wide v3, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->sendTime:J

    .line 188
    .line 189
    iget-wide v5, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->sendTime:J

    .line 190
    .line 191
    cmp-long v1, v3, v5

    .line 192
    .line 193
    if-eqz v1, :cond_12

    .line 194
    .line 195
    return v2

    .line 196
    :cond_12
    iget-wide v3, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->fcmSentTime:J

    .line 197
    .line 198
    iget-wide v5, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->fcmSentTime:J

    .line 199
    .line 200
    cmp-long v1, v3, v5

    .line 201
    .line 202
    if-eqz v1, :cond_13

    .line 203
    .line 204
    return v2

    .line 205
    :cond_13
    iget-wide v3, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveTime:J

    .line 206
    .line 207
    iget-wide v5, p1, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveTime:J

    .line 208
    .line 209
    cmp-long p1, v3, v5

    .line 210
    .line 211
    if-eqz p1, :cond_14

    .line 212
    .line 213
    return v2

    .line 214
    :cond_14
    return v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getActionUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->actionUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBarData$opay_push_release()Lteam/opay/pay/fcm/dispatcher/opb/NoticeBarData;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->barData:Lteam/opay/pay/fcm/dispatcher/opb/NoticeBarData;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->noticeBarData:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-class v2, Lteam/opay/pay/fcm/dispatcher/opb/NoticeBarData;

    .line 13
    .line 14
    invoke-static {v1, v2}, Ljt6;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lteam/opay/pay/fcm/dispatcher/opb/NoticeBarData;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move-object v1, v0

    .line 24
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_2

    .line 29
    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    move-object v0, v1

    .line 47
    :goto_3
    check-cast v0, Lteam/opay/pay/fcm/dispatcher/opb/NoticeBarData;

    .line 48
    .line 49
    iput-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->barData:Lteam/opay/pay/fcm/dispatcher/opb/NoticeBarData;

    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->barData:Lteam/opay/pay/fcm/dispatcher/opb/NoticeBarData;

    .line 52
    .line 53
    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->body:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDisplayType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->displayType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFcmSentTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->fcmSentTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMessageStyle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMessageType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNoticeBarData()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->noticeBarData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotificationId()I
    .locals 2

    .line 1
    iget v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->notificationId:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->id:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/text/StringsKt;->y(Ljava/lang/String;)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :goto_0
    long-to-int v1, v0

    .line 25
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->notificationId:I

    .line 30
    .line 31
    :cond_1
    iget v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->notificationId:I

    .line 32
    .line 33
    return v0
.end method

.method public final getParams()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->params:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReceiveId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReceiveTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSendTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->sendTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getThumbnailUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->thumbnailUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTransTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->transTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getVoicePlay()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voicePlay:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVoiceSound()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voiceSound:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->action:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->actionUrl:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->id:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->title:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->body:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->displayType:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageStyle:Ljava/lang/String;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageType:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveId:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->thumbnailUrl:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->data:Ljava/lang/Object;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->params:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->noticeBarData:Ljava/lang/String;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voicePlay:Ljava/lang/String;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    const/4 v2, 0x0

    .line 175
    goto :goto_d

    .line 176
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voiceSound:Ljava/lang/String;

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    goto :goto_e

    .line 188
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    :goto_e
    add-int/2addr v0, v1

    .line 193
    mul-int/lit8 v0, v0, 0x1f

    .line 194
    .line 195
    iget-wide v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->transTime:J

    .line 196
    .line 197
    invoke-static {v1, v2}, Lv3b;->a(J)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    add-int/2addr v0, v1

    .line 202
    mul-int/lit8 v0, v0, 0x1f

    .line 203
    .line 204
    iget-wide v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->sendTime:J

    .line 205
    .line 206
    invoke-static {v1, v2}, Lv3b;->a(J)I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    add-int/2addr v0, v1

    .line 211
    mul-int/lit8 v0, v0, 0x1f

    .line 212
    .line 213
    iget-wide v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->fcmSentTime:J

    .line 214
    .line 215
    invoke-static {v1, v2}, Lv3b;->a(J)I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    add-int/2addr v0, v1

    .line 220
    mul-int/lit8 v0, v0, 0x1f

    .line 221
    .line 222
    iget-wide v1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveTime:J

    .line 223
    .line 224
    invoke-static {v1, v2}, Lv3b;->a(J)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    add-int/2addr v0, v1

    .line 229
    return v0
.end method

.method public final isInvalidMessage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->id:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->title:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->body:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 37
    :goto_1
    return v0
.end method

.method public final isMessageExpired$opay_push_release()Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->sendTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    cmp-long v5, v0, v2

    .line 7
    .line 8
    if-lez v5, :cond_0

    .line 9
    .line 10
    iget-wide v2, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveTime:J

    .line 11
    .line 12
    sub-long/2addr v2, v0

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sget-object v2, Ll5c;->a:Ll5c;

    .line 18
    .line 19
    new-instance v3, Lq5c;

    .line 20
    .line 21
    const/16 v5, 0x18

    .line 22
    .line 23
    invoke-direct {v3, v5, v0, v1}, Lq5c;-><init>(IJ)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ll5c;->a(Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    int-to-long v2, v5

    .line 30
    const-wide/32 v5, 0x36ee80

    .line 31
    .line 32
    .line 33
    mul-long v2, v2, v5

    .line 34
    .line 35
    cmp-long v5, v0, v2

    .line 36
    .line 37
    if-lez v5, :cond_0

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    :cond_0
    return v4
.end method

.method public final setData(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setReceiveTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveTime:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 26
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->action:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->actionUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->id:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->title:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->body:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->displayType:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageStyle:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->messageType:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveId:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->thumbnailUrl:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->data:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v12, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->params:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->noticeBarData:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voicePlay:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->voiceSound:Ljava/lang/String;

    .line 32
    .line 33
    move-object/from16 v16, v14

    .line 34
    .line 35
    move-object/from16 v17, v15

    .line 36
    .line 37
    iget-wide v14, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->transTime:J

    .line 38
    .line 39
    move-wide/from16 v18, v14

    .line 40
    .line 41
    iget-wide v14, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->sendTime:J

    .line 42
    .line 43
    move-wide/from16 v20, v14

    .line 44
    .line 45
    iget-wide v14, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->fcmSentTime:J

    .line 46
    .line 47
    move-wide/from16 v22, v14

    .line 48
    .line 49
    iget-wide v14, v0, Lteam/opay/pay/fcm/dispatcher/opb/PushMessage;->receiveTime:J

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    move-wide/from16 v24, v14

    .line 57
    .line 58
    const-string v14, "PushMessage(action="

    .line 59
    .line 60
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", actionUrl="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", id="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, ", title="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", body="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", displayType="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", messageStyle="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", messageType="

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ", receiveId="

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, ", thumbnailUrl="

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, ", data="

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", params="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, ", noticeBarData="

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ", voicePlay="

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    move-object/from16 v1, v16

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ", voiceSound="

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    move-object/from16 v1, v17

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, ", transTime="

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    move-wide/from16 v1, v18

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", sendTime="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move-wide/from16 v1, v20

    .line 198
    .line 199
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v1, ", fcmSentTime="

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    move-wide/from16 v1, v22

    .line 208
    .line 209
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v1, ", receiveTime="

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    move-wide/from16 v1, v24

    .line 218
    .line 219
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, ")"

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    return-object v0
.end method
