.class public final Lteam/opay/pay/message/module/OMessageCenterViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "OMessageCenterViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ)\u0010\u0012\u001a\u00020\t2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u00162\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ#\u0010\"\u001a\u00020!2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0008\u0010 \u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J1\u0010\'\u001a\u00020\u00042\u0016\u0010&\u001a\u0012\u0012\u0004\u0012\u00020\u000e0$j\u0008\u0012\u0004\u0012\u00020\u000e`%2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u001d\u0010+\u001a\u00020\u00162\u0006\u0010*\u001a\u00020)2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008+\u0010,J\u0015\u0010.\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u000e\u00a2\u0006\u0004\u0008.\u0010/J\u0015\u00100\u001a\u00020\u00162\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u00080\u00101J\u0015\u00102\u001a\u00020\u00162\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u00082\u00101R.\u00107\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r04038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R%\u0010;\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r038\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00106\u001a\u0004\u00089\u0010:R\u001f\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0016038\u0006\u00a2\u0006\u000c\n\u0004\u0008<\u00106\u001a\u0004\u0008=\u0010:R\u001d\u0010B\u001a\u0008\u0012\u0004\u0012\u00020?038\u0006\u00a2\u0006\u000c\n\u0004\u0008@\u00106\u001a\u0004\u0008A\u0010:R\u001d\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u0006038\u0006\u00a2\u0006\u000c\n\u0004\u0008C\u00106\u001a\u0004\u0008D\u0010:R)\u0010H\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t04038\u0006\u00a2\u0006\u000c\n\u0004\u0008F\u00106\u001a\u0004\u0008G\u0010:R\u001d\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u0004038\u0006\u00a2\u0006\u000c\n\u0004\u0008I\u00106\u001a\u0004\u0008J\u0010:R\u0018\u0010N\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR+\u0010S\u001a\u0012\u0012\u0004\u0012\u00020\u00040$j\u0008\u0012\u0004\u0012\u00020\u0004`%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010RR\u001b\u0010W\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010P\u001a\u0004\u0008U\u0010V\u00a8\u0006X"
    }
    d2 = {
        "Lteam/opay/pay/message/module/OMessageCenterViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "",
        "businessType",
        "",
        "C",
        "(Ljava/lang/String;)Z",
        "Lteam/opay/pay/message/bean/MessageShowNum;",
        "showNumBean",
        "A",
        "(Ljava/lang/String;Lteam/opay/pay/message/bean/MessageShowNum;)Z",
        "",
        "Lteam/opay/pay/message/bean/Message;",
        "paramList",
        "Lteam/opay/pay/message/bean/MessageLocalNum;",
        "numCache",
        "R",
        "(Ljava/util/List;Lteam/opay/pay/message/bean/MessageLocalNum;)Lteam/opay/pay/message/bean/MessageShowNum;",
        "",
        "msgCreateTime",
        "",
        "z",
        "(Ljava/lang/String;Ljava/lang/Long;)V",
        "m",
        "D",
        "(Lteam/opay/pay/message/bean/Message;Ljava/lang/String;)Z",
        "p",
        "E",
        "(Ljava/util/List;)V",
        "subContent",
        "amount",
        "Landroid/text/SpannedString;",
        "Q",
        "(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannedString;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "list",
        "N",
        "(Ljava/util/ArrayList;Lteam/opay/pay/message/bean/MessageLocalNum;)Ljava/lang/String;",
        "Landroid/content/Context;",
        "ctx",
        "B",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "msg",
        "S",
        "(Lteam/opay/pay/message/bean/Message;)V",
        "P",
        "(Landroid/content/Context;)V",
        "O",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Pair;",
        "a",
        "Landroidx/lifecycle/MutableLiveData;",
        "allMsgEvent",
        "b",
        "I",
        "()Landroidx/lifecycle/MutableLiveData;",
        "msgRspEvent",
        "c",
        "M",
        "tokenNoRightEvent",
        "Lteam/opay/pay/message/net/Status;",
        "d",
        "H",
        "msgErrorEvent",
        "e",
        "G",
        "loadingEvent",
        "f",
        "K",
        "showNumEvent",
        "g",
        "F",
        "errorMsgEvent",
        "h",
        "Ljava/lang/String;",
        "thisBusinessType",
        "i",
        "Lid8;",
        "L",
        "()Ljava/util/ArrayList;",
        "temporary",
        "j",
        "J",
        "()Ljava/lang/String;",
        "prefix",
        "message_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lteam/opay/pay/message/bean/Message;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/message/bean/Message;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/message/net/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/message/bean/MessageShowNum;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    sget-object v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$temporary$2;->INSTANCE:Lteam/opay/pay/message/module/OMessageCenterViewModel$temporary$2;

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->i:Lid8;

    .line 60
    .line 61
    sget-object v0, Lteam/opay/pay/message/module/OMessageCenterViewModel$prefix$2;->INSTANCE:Lteam/opay/pay/message/module/OMessageCenterViewModel$prefix$2;

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->j:Lid8;

    .line 68
    .line 69
    return-void
.end method

.method public static final synthetic q(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->z(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/lang/String;Lteam/opay/pay/message/bean/MessageShowNum;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->A(Ljava/lang/String;Lteam/opay/pay/message/bean/MessageShowNum;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic s(Lteam/opay/pay/message/module/OMessageCenterViewModel;Lteam/opay/pay/message/bean/Message;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->D(Lteam/opay/pay/message/bean/Message;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic t(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->E(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Lteam/opay/pay/message/module/OMessageCenterViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v(Lteam/opay/pay/message/module/OMessageCenterViewModel;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->L()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lteam/opay/pay/message/module/OMessageCenterViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/util/ArrayList;Lteam/opay/pay/message/bean/MessageLocalNum;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->N(Ljava/util/ArrayList;Lteam/opay/pay/message/bean/MessageLocalNum;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic y(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/util/List;Lteam/opay/pay/message/bean/MessageLocalNum;)Lteam/opay/pay/message/bean/MessageShowNum;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->R(Ljava/util/List;Lteam/opay/pay/message/bean/MessageLocalNum;)Lteam/opay/pay/message/bean/MessageShowNum;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Lteam/opay/pay/message/bean/MessageShowNum;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, -0x46ca9cd

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v0, v1, :cond_6

    .line 11
    .line 12
    const v1, 0x55b0424

    .line 13
    .line 14
    .line 15
    if-eq v0, v1, :cond_3

    .line 16
    .line 17
    const v1, 0x59002f3

    .line 18
    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    const-string v0, "opay_Payments"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/MessageShowNum;->b()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-lez p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v3, 0x0

    .line 40
    :goto_0
    invoke-virtual {p2, v2}, Lteam/opay/pay/message/bean/MessageShowNum;->e(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    const-string v0, "opay_Services"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/MessageShowNum;->c()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-lez p1, :cond_5

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    const/4 v3, 0x0

    .line 61
    :goto_1
    invoke-virtual {p2, v2}, Lteam/opay/pay/message/bean/MessageShowNum;->f(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_6
    const-string v0, "opay_Activities"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_7

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_7
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/MessageShowNum;->a()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-lez p1, :cond_8

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_8
    const/4 v3, 0x0

    .line 82
    :goto_2
    invoke-virtual {p2, v2}, Lteam/opay/pay/message/bean/MessageShowNum;->d(I)V

    .line 83
    .line 84
    .line 85
    :goto_3
    return v3
.end method

.method public final B(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ctx"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "businessType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/message/utils/MessageStorage;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/pay/message/utils/MessageStorage;->e()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->h:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iput-object p2, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->h:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lkotlin/Pair;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v2, 0x1

    .line 60
    if-ne v0, v2, :cond_2

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lkotlin/Pair;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/util/List;

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {p0, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->C(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    if-nez v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->O(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_7

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    move-object v2, v1

    .line 115
    check-cast v2, Lteam/opay/pay/message/bean/Message;

    .line 116
    .line 117
    invoke-virtual {p0, v2, p2}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->D(Lteam/opay/pay/message/bean/Message;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 134
    .line 135
    sget-object v1, Lteam/opay/pay/message/net/Status;->EMPTY:Lteam/opay/pay/message/net/Status;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_8
    invoke-virtual {p0, p1}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->E(Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->L()Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    return-void

    .line 160
    :cond_9
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    new-instance v4, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;

    .line 169
    .line 170
    const/4 v0, 0x0

    .line 171
    invoke-direct {v4, p0, p2, p1, v0}, Lteam/opay/pay/message/module/OMessageCenterViewModel$clickBusiness$1;-><init>(Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljava/lang/String;Ljava/util/List;Ljr2;)V

    .line 172
    .line 173
    .line 174
    const/4 v5, 0x2

    .line 175
    const/4 v6, 0x0

    .line 176
    const/4 v3, 0x0

    .line 177
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 178
    .line 179
    .line 180
    :goto_2
    return-void
.end method

.method public final C(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlin/Pair;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lteam/opay/pay/message/bean/MessageShowNum;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->A(Ljava/lang/String;Lteam/opay/pay/message/bean/MessageShowNum;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x1

    .line 36
    :goto_1
    return v1
.end method

.method public final D(Lteam/opay/pay/message/bean/Message;Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/message/cache/MsgCacheUtil;->a:Lteam/opay/pay/message/cache/MsgCacheUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/message/cache/MsgCacheUtil;->d()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/Message;->d()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/Message;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "opay_Services"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    :goto_0
    return p1
.end method

.method public final E(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/message/bean/Message;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MMM dd,HH:mm"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/gson/GsonBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz p1, :cond_f

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_f

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lteam/opay/pay/message/bean/Message;

    .line 36
    .line 37
    invoke-virtual {v2}, Lteam/opay/pay/message/bean/Message;->e()Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    :goto_1
    invoke-static {v3, v4}, Lzca;->a(J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Lteam/opay/pay/message/bean/Message;->t(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lteam/opay/pay/message/bean/Message;->f()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Llmf;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "null"

    .line 68
    .line 69
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->J()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->L0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const-string v3, ""

    .line 85
    .line 86
    :goto_2
    invoke-virtual {v2, v3}, Lteam/opay/pay/message/bean/Message;->n(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lteam/opay/pay/message/bean/Message;->f()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_0

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_3

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    .line 103
    .line 104
    invoke-virtual {v2}, Lteam/opay/pay/message/bean/Message;->f()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v4, "messageType"

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    const-string v5, "StructuredMessage"

    .line 118
    .line 119
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_4

    .line 124
    .line 125
    const-string v5, "extraData"

    .line 126
    .line 127
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const-class v5, Lteam/opay/pay/message/bean/ExtraMessageBody;

    .line 132
    .line 133
    invoke-virtual {v1, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Lteam/opay/pay/message/bean/ExtraMessageBody;

    .line 138
    .line 139
    invoke-virtual {v2, v4}, Lteam/opay/pay/message/bean/Message;->q(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Lteam/opay/pay/message/bean/Message;->p(Lteam/opay/pay/message/bean/ExtraMessageBody;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {v2}, Lteam/opay/pay/message/bean/Message;->f()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const/4 v5, 0x0

    .line 151
    const/4 v6, 0x2

    .line 152
    const-string v7, "businessContent"

    .line 153
    .line 154
    const/4 v8, 0x0

    .line 155
    invoke-static {v4, v7, v5, v6, v8}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_0

    .line 160
    .line 161
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 162
    .line 163
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    const-class v4, Lteam/opay/pay/message/bean/MessageMonthBean;

    .line 168
    .line 169
    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    check-cast v3, Lteam/opay/pay/message/bean/MessageMonthBean;

    .line 174
    .line 175
    invoke-virtual {v3}, Lteam/opay/pay/message/bean/MessageMonthBean;->c()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    if-eqz v4, :cond_5

    .line 180
    .line 181
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-nez v4, :cond_7

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :catchall_0
    move-exception v2

    .line 189
    goto/16 :goto_8

    .line 190
    .line 191
    :cond_5
    :goto_3
    invoke-virtual {v3}, Lteam/opay/pay/message/bean/MessageMonthBean;->a()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    if-eqz v4, :cond_6

    .line 196
    .line 197
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-nez v4, :cond_7

    .line 202
    .line 203
    :cond_6
    invoke-virtual {v3}, Lteam/opay/pay/message/bean/MessageMonthBean;->b()Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    if-eqz v4, :cond_e

    .line 208
    .line 209
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_7

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_7
    invoke-virtual {v2, v3}, Lteam/opay/pay/message/bean/Message;->r(Lteam/opay/pay/message/bean/MessageMonthBean;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Lteam/opay/pay/message/bean/Message;->i()Lteam/opay/pay/message/bean/MessageMonthBean;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    if-eqz v3, :cond_a

    .line 224
    .line 225
    invoke-virtual {v3}, Lteam/opay/pay/message/bean/MessageMonthBean;->b()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    if-eqz v3, :cond_a

    .line 230
    .line 231
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-eqz v4, :cond_a

    .line 240
    .line 241
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    check-cast v4, Lteam/opay/pay/message/bean/MessageMonthItem;

    .line 246
    .line 247
    invoke-virtual {v4}, Lteam/opay/pay/message/bean/MessageMonthItem;->b()Ljava/lang/Long;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    const-wide/16 v6, 0x0

    .line 252
    .line 253
    if-eqz v5, :cond_9

    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 256
    .line 257
    .line 258
    move-result-wide v9

    .line 259
    goto :goto_5

    .line 260
    :cond_9
    move-wide v9, v6

    .line 261
    :goto_5
    cmp-long v5, v9, v6

    .line 262
    .line 263
    if-lez v5, :cond_8

    .line 264
    .line 265
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-virtual {v0, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v4, v5}, Lteam/opay/pay/message/bean/MessageMonthItem;->e(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_a
    invoke-virtual {v2}, Lteam/opay/pay/message/bean/Message;->i()Lteam/opay/pay/message/bean/MessageMonthBean;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    if-nez v3, :cond_b

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_b
    invoke-virtual {v2}, Lteam/opay/pay/message/bean/Message;->i()Lteam/opay/pay/message/bean/MessageMonthBean;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    if-eqz v4, :cond_c

    .line 289
    .line 290
    invoke-virtual {v4}, Lteam/opay/pay/message/bean/MessageMonthBean;->c()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    goto :goto_6

    .line 295
    :cond_c
    move-object v4, v8

    .line 296
    :goto_6
    invoke-virtual {v2}, Lteam/opay/pay/message/bean/Message;->i()Lteam/opay/pay/message/bean/MessageMonthBean;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    if-eqz v2, :cond_d

    .line 301
    .line 302
    invoke-virtual {v2}, Lteam/opay/pay/message/bean/MessageMonthBean;->a()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    :cond_d
    invoke-virtual {p0, v4, v8}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->Q(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannedString;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v3, v2}, Lteam/opay/pay/message/bean/MessageMonthBean;->e(Landroid/text/SpannedString;)V

    .line 311
    .line 312
    .line 313
    :cond_e
    :goto_7
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 314
    .line 315
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :goto_8
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 321
    .line 322
    invoke-static {v2}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_f
    return-void
.end method

.method public final F()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/message/net/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/message/bean/Message;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final K()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/message/bean/MessageShowNum;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->i:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    return-object v0
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/OMessageCenterViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N(Ljava/util/ArrayList;Lteam/opay/pay/message/bean/MessageLocalNum;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/message/bean/Message;",
            ">;",
            "Lteam/opay/pay/message/bean/MessageLocalNum;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "opay_Payments"

    .line 3
    .line 4
    if-nez p2, :cond_2

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lteam/opay/pay/message/bean/Message;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/Message;->d()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, p1

    .line 22
    :cond_1
    :goto_0
    return-object v1

    .line 23
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_a

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lteam/opay/pay/message/bean/Message;

    .line 38
    .line 39
    invoke-virtual {v3}, Lteam/opay/pay/message/bean/Message;->e()Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-wide/16 v5, 0x0

    .line 44
    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    move-wide v7, v5

    .line 53
    :goto_1
    invoke-virtual {v3}, Lteam/opay/pay/message/bean/Message;->d()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_6

    .line 62
    .line 63
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/MessageLocalNum;->b()Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    :cond_5
    cmp-long v3, v7, v5

    .line 74
    .line 75
    if-lez v3, :cond_3

    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_6
    const-string v4, "opay_Activities"

    .line 79
    .line 80
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_8

    .line 85
    .line 86
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/MessageLocalNum;->a()Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-eqz v3, :cond_7

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    :cond_7
    cmp-long v3, v7, v5

    .line 97
    .line 98
    if-lez v3, :cond_3

    .line 99
    .line 100
    return-object v4

    .line 101
    :cond_8
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/MessageLocalNum;->c()Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_9

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    :cond_9
    cmp-long v3, v7, v5

    .line 112
    .line 113
    if-lez v3, :cond_3

    .line 114
    .line 115
    const-string p1, "opay_Services"

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_a
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lteam/opay/pay/message/bean/Message;

    .line 123
    .line 124
    if-eqz p1, :cond_c

    .line 125
    .line 126
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/Message;->d()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-nez p1, :cond_b

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_b
    move-object v1, p1

    .line 134
    :cond_c
    :goto_2
    return-object v1
.end method

.method public final O(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ctx"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, p0, v0}, Lteam/opay/pay/message/module/OMessageCenterViewModel$notice$1;-><init>(Landroid/content/Context;Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljr2;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final P(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ctx"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, p0, v0}, Lteam/opay/pay/message/module/OMessageCenterViewModel$refreshClick$1;-><init>(Landroid/content/Context;Lteam/opay/pay/message/module/OMessageCenterViewModel;Ljr2;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannedString;
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-eqz p2, :cond_2

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v6, 0x6

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v2, p1

    .line 25
    move-object v3, p2

    .line 26
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    const/4 v1, -0x1

    .line 32
    :goto_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_4
    :goto_2
    if-le v1, v0, :cond_6

    .line 50
    .line 51
    if-eqz p2, :cond_6

    .line 52
    .line 53
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_5

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    .line 61
    .line 62
    sget v0, Lteam/opay/pay/message/R$color;->message_FF00B876:I

    .line 63
    .line 64
    invoke-static {v0}, Llmf;->f(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    add-int/2addr p2, v1

    .line 76
    const/16 v0, 0x11

    .line 77
    .line 78
    invoke-virtual {v2, p1, v1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 79
    .line 80
    .line 81
    :cond_6
    :goto_3
    new-instance p1, Landroid/text/SpannedString;

    .line 82
    .line 83
    invoke-direct {p1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    return-object p1
.end method

.method public final R(Ljava/util/List;Lteam/opay/pay/message/bean/MessageLocalNum;)Lteam/opay/pay/message/bean/MessageShowNum;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/message/bean/Message;",
            ">;",
            "Lteam/opay/pay/message/bean/MessageLocalNum;",
            ")",
            "Lteam/opay/pay/message/bean/MessageShowNum;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_c

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_d

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lteam/opay/pay/message/bean/Message;

    .line 21
    .line 22
    invoke-virtual {v3}, Lteam/opay/pay/message/bean/Message;->j()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eq v4, v5, :cond_3

    .line 35
    .line 36
    :goto_1
    invoke-virtual {v3}, Lteam/opay/pay/message/bean/Message;->j()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x2

    .line 48
    if-ne v4, v5, :cond_0

    .line 49
    .line 50
    :cond_3
    const-string v4, "opay_Payments"

    .line 51
    .line 52
    invoke-virtual {p0, v3, v4}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->D(Lteam/opay/pay/message/bean/Message;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const-wide/16 v5, 0x0

    .line 57
    .line 58
    if-eqz v4, :cond_6

    .line 59
    .line 60
    if-eqz p2, :cond_4

    .line 61
    .line 62
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/MessageLocalNum;->b()Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move-wide v7, v5

    .line 74
    :goto_2
    invoke-virtual {v3}, Lteam/opay/pay/message/bean/Message;->e()Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eqz v4, :cond_5

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v9

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    move-wide v9, v5

    .line 86
    :goto_3
    cmp-long v4, v9, v7

    .line 87
    .line 88
    if-lez v4, :cond_6

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    :cond_6
    const-string v4, "opay_Services"

    .line 93
    .line 94
    invoke-virtual {p0, v3, v4}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->D(Lteam/opay/pay/message/bean/Message;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_9

    .line 99
    .line 100
    if-eqz p2, :cond_7

    .line 101
    .line 102
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/MessageLocalNum;->c()Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_7

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide v7

    .line 112
    goto :goto_4

    .line 113
    :cond_7
    move-wide v7, v5

    .line 114
    :goto_4
    invoke-virtual {v3}, Lteam/opay/pay/message/bean/Message;->e()Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-eqz v4, :cond_8

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 121
    .line 122
    .line 123
    move-result-wide v9

    .line 124
    goto :goto_5

    .line 125
    :cond_8
    move-wide v9, v5

    .line 126
    :goto_5
    cmp-long v4, v9, v7

    .line 127
    .line 128
    if-lez v4, :cond_9

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    :cond_9
    const-string v4, "opay_Activities"

    .line 133
    .line 134
    invoke-virtual {p0, v3, v4}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->D(Lteam/opay/pay/message/bean/Message;Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_0

    .line 139
    .line 140
    if-eqz p2, :cond_a

    .line 141
    .line 142
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/MessageLocalNum;->a()Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-eqz v4, :cond_a

    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 149
    .line 150
    .line 151
    move-result-wide v7

    .line 152
    goto :goto_6

    .line 153
    :cond_a
    move-wide v7, v5

    .line 154
    :goto_6
    invoke-virtual {v3}, Lteam/opay/pay/message/bean/Message;->e()Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    if-eqz v3, :cond_b

    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 161
    .line 162
    .line 163
    move-result-wide v5

    .line 164
    :cond_b
    cmp-long v3, v5, v7

    .line 165
    .line 166
    if-lez v3, :cond_0

    .line 167
    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_c
    const/4 v1, 0x0

    .line 173
    const/4 v2, 0x0

    .line 174
    :cond_d
    new-instance p1, Lteam/opay/pay/message/bean/MessageShowNum;

    .line 175
    .line 176
    invoke-direct {p1, v0, v2, v1}, Lteam/opay/pay/message/bean/MessageShowNum;-><init>(III)V

    .line 177
    .line 178
    .line 179
    return-object p1
.end method

.method public final S(Lteam/opay/pay/message/bean/Message;)V
    .locals 8
    .param p1    # Lteam/opay/pay/message/bean/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/Message;->h()Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/message/bean/Message;->j()Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x3

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v5, Lteam/opay/pay/message/module/OMessageCenterViewModel$updateCacheStatue$1;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-direct {v5, p1, v0}, Lteam/opay/pay/message/module/OMessageCenterViewModel$updateCacheStatue$1;-><init>(Lteam/opay/pay/message/bean/Message;Ljr2;)V

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_1
    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    .line 1
    new-instance v0, Lteam/opay/pay/message/utils/MessageStorage;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/message/utils/MessageStorage;->e()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-wide v3, v1

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    cmp-long v5, v3, v1

    .line 28
    .line 29
    if-gtz v5, :cond_2

    .line 30
    .line 31
    :goto_1
    return-void

    .line 32
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/message/module/OMessageCenterViewModel;->L()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    sget-object v1, Lteam/opay/pay/message/cache/MsgCacheUtil;->a:Lteam/opay/pay/message/cache/MsgCacheUtil;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lteam/opay/pay/message/cache/MsgCacheUtil;->g(Ljava/lang/String;)Lteam/opay/pay/message/bean/MessageLocalNum;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2, p1, v0, p2}, Lteam/opay/pay/message/cache/MsgCacheUtil;->l(Lteam/opay/pay/message/bean/MessageLocalNum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
