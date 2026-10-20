.class public final Lteam/opay/pay/message/module/NoticeMoreActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NoticeMoreActivity.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/message/module/NoticeMoreActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 E2\u00020\u00012\u00020\u0002:\u0001FB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\"\u00104\u001a\u00020)8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u00081\u0010+\u001a\u0004\u00082\u0010-\"\u0004\u00083\u0010/R\"\u00108\u001a\u00020)8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u00085\u0010+\u001a\u0004\u00086\u0010-\"\u0004\u00087\u0010/R\u001c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020:098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0016\u0010B\u001a\u00020@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010,R\u0016\u0010D\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010?\u00a8\u0006G"
    }
    d2 = {
        "Lteam/opay/pay/message/module/NoticeMoreActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;",
        "<init>",
        "()V",
        "",
        "R",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onLoadMoreRequested",
        "G",
        "Q",
        "Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;",
        "businessNoticeMoreListAdapter",
        "L",
        "(Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;)V",
        "",
        "messageId",
        "businessType",
        "W",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "a",
        "Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "b",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "J",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "O",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "recyclerView",
        "Lteam/opay/pay/message/module/BusinessNoticeViewModel;",
        "c",
        "Lteam/opay/pay/message/module/BusinessNoticeViewModel;",
        "K",
        "()Lteam/opay/pay/message/module/BusinessNoticeViewModel;",
        "P",
        "(Lteam/opay/pay/message/module/BusinessNoticeViewModel;)V",
        "viewModel",
        "Landroid/view/View;",
        "d",
        "Landroid/view/View;",
        "I",
        "()Landroid/view/View;",
        "setNotDataView",
        "(Landroid/view/View;)V",
        "notDataView",
        "e",
        "F",
        "setErrorView",
        "errorView",
        "f",
        "H",
        "setInterfaceErrorView",
        "interfaceErrorView",
        "",
        "Lteam/opay/pay/message/bean/NoticeItemData;",
        "g",
        "Ljava/util/List;",
        "noticeList",
        "h",
        "Ljava/lang/String;",
        "",
        "i",
        "clickPosition",
        "j",
        "businessName",
        "l",
        "Companion",
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


# static fields
.field public static final l:Lteam/opay/pay/message/module/NoticeMoreActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Lteam/opay/pay/message/module/BusinessNoticeViewModel;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/message/bean/NoticeItemData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:I

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/message/module/NoticeMoreActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/message/module/NoticeMoreActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/message/module/NoticeMoreActivity;->l:Lteam/opay/pay/message/module/NoticeMoreActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->k:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->g:Ljava/util/List;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->h:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput v1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->i:I

    .line 24
    .line 25
    iput-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->j:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/module/NoticeMoreActivity;->S(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/module/NoticeMoreActivity;->U(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lteam/opay/pay/message/net/ResultData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->X(Lteam/opay/pay/message/net/ResultData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lteam/opay/pay/message/module/NoticeMoreActivity;)Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final M(Lteam/opay/pay/message/module/NoticeMoreActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-eqz p2, :cond_6

    .line 11
    .line 12
    check-cast p2, Lteam/opay/pay/message/bean/NoticeItemData;

    .line 13
    .line 14
    sget v0, Lteam/opay/pay/message/R$id;->message_notice_more_item_content:I

    .line 15
    .line 16
    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getViewByPosition(II)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/NoticeItemData;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, ""

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    move-object v2, v3

    .line 37
    :cond_0
    const/4 v4, 0x2

    .line 38
    const/4 v5, 0x3

    .line 39
    if-ge v1, v4, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v6, "****"

    .line 51
    .line 52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/NoticeItemData;->b()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    int-to-float v0, v0

    .line 75
    div-float/2addr v1, v0

    .line 76
    const/high16 v0, 0x40000000    # 2.0f

    .line 77
    .line 78
    cmpg-float v0, v1, v0

    .line 79
    .line 80
    if-gez v0, :cond_2

    .line 81
    .line 82
    invoke-static {v2, p0}, Ln97;->c(Ljava/lang/String;Landroid/content/Context;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/NoticeItemData;->g()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/NoticeItemData;->g()Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-ge v0, v5, :cond_3

    .line 103
    .line 104
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/NoticeItemData;->f()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-nez v0, :cond_1

    .line 109
    .line 110
    move-object v0, v3

    .line 111
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/NoticeItemData;->c()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/message/module/NoticeMoreActivity;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    sget-object v0, Lteam/opay/pay/message/module/MessageNoticeDetailActivity;->b:Lteam/opay/pay/message/module/MessageNoticeDetailActivity$Companion;

    .line 120
    .line 121
    invoke-virtual {v0, p0, p2}, Lteam/opay/pay/message/module/MessageNoticeDetailActivity$Companion;->a(Landroid/content/Context;Lteam/opay/pay/message/bean/NoticeItemData;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p2, v0}, Lteam/opay/pay/message/bean/NoticeItemData;->j(Ljava/lang/Integer;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance p3, Lteam/opay/pay/message/event/MessageStatusEvent;

    .line 139
    .line 140
    iget p0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->i:I

    .line 141
    .line 142
    invoke-virtual {p2}, Lteam/opay/pay/message/bean/NoticeItemData;->f()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    if-nez p2, :cond_4

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    move-object v3, p2

    .line 150
    :goto_1
    invoke-direct {p3, p0, v3}, Lteam/opay/pay/message/event/MessageStatusEvent;-><init>(ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p3}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 158
    .line 159
    const-string p1, "null cannot be cast to non-null type android.widget.TextView"

    .line 160
    .line 161
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    .line 166
    .line 167
    const-string p1, "null cannot be cast to non-null type team.opay.pay.message.bean.NoticeItemData"

    .line 168
    .line 169
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p0
.end method

.method public static final N(Lteam/opay/pay/message/module/NoticeMoreActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final R()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->K()Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p0}, Lteam/opay/pay/message/module/BusinessNoticeViewModel;->E(Lag8;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->K()Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/message/module/BusinessNoticeViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lny9;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lny9;-><init>(Lteam/opay/pay/message/module/NoticeMoreActivity;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->K()Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lteam/opay/pay/message/module/BusinessNoticeViewModel;->z()Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Loy9;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Loy9;-><init>(Lteam/opay/pay/message/module/NoticeMoreActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->K()Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lteam/opay/pay/message/module/BusinessNoticeViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lpy9;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lpy9;-><init>(Lteam/opay/pay/message/module/NoticeMoreActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->K()Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lteam/opay/pay/message/module/BusinessNoticeViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lqy9;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lqy9;-><init>(Lteam/opay/pay/message/module/NoticeMoreActivity;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->J()Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lteam/opay/pay/message/module/NoticeMoreActivity$a;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lteam/opay/pay/message/module/NoticeMoreActivity$a;-><init>(Lteam/opay/pay/message/module/NoticeMoreActivity;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static final S(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "it"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, "businessNoticeMoreListAdapter"

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->F()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public static final T(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "it"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, "businessNoticeMoreListAdapter"

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->H()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public static final U(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "it"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, "businessNoticeMoreListAdapter"

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->I()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public static final V(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->K()Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/message/module/BusinessNoticeViewModel;->t()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    const-string v3, "businessNoticeMoreListAdapter"

    .line 17
    .line 18
    if-ne v0, v1, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v2

    .line 28
    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move-object p1, v2

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 43
    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v2, p0

    .line 51
    :goto_0
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->disableLoadMoreIfNotFullPage()V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    if-eqz p1, :cond_7

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    iget-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 65
    .line 66
    if-nez v0, :cond_5

    .line 67
    .line 68
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object v0, v2

    .line 72
    :cond_5
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 76
    .line 77
    if-nez p0, :cond_6

    .line 78
    .line 79
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_6
    move-object v2, p0

    .line 84
    :goto_1
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    .line 85
    .line 86
    .line 87
    :goto_2
    return-void

    .line 88
    :cond_7
    :goto_3
    iget-object p0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 89
    .line 90
    if-nez p0, :cond_8

    .line 91
    .line 92
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_8
    move-object v2, p0

    .line 97
    :goto_4
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public static final X(Lteam/opay/pay/message/net/ResultData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic u(Lteam/opay/pay/message/module/NoticeMoreActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/message/module/NoticeMoreActivity;->M(Lteam/opay/pay/message/module/NoticeMoreActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lteam/opay/pay/message/module/NoticeMoreActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/module/NoticeMoreActivity;->N(Lteam/opay/pay/message/module/NoticeMoreActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/module/NoticeMoreActivity;->T(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/message/module/NoticeMoreActivity;->V(Lteam/opay/pay/message/module/NoticeMoreActivity;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public D(I)Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->k:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/view/View;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final F()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->e:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "errorView"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final G()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "businessType"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->K()Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Lteam/opay/pay/message/module/BusinessNoticeViewModel;->F(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->K()Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lteam/opay/pay/message/module/FromWhere;->MORE_NOTIFICATION:Lteam/opay/pay/message/module/FromWhere;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lteam/opay/pay/message/module/BusinessNoticeViewModel;->G(Lteam/opay/pay/message/module/FromWhere;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final H()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->f:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "interfaceErrorView"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final I()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->d:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "notDataView"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final J()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "recyclerView"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final K()Lteam/opay/pay/message/module/BusinessNoticeViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->c:Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final L(Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;)V
    .locals 1

    .line 1
    new-instance v0, Lry9;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lry9;-><init>(Lteam/opay/pay/message/module/NoticeMoreActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final O(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    return-void
.end method

.method public final P(Lteam/opay/pay/message/module/BusinessNoticeViewModel;)V
    .locals 1
    .param p1    # Lteam/opay/pay/message/module/BusinessNoticeViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->c:Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 7
    .line 8
    return-void
.end method

.method public final Q()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/message/R$id;->business_notification_rv_list:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->D(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    const-string v1, "business_notification_rv_list"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->O(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget v1, Lteam/opay/pay/message/R$layout;->message_item_empty_list:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->J()Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 32
    .line 33
    if-eqz v2, :cond_7

    .line 34
    .line 35
    check-cast v2, Landroid/view/ViewGroup;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "layoutInflater.inflate(\n\u2026          false\n        )"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->setNotDataView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget v2, Lteam/opay/pay/message/R$layout;->message_net_error_view:I

    .line 55
    .line 56
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->J()Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_6

    .line 65
    .line 66
    check-cast v5, Landroid/view/ViewGroup;

    .line 67
    .line 68
    invoke-virtual {v0, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->setErrorView(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget v2, Lteam/opay/pay/message/R$layout;->message_interface_error_view:I

    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->J()Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    check-cast v5, Landroid/view/ViewGroup;

    .line 95
    .line 96
    invoke-virtual {v0, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->setInterfaceErrorView(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->J()Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 119
    .line 120
    sget v1, Lteam/opay/pay/message/R$layout;->message_activity_notice_more_item:I

    .line 121
    .line 122
    iget-object v2, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->g:Ljava/util/List;

    .line 123
    .line 124
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;-><init>(ILjava/util/List;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 128
    .line 129
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->J()Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, p0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    const-string v2, "businessNoticeMoreListAdapter"

    .line 140
    .line 141
    if-nez v0, :cond_0

    .line 142
    .line 143
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    move-object v0, v1

    .line 147
    :cond_0
    new-instance v4, Lteam/opay/pay/message/view/CustomLoadMoreView;

    .line 148
    .line 149
    invoke-direct {v4}, Lteam/opay/pay/message/view/CustomLoadMoreView;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 156
    .line 157
    if-nez v0, :cond_1

    .line 158
    .line 159
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    move-object v0, v1

    .line 163
    :cond_1
    sget v4, Lteam/opay/pay/message/R$layout;->message_loading_view:I

    .line 164
    .line 165
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->J()Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    if-eqz v5, :cond_4

    .line 174
    .line 175
    check-cast v5, Landroid/view/ViewGroup;

    .line 176
    .line 177
    invoke-virtual {v0, v4, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(ILandroid/view/ViewGroup;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 181
    .line 182
    if-nez v0, :cond_2

    .line 183
    .line 184
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    move-object v0, v1

    .line 188
    :cond_2
    invoke-virtual {p0, v0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->L(Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->J()Landroidx/recyclerview/widget/RecyclerView;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v3, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->a:Lteam/opay/pay/message/module/BusinessNoticeMoreListAdapter;

    .line 196
    .line 197
    if-nez v3, :cond_3

    .line 198
    .line 199
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_3
    move-object v1, v3

    .line 204
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 205
    .line 206
    .line 207
    invoke-direct {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->R()V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 212
    .line 213
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    .line 218
    .line 219
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 224
    .line 225
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    .line 230
    .line 231
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0
.end method

.method public final W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lhpc;->a:Lhpc;

    .line 9
    .line 10
    new-instance v9, Lteam/opay/pay/message/bean/MessageStatueRequest;

    .line 11
    .line 12
    new-instance v1, Lteam/opay/pay/message/utils/MessageStorage;

    .line 13
    .line 14
    invoke-direct {v1}, Lteam/opay/pay/message/utils/MessageStorage;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lteam/opay/pay/message/utils/MessageStorage;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    const-string p2, ""

    .line 24
    .line 25
    :cond_1
    move-object v6, p2

    .line 26
    const/16 v7, 0x8

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v4, 0x3

    .line 30
    const/4 v5, 0x0

    .line 31
    move-object v1, v9

    .line 32
    move-object v3, p1

    .line 33
    invoke-direct/range {v1 .. v8}, Lteam/opay/pay/message/bean/MessageStatueRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILteam/opay/pay/message/bean/MessageArriveType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0, v9}, Lhpc;->j(Landroid/content/Context;Lteam/opay/pay/message/bean/MessageStatueRequest;)Landroidx/lifecycle/LiveData;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lsy9;

    .line 41
    .line 42
    invoke-direct {p2}, Lsy9;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lteam/opay/pay/message/R$layout;->message_activity_notice_more:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string v0, "businessType"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->h:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "position"

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->i:I

    .line 35
    .line 36
    const-string v0, "businessName"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->j:Ljava/lang/String;

    .line 47
    .line 48
    :cond_0
    sget p1, Lteam/opay/pay/message/R$id;->message_title:I

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lteam/opay/pay/message/module/NoticeMoreActivity;->D(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/TextView;

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->j:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " Notices"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    sget p1, Lteam/opay/pay/message/R$id;->message_title_left:I

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lteam/opay/pay/message/module/NoticeMoreActivity;->D(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 85
    .line 86
    new-instance v0, Lmy9;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lmy9;-><init>(Lteam/opay/pay/message/module/NoticeMoreActivity;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->b(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-class v0, Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string v0, "of(this).get(BusinessNoticeViewModel::class.java)"

    .line 105
    .line 106
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    check-cast p1, Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lteam/opay/pay/message/module/NoticeMoreActivity;->P(Lteam/opay/pay/message/module/BusinessNoticeViewModel;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->G()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->Q()V

    .line 118
    .line 119
    .line 120
    sget p1, Lteam/opay/pay/message/R$color;->message_white:I

    .line 121
    .line 122
    invoke-static {p0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-static {p0, p1}, Lteam/opay/swarmfoundation/utils/StatusBarUtil;->g(Landroid/app/Activity;I)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public onLoadMoreRequested()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/message/module/NoticeMoreActivity;->K()Lteam/opay/pay/message/module/BusinessNoticeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p0}, Lteam/opay/pay/message/module/BusinessNoticeViewModel;->A(Lag8;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setErrorView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->e:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setInterfaceErrorView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->f:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setNotDataView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/message/module/NoticeMoreActivity;->d:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method
