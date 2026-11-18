.class final Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OFaceRecognizeSuccessFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.face.dialog.OFaceRecognizeSuccessFragment$onViewCreated$1$1"
    f = "OFaceRecognizeSuccessFragment.kt"
    l = {
        0x29
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $createMemberFlag:Z

.field final synthetic $noPassCode:Ljava/lang/String;

.field final synthetic $noPassMessage:Ljava/lang/String;

.field final synthetic $refreshToken:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;


# direct methods
.method public constructor <init>(Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljr2<",
            "-",
            "Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->this$0:Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$refreshToken:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$noPassCode:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$noPassMessage:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p5, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$createMemberFlag:Z

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->this$0:Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$refreshToken:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$noPassCode:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$noPassMessage:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v5, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$createMemberFlag:Z

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;-><init>(Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput v2, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->label:I

    .line 28
    .line 29
    const-wide/16 v1, 0x7d0

    .line 30
    .line 31
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :goto_0
    iget-object p1, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->this$0:Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;

    .line 39
    .line 40
    const-string v0, "oface_recognize_success_confirm_button_click"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;->M(Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v6, Lteam/opay/face/event/OFaceResultEvent;

    .line 50
    .line 51
    iget-object v2, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$refreshToken:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$noPassCode:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v4, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$noPassMessage:Ljava/lang/String;

    .line 56
    .line 57
    iget-boolean v0, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->$createMemberFlag:Z

    .line 58
    .line 59
    invoke-static {v0}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const/4 v1, 0x1

    .line 64
    move-object v0, v6

    .line 65
    invoke-direct/range {v0 .. v5}, Lteam/opay/face/event/OFaceResultEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v6}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->this$0:Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;

    .line 72
    .line 73
    invoke-virtual {p1}, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;->P()Lkotlin/jvm/functions/Function0;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object p1, p0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$onViewCreated$1$1;->this$0:Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 85
    .line 86
    .line 87
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    return-object p1
.end method
